#include "include.h"

void delay_cheak();

int WHITE_SUM = 0;//
int BLACK_PICTURE = 0;
int WHITE_SUM_LAST = 500;
int MIDDLE_I = 0;
int MIDDLE_J  = 0;
int MIDDLE_I_LAST = 0;
int MIDDLE_J_LAST  = 0;

int16 BLACK_PICTURE_COUNT = 12; //黑色图片计数最大值
int16 i_max = 14; //判断提前拐弯
int16 i_min = 18; //判断提前拐弯
int16 offset = 5; //目标偏移量
float offset_k = 2.5f;  //系数
boolean lamp_pass = 1;
boolean start = 0;
boolean cheak_start = 0;
boolean back = 0;
int i_sum = 0;
int j_sum = 0;
int i_num = 0;
int j_num = 0;

int GO = 0;


const int16 target_error[] = 
{
  0,0,0,0,0,
  1,1,1,1,1,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
  2,2,2,2,2,
};



int target_offset(int y)  //目标偏移
{
  
  int x = 0;
  x = (int)(y/offset_k);
  if(x > offset) x = offset;
  return x;
}

void findtrack()
{
  for (int i = 1; i < IMG_ROWS - 1; i ++)
  {
    for (int j = 1; j < IMG_COLS  - 1; j ++)
    {
      if( imgbuff[i][j] == WHITE )
      {
        WHITE_SUM ++; //白点列统计
      }
      if(imgbuff[i][j] == BLACK && imgbuff[i][j+1] == WHITE )
      {
        i_sum += i;
        j_sum += j;
        i_num ++;
        j_num ++;
      }
      else if(imgbuff[i][j] == BLACK && imgbuff[i][j-1] == WHITE )
      {
        i_sum += i;
        j_sum += j;
        i_num ++;
        j_num ++;
      }
      else if(imgbuff[i][j] == BLACK && imgbuff[i+1][j] == WHITE )
      {
        i_sum += i;
        j_sum += j;
        i_num ++;
        j_num ++;
      }
      else if(imgbuff[i][j] == BLACK && imgbuff[i-1][j] == WHITE )
      {
        i_sum += i;
        j_sum += j;
        i_num ++;
        j_num ++;
      }
    }
  }
  
  if(WHITE_SUM != 0)
  {
    if(i_num == 0)                 //分母不能为0
      
    {
      MIDDLE_I = (int)i_sum;
    }
    else
    {
      MIDDLE_I = (int)(i_sum/i_num); 
    }
    if(j_num == 0 )
    {
      MIDDLE_J =  j_sum;
    }
    else 
    {
      MIDDLE_J = (j_sum/j_num);
    }
    
    /*if(MIDDLE_I - MIDDLE_I_LAST > target_error[MIDDLE_I_LAST] || MIDDLE_I - MIDDLE_I_LAST <= -target_error[MIDDLE_I_LAST] 
       || MIDDLE_J - MIDDLE_J_LAST > target_error[MIDDLE_I_LAST] || MIDDLE_J - MIDDLE_J_LAST <= -target_error[MIDDLE_I_LAST])
    { 
      MIDDLE_I_LAST = MIDDLE_I;
      MIDDLE_J_LAST = MIDDLE_J;
    }
    else
    {
      MIDDLE_I = MIDDLE_I_LAST;
      MIDDLE_J = MIDDLE_J_LAST;
    }*/
  } 
  i_sum = 0;
  i_num = 0;   
  j_sum = 0;
  j_num = 0;
}


void ifpass(void)            //  是否通过
{
  for(int i = 0; i < IMG_ROWS; i ++)
  {
    for (int j = 0; j < IMG_COLS; j ++)
    {
      if(imgbuff[i][j] == WHITE)
      {
        BLACK_PICTURE = 0;
        return;
      }
    }
  }
  BLACK_PICTURE ++;
}

void find_next(void)          // 寻找下一个信标
{
  for(int i = 0; i < IMG_ROWS; i ++)
  {
    for (int j = 0; j < IMG_COLS; j ++)
    {
      if(imgbuff[i][j] == WHITE)
      {
        WHITE_SUM++;
        if(WHITE_SUM > 0)
        {
          lamp_pass = 0;
          start = 1;
          BLACK_PICTURE = 0;
          MIDDLE_I = 0;
          MIDDLE_J  = 0;
          MIDDLE_I_LAST = 0;
          MIDDLE_J_LAST  = 0;         
          GO = SpeedHigh;  //找到灯加速    
        }
      }
    }
  } 
}



//int Calculate()
//{ 
//  int16 target = 0;
//  if(lamp_pass == 0)   // 找灯
//  {
//    if(BLACK_PICTURE < BLACK_PICTURE_COUNT)//小于count不判断过灯
//    {
//      ifpass();
//      findtrack();
//    }
//    else
//    {
//      lamp_pass = 1;
//      
//      MIDDLE_J = 0;
//      
//      GO = SpeedLow;   //过弯减速
//    }   
//  }
//  
//  if(lamp_pass == 1)   //判断过灯
//  {
//    if(start == 0)   //未启动初始化
//    {
//      MIDDLE_J = 39;
//    }
//    if(BLACK_PICTURE < BLACK_PICTURE_COUNT)//小于count不判断过灯
//    {
//      ifpass();
//    }
//    else  
//    {
//      find_next(); 
//    }
//  }
//  if(right_getSpeed() < 40 || left_getSpeed() < 40)
//  {
//    if (MIDDLE_I > i_min)     // 速度小灯近拐弯
//    {
//      lamp_pass = 1;
//      
//      MIDDLE_J = 0;
//      
//      GO = SpeedLow; //过弯减速
//    }
//  }
//  else
//  {
//    if (MIDDLE_I > i_max)     // 速度大灯近拐弯
//    {
//      lamp_pass = 1;
//      
//      MIDDLE_J = 0;
//      GO = SpeedLow; //过弯减速
//    }
//  }
//  
//  if(MIDDLE_J >= 0)
//  {
//    target = MIDDLE_J - target_offset(MIDDLE_I);
//    if(target < 0) target = 0;   
//  }
//  return target;
//}

