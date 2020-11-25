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
  ftm_init_struct3.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct3.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct3.FTM_PwmFreq = 15000;	//PWM频率10000Hz
  LPLD_FTM_Init(ftm_init_struct3);
  
  
//右上正
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch0,   //使能Ch2通道 
                      0,
                      PTC1, //使用Ch1通道的PTC3引脚
                      ALIGN_LEFT);        //脉宽左对齐
//右上负
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch1,   //使能Ch3通道 
                      0,
                      PTC2, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左上负
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch2,   //使能Ch3通道 
                      0,
                      PTC3, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左上正
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch3,   //使能Ch3通道 
                      0,
                      PTC4, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐  
//右下正
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch7,   //使能Ch2通道 
                      0,
                      PTD7, //使用Ch1通道的PTC3引脚
                      ALIGN_LEFT);        //脉宽左对齐
//右下负
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch6,   //使能Ch3通道 
                      0,
                      PTD6, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左下正
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch5,   //使能Ch3通道 
                      0,
                      PTD5, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左下反
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch4,   //使能Ch3通道 
                      0,
                      PTD4, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
}



void Motor_control(void)
{   
//  if(P1 >= 0) //左上正
//  { 
//    if(P1 >= MAX_SPEED) 
//    {      
//      P1 = MAX_SPEED;
//    }   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,P1 );
//  }
//  else //左上负
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
//  if(P2 >= 0) //右上正
//  { 
//    if(P2 >= MAX_SPEED) 
//    {
//      P2 = MAX_SPEED;
//    }
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  P2);
// 
//  }
//  else //右上fan
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
//  if(P4 >= 0) //右下正
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
//    if(P3 >= 0) //左下正
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


