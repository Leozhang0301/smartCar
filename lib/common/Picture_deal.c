#include "Picture_deal.h"
#include <stdbool.h>  //bool headfile
//#include <stdlib.h>
#include "include.h"


u8 findflag;


s16 X1[COL]= {0};
s16 Y1[COL]= {0};
int total_count;

s16 Data[3][3]={0};

/*�ű�������˲�*/
s16 Coordinate_Filter(s16 Channal,s16 Data_In)
{

	s16 Temp=0;
	Data[Channal][0]=Data[Channal][1];
	Data[Channal][1]=Data[Channal][2];
	Data[Channal][2]=Data_In;
	Temp=PaiXu(Data[Channal][0],Data[Channal][1],Data[Channal][2]);

	return Temp;
}

/*���ű�ƺ���*/
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
	    if(imgbuff[i][j] == 255)                //�����ֵ�����õ��׵�
	    {  
          count_x++;                          //�׵���ͳ��
	    }
//	    else   //�ڵ�
//	    {
           if(count_x>=2)  //�úڵ�ǰ�������������������ϵİ׵�
           {
	          X = j-count_x/2;   //һ���ɫ������е�λ��
	          Y = i;
	         if(first==1)  //��һ���ҵ����������ϰ���
	         {
		        X1[pot_1++] =X;  //��¼��ǰ������
		        Y1[pot_2++] =Y;
		        first = 2;   
              }
	          else if (Error(X,X1[pot_1-1])<4&&Error(Y,Y1[pot_1-1])<=2)  // ����������ֵ����һ�������ƫ���С����¼������ֵ
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
  if(flag ==1)  //�ҵ��ű��
  {
    delay_flag1=1;
    beacon_x=X1[pot_1>>1];
    beacon_y=Y1[pot_2>>1];
  }
  else if(delay_flag1 == 1 && flag ==0)  //��һ֡�ҵ�������û���ҵ�
  {
    beacon_x+=COL/2;
    twinkle_delay=25;//���Time.c�����ע�Ϳ���仰�Ͷ���
    delay_flag1=0;
    total_flag =1;
  }
  else  //û���ҵ�
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
/////�������ĸ�����ʱ�õ���ʵ����ʱ����   ////
  //beacon_x = -25;
  //beacon_y = 5;

  
  if(beacon_x == -COL/2 && beacon_y == 0)
    beacon_x = 0;
  if(beacon_x ==0 && beacon_y==0)
  {
    total_count = 0;
  }
  else    //�����ԣ�������ͷ�����İ׵���ʱ������Զ���������İ׵��ʱ�����ڽ�����������仰�жϰ׵������Դ����жϵƵ�Զ��
  {
    for(int m =0; m<ROW;m++)	
      for(int n =0; n < COL;n++)
      {
        if(imgbuff[m][n] > 100)                //�����ֵ�����õ��׵�
        {  
          if(total<2000)
           total++;                          //�׵���ͳ��
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
  
  //total_count = 80; //���Ծ����С����Ӱ��
}



//����ű�Ƶ�Զ��������
u8 Judge_distance(s16 x,s16 y)   //���ű�Ƶ������ȥ
{
	//static u16 beacon_maybe_blocked =0;  //�ƿ��ܱ���ס  ��Ϊ���ĸ߶Ⱦ�20cm���Ƶĸ߶���12cm�����������һ��ֱ�����ж���ƣ�������˸���ű�ƻᱻ�����Ƶ�ס����������ͷ����������ʱ������ԭ��תȦ���Ҳ����Ļ�����ʹ������
	if((x ==0 && y==0 )|| (x>=55 || x<=-55))   //���û���ҵ��ƣ������ҵ��ĵ�̫ƫ������
	{
		//beacon_maybe_blocked ++;
//		if(beacon_maybe_blocked >=280 && beacon_maybe_blocked <= 320) //תȦ2���ƽ��0.3��
//		{
//			return FOREC_RAMPAGE;  //ǿ�ƺ���
//		}
//		else
//		{
//			if(beacon_maybe_blocked > 320)
//				beacon_maybe_blocked =0;
//			return roll;   //û��ʱԭ�ش�ת
//		}
	}
	else  //���źŵ�
	{
		//beacon_maybe_blocked=0;
		if(total_count<130)                          //������Ҫ����//16
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
	return 0;   //������仰�о���
}

s16 limit_s16(s16 Data,s16 Min,s16 Max)      //��16λ�����޷�
{
	if(Data<Min)Data=Min;
	else if(Data>Max)Data=Max;
	return Data;
}

float limit_float(float Data,float Min,float Max)      //�Ը������޷�
{
	if(Data<Min)Data=Min;
	else if(Data>Max)Data=Max;
	return Data;
}

uint8 limit_u8(uint8 Data,uint8 Min,uint8 Max)      //���޷���8λ�ַ����޷�
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


