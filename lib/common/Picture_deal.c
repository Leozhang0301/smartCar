#include "Picture_deal.h"
#include <stdbool.h>  //bool headfile
//#include <stdlib.h>
#include "include.h"


u8 findflag;


s16 X1[COL]= {0};
s16 Y1[COL]= {0};
int total_count;

s16 Data[3][3]={0};

/*信标灯坐标滤波*/
s16 Coordinate_Filter(s16 Channal,s16 Data_In)
{

	s16 Temp=0;
	Data[Channal][0]=Data[Channal][1];
	Data[Channal][1]=Data[Channal][2];
	Data[Channal][2]=Data_In;
	Temp=PaiXu(Data[Channal][0],Data[Channal][1],Data[Channal][2]);

	return Temp;
}

/*找信标灯函数*/
void Scan_Point(void)
{	   
  u8 i = 0, j = 0;
  u8 X=0,Y=0;
  uint8 pot_1=0;
  uint8 pot_2=0;
  u16 count_x = 0;
  u8 first = 1;
  u8 flag = 0;
  u8 total_flag = 0;
  int total = 0;
  static bool delay_flag1=0;
  for(u8 z =0;z<COL;z++)  //80
  {
     X1[z]=0;
     Y1[z]=0;
   }
  for( i =0; i<ROW;i++)
  {				
     for(j =0; j <COL;j++)
     {
	    if(imgbuff[i][j] == 255)                //软件二值化，得到白点
	    {  
          count_x++;                          //白点列统计
	    }
//	    else   //黑点
//	    {
           if(count_x>=2)  //该黑点前有连续两个或两个以上的白点
           {
	          X = j-count_x/2;   //一块白色区域的中点位置
	          Y = i;
	         if(first==1)  //第一次找到两个点以上白条
	         {
		        X1[pot_1++] =X;  //记录当前点坐标
		        Y1[pot_2++] =Y;
		        first = 2;   
              }
	          else if (Error(X,X1[pot_1-1])<4&&Error(Y,Y1[pot_1-1])<=2)  // 新坐标中心值和上一个坐标的偏差很小，记录该坐标值
	          {
		         X1[pot_1++] =X;
         
		         Y1[pot_2++] =Y;
		         flag =1;
              } 
            }
            count_x = 0;
	  //  }
    }
    count_x = 0; 
     first = 1; 
  }
 // findflag = flag;
  if(flag ==1)  //找到信标灯
  {
    delay_flag1=1;
    beacon_x=X1[pot_1>>1];
    beacon_y=Y1[pot_2>>1];
  }
  else if(delay_flag1 == 1 && flag ==0)  //上一帧找到，本次没有找到
  {
    beacon_x+=COL/2;
    twinkle_delay=25;//结合Time.c里面的注释看这句话就懂了
    delay_flag1=0;
    total_flag =1;
  }
  else  //没有找到
  {
    if(twinkle_delay == 0) 
    {
      beacon_x = 0;
      beacon_y = 0;
      total_flag =0;
    }
    else   
    {
      beacon_x+=COL/2;
      total_flag =1;
     }
  }
	
  beacon_x -= COL/2;
  beacon_x=limit_s16(beacon_x,-COL/2,COL/2);
  beacon_y=limit_s16(beacon_y,0,60);
  beacon_x =Coordinate_Filter(0,beacon_x);
  beacon_y =Coordinate_Filter(1,beacon_y);
/////　测试四个轮子时用到，实际跑时屏蔽   ////
  //beacon_x = -25;
  //beacon_y = 5;

  
  if(beacon_x == -COL/2 && beacon_y == 0)
    beacon_x = 0;
  if(beacon_x ==0 && beacon_y==0)
  {
    total_count = 0;
  }
  else    //很明显，当摄像头看到的白点少时，是在远处，看到的白点多时，灯在近处，所以这句话判断白点数，以此来判断灯的远近
  {
    for(int m =0; m<ROW;m++)	
      for(int n =0; n < COL;n++)
      {
        if(imgbuff[m][n] > 100)                //软件二值化，得到白点
        {  
          if(total<2000)
           total++;                          //白点列统计
          if(total>2000)
            total=2000;
        }
      }
      if(total_flag == 0)
        total_count = total;
  }
  total_count =Coordinate_Filter(2,total_count);
  if(total_count>2000)
    total_count=2000;
  
  //total_count = 80; //测试距离对小车的影响
}



//检测信标灯的远近和有无
u8 Judge_distance(s16 x,s16 y)   //传信标灯的坐标进去
{
	//static u16 beacon_maybe_blocked =0;  //灯可能被挡住  因为车的高度就20cm，灯的高度是12cm，所以如果在一条直线上有多个灯，可能闪烁的信标灯会被其他灯挡住，导致摄像头看不到，这时候当连续原地转圈还找不到的话，就使车横移
	if((x ==0 && y==0 )|| (x>=55 || x<=-55))   //如果没有找到灯，或者找到的灯太偏离中线
	{
		//beacon_maybe_blocked ++;
//		if(beacon_maybe_blocked >=280 && beacon_maybe_blocked <= 320) //转圈2秒后，平移0.3秒
//		{
//			return FOREC_RAMPAGE;  //强制横移
//		}
//		else
//		{
//			if(beacon_maybe_blocked > 320)
//				beacon_maybe_blocked =0;
//			return roll;   //没有时原地打转
//		}
	}
	else  //有信号灯
	{
		//beacon_maybe_blocked=0;
		if(total_count<130)                          //参数需要整定//16
			return far;
         // return you;
		if(total_count<300 && total_count>=130)
		{
			  return near;
          // return you;
		}
		if(total_count>=300 && total_count<=700)	
		{
			return very_near;
          //return you;
		}
		if(total_count>700)	
		{
			return very_very_near;
           // return you;
		}
	}
	return 0;   //不加这句话有警告
}

s16 limit_s16(s16 Data,s16 Min,s16 Max)      //对16位整形限幅
{
	if(Data<Min)Data=Min;
	else if(Data>Max)Data=Max;
	return Data;
}

float limit_float(float Data,float Min,float Max)      //对浮点数限幅
{
	if(Data<Min)Data=Min;
	else if(Data>Max)Data=Max;
	return Data;
}

uint8 limit_u8(uint8 Data,uint8 Min,uint8 Max)      //对无符号8位字符型限幅
{
	if(Data<Min)Data=Min;
	else if(Data>Max)Data=Max;
	return Data;
}

s16 PaiXu(s16 Data0,s16 Data1,s16 Data2)//3 2 1
{
	s16 Temp=0;
	if(Data0>Data1)//2 3 1
	{
		Temp=Data0;
		Data0=Data1;
		Data1=Temp;
	}
	if(Data0>Data2)//1 3 2
	{
		Temp=Data0;
		Data0=Data2;
		Data2=Temp;
	}
	if(Data1>Data2)//1 2 3
	{
		Temp=Data1;
		Data1=Data2;
		Data2=Temp;
	}
	return Data1;
}


