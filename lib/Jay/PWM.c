/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"

uint8 CarModel = 0;
//FTM_InitTypeDef steering_init_struct;
int16 angleMid;
int16 angleMax;
int16 angleMin;  
int16 angle;
int16 img_error = 0;

float steer_p = 2.01f;
float steer_d = 3.81f;

/*void SteeringGear_Init(void)//舵机
{
#if plateNumber == 0
  steer_p = 2.15f;
  steer_d = 4.21f;
  angleMid = 902;
  angleMax = 902 + 120;
  angleMin = 902 - 120;
#elif plateNumber == 1
  steer_p = 2.15f;
  steer_d = 3.51f;
  angleMid = 1317;
  angleMax = 1317 + 120;
  angleMin = 1317 - 120;
#else
  steer_p = 2.01f;
  steer_d = 3.51f;
  angleMid = 1010;
  angleMax = 1010 + 120;
  angleMin = 1010 - 120;
#endif
  angle = angleMid;
  //steering_init_struct.FTM_Ftmx = FTM2;	
  steering_init_struct.FTM_Mode = FTM_MODE_PWM;	
  steering_init_struct.FTM_PwmFreq = 75;
  
  LPLD_FTM_Init(steering_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM2, 
                      FTM_Ch0, 
                      angleMid,  
                      PTB18, 
                      ALIGN_LEFT);
}*/


FTM_InitTypeDef ftm_pwm_init_struct;
void Motor_Init(void)//电机
{
  ftm_pwm_init_struct.FTM_Ftmx = FTM0;
  ftm_pwm_init_struct.FTM_Mode = FTM_MODE_PWM;
  ftm_pwm_init_struct.FTM_PwmFreq = 10000;
  LPLD_FTM_Init(ftm_pwm_init_struct);

//右上正
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch0,   //使能Ch2通道 
                      0,
                      PTC1, //使用Ch1通道的PTC3引脚
                      ALIGN_LEFT);        //脉宽左对齐
//右上反
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch1,   //使能Ch3通道 
                      0,
                      PTC2, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左上反
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
                      FTM_Ch4,   //使能Ch2通道 
                      0,
                      PTD7, //使用Ch1通道的PTC3引脚
                      ALIGN_LEFT);        //脉宽左对齐
//右下反
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch5,   //使能Ch3通道 
                      0,
                      PTD6, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左下反
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch6,   //使能Ch3通道 
                      0,
                      PTD5, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
//左下正
  LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
                      FTM_Ch7,   //使能Ch3通道 
                      0,
                      PTD4, //使用Ch1通道的PTC4引脚
                      ALIGN_LEFT);        //脉宽左对齐
  
}

//舵机控制 
void angle_update(void)
{
  static int16 preerror = 0;
  
  img_error = get_img_error();
  
  angle = (int16)((img_error * steer_p) + (steer_d * (img_error - preerror)) + angleMid);
  
  if(angle >= angleMax) angle = angleMax;
  if(angle <= angleMin) angle = angleMin;
  
  LPLD_FTM_PWM_ChangeDuty(FTM2,FTM_Ch0,angle);
  
  preerror = img_error;//保留上一次误差值
}

void speed_out(void)
{
  int16 outVal_Ch0 = 0,outVal_Ch3 = 0;
  speed_update();
  outVal_Ch3 = get_left_speed();
  outVal_Ch0 = get_right_speed();
  
  if(Run_Init == isStop)
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch0,0);
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,0);
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch3,0);
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch2,0);
  }
  else
  {
    if(outVal_Ch0 >= 0)
    { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch0,(uint32)outVal_Ch0); }
    else
    { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,(uint32)(-outVal_Ch0)); }
    if(outVal_Ch3 >= 0)
    { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch3,(uint32)outVal_Ch3); }
    else
    { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch2,(uint32)(-outVal_Ch3)); }
  }
}
