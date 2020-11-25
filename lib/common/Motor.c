#include "include.h"

#define MAX_SPEED 5000
#define MAX_SPEED_L -5000

//Motor PID;
FTM_InitTypeDef ftm_init_struct3;




int SpeedHigh = 60;
int SpeedLow = 35;
int16 EDS_MAX = 10;

void init_Motor()
{
  ftm_init_struct3.FTM_Ftmx = FTM0;	//ʹ��FTM0ͨ��
  ftm_init_struct3.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
  ftm_init_struct3.FTM_PwmFreq = 15000;	//PWMƵ��10000Hz
  LPLD_FTM_Init(ftm_init_struct3);
  
  
//������
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch0,   //ʹ��Ch2ͨ�� 
                      0,
                      PTC1, //ʹ��Ch1ͨ����PTC3����
                      ALIGN_LEFT);        //���������
//���ϸ�
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch1,   //ʹ��Ch3ͨ�� 
                      0,
                      PTC2, //ʹ��Ch1ͨ����PTC4����
                      ALIGN_LEFT);        //���������
//���ϸ�
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch2,   //ʹ��Ch3ͨ�� 
                      0,
                      PTC3, //ʹ��Ch1ͨ����PTC4����
                      ALIGN_LEFT);        //���������
//������
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch3,   //ʹ��Ch3ͨ�� 
                      0,
                      PTC4, //ʹ��Ch1ͨ����PTC4����
                      ALIGN_LEFT);        //���������  
//������
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch7,   //ʹ��Ch2ͨ�� 
                      0,
                      PTD7, //ʹ��Ch1ͨ����PTC3����
                      ALIGN_LEFT);        //���������
//���¸�
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch6,   //ʹ��Ch3ͨ�� 
                      0,
                      PTD6, //ʹ��Ch1ͨ����PTC4����
                      ALIGN_LEFT);        //���������
//������
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch5,   //ʹ��Ch3ͨ�� 
                      0,
                      PTD5, //ʹ��Ch1ͨ����PTC4����
                      ALIGN_LEFT);        //���������
//���·�
  LPLD_FTM_PWM_Enable(FTM0,//ʹ��FTM0
                      FTM_Ch4,   //ʹ��Ch3ͨ�� 
                      0,
                      PTD4, //ʹ��Ch1ͨ����PTC4����
                      ALIGN_LEFT);        //���������
}



void Motor_control(void)
{   
//  if(P1 >= 0) //������
//  { 
//    if(P1 >= MAX_SPEED) 
//    {      
//      P1 = MAX_SPEED;
//    }   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,P1 );
//  }
//  else //���ϸ�
//  { 
//    if(P1 <= MAX_SPEED_L) 
//    {      
//      P1 = MAX_SPEED_L;
//    }   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, -P1);
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0); 
//  }
//  
//  
//  if(P2 >= 0) //������
//  { 
//    if(P2 >= MAX_SPEED) 
//    {
//      P2 = MAX_SPEED;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  P2);
// 
//  }
//  else //����fan
//  { 
//    if(P2 <= MAX_SPEED_L) 
//    {
//      P2 = MAX_SPEED_L;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, -P2 );   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
// 
//  }
//
//  
//  if(P4 >= 0) //������
//  { 
//    if(P4 >= MAX_SPEED) 
//    {
//      P4 = MAX_SPEED;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, P4);  
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
// 
//  }
//  else
//  { 
//    if(P4 <= MAX_SPEED_L) 
//    {
//      P4 = MAX_SPEED_L;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6,  0);  
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, -P4 );
// 
//  }
//
//  
//    if(P3 >= 0) //������
//  { 
//    if(P3 >= MAX_SPEED) 
//    {
//     P3 = MAX_SPEED;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4,P3 );
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, 0);
// 
//  }
//  else
//  { 
//    if(P3 <= MAX_SPEED_L) 
//    {
//      P3 = MAX_SPEED_L;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4,0);
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,  -P3);
// 
//  }
  if(back==1)
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,3000 );//zuo
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
    
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0);  
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 3000);
   
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 3000); 
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  0);
    
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,3000); 
  }
  else
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,0 );//zuo
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, P1);
    
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, P2);  
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
   
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0); 
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  P3);
    
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,P4 );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0 ); 
  }
}


