#include "include.h"

void delay_cheak();

int WHITE_SUM = 0;//
int BLACK_PICTURE = 0;
int WHITE_SUM_LAST = 500;
int MIDDLE_I = 0;
int MIDDLE_J  = 0;
int MIDDLE_I_LAST = 0;
int MIDDLE_J_LAST  = 0;

int16 BLACK_PICTURE_COUNT = 12; //��ɫͼƬ�������ֵ
int16 i_max = 14; //�ж���ǰ����
int16 i_min = 18; //�ж���ǰ����
int16 offset = 5; //Ŀ��ƫ����
float offset_k = 2.5f;  //ϵ��
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



int target_offset(int y)  //Ŀ��ƫ��
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
        WHITE_SUM ++; //�׵���ͳ��
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
    if(i_num == 0)                 //��ĸ����Ϊ0
      
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


void ifpass(void)            //  �Ƿ�ͨ��
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

void find_next(void)          // Ѱ����һ���ű�
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
          GO = SpeedHigh;  //�ҵ��Ƽ���    
        }
      }
    }
  } 
}



//int Calculate()
//{ 
//  int16 target = 0;
//  if(lamp_pass == 0)   // �ҵ�
//  {
//    if(BLACK_PICTURE < BLACK_PICTURE_COUNT)//С��count���жϹ���
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
//      GO = SpeedLow;   //�������
//    }   
//  }
//  
//  if(lamp_pass == 1)   //�жϹ���
//  {
//    if(start == 0)   //δ������ʼ��
//    {
//      MIDDLE_J = 39;
//    }
//    if(BLACK_PICTURE < BLACK_PICTURE_COUNT)//С��count���жϹ���
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
//    if (MIDDLE_I > i_min)     // �ٶ�С�ƽ�����
//    {
//      lamp_pass = 1;
//      
//      MIDDLE_J = 0;
//      
//      GO = SpeedLow; //�������
//    }
//  }
//  else
//  {
//    if (MIDDLE_I > i_max)     // �ٶȴ�ƽ�����
//    {
//      lamp_pass = 1;
//      
//      MIDDLE_J = 0;
//      GO = SpeedLow; //�������
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

