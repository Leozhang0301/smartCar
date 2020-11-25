#include "include.h"
/*后来加的变量*/

int mid = 39;
int ccd_mid =63;
int midpwm = 1134;
int Steering_PWM = 0;


float SP = 2.8f;
float SD = 2.1f;
//舵机结构体
FTM_InitTypeDef steering_init_struct;
Steering PID_S;
/*
name:   steering_init()
舵机初始化
*/
void steering_init()
{
  PID_S.KP = SP;
  PID_S.KD = SD;
  PID_S.error = 0;   //误差
  PID_S.lasterror = 0;   //上次误差
  PID_S.SteerPwmAdd = 0.0f;
  PID_S.CCD_error  = 0;  //CCD误差
  
  steering_init_struct.FTM_Ftmx = FTM2;	
  steering_init_struct.FTM_Mode = FTM_MODE_PWM;	
  steering_init_struct.FTM_PwmFreq = 75;
  
  LPLD_FTM_Init(steering_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM2, 
                      FTM_Ch0, 
                      midpwm,  //  中：1134   左：999 右：1269
                      PTB18, 
                      ALIGN_LEFT       
                        );  
}

void steering_control(void)
{   
  PID_S.CCD_error  = 0;  //CCD误差清零
  
  PID_S.error =  mid - Calculate()  ;  
  PID_S.SteerPwmAdd=(PID_S.KP*PID_S.error)+PID_S.KD*(PID_S.error-PID_S.lasterror);  //舵机的pd控制器
  if(PID_S.SteerPwmAdd > 135 )
  {
    PID_S.SteerPwmAdd = 135;
  }
  else if(PID_S.SteerPwmAdd < -135 )
  {
    PID_S.SteerPwmAdd = -135;
  }
  Steering_PWM = (int)(midpwm + PID_S.SteerPwmAdd);
  
  LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch0, Steering_PWM);
  
  PID_S.lasterror = PID_S.error;
}


/*void CCD_control(void)
{   
  PID_S.error = 0;   //舵机误差清零
  PID_S.lasterror = 0;   //舵机上次误差
  
  PID_S.CCD_error =  ccd_mid - weizhi(&ccd1);      ///weizhi = 63的时候  要达到最大角度
  if(PID_S.CCD_error >= 0)
  {
    PID_S.CCD_error = 63 - PID_S.CCD_error;
  }
  if(PID_S.CCD_error < 0)
    
  {
    PID_S.CCD_error = -63 + PID_S.CCD_error;
  }
  
  
  PID_S.SteerPwmAdd=(2.5*PID_S.CCD_error);  //舵机的P控制器
  if(PID_S.CCD_error >= 0){
    if(PID_S.SteerPwmAdd > 135 )
    {
      PID_S.SteerPwmAdd = 135;
    }
    else if(PID_S.SteerPwmAdd < 0 )
    {
      PID_S.SteerPwmAdd = 0;
    }
  }
  else if(PID_S.CCD_error < 0){
    if(PID_S.SteerPwmAdd <= -135 )
    {
      PID_S.SteerPwmAdd = -135;
    }
    else if(PID_S.SteerPwmAdd > 0 )
    {
      PID_S.SteerPwmAdd = 0;
    }
  }
  
  Steering_PWM = (int)(midpwm - PID_S.SteerPwmAdd);
  LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch0, Steering_PWM);    //midpwm+中间是最大偏角     
  
  CCD_CTL_OPEN = 0;
}*/


