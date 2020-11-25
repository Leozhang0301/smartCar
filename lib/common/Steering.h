#ifndef __STEERING_CONTROL_H__
#define __STEERING_CONTROL_H__

typedef struct
{
  double KP;
  double KD;
  int error;   //误差
  int lasterror;   //上次误差
  double SteerPwmAdd;  //增加量
  int CCD_error;  //CCD误差
  int CCD_lasterror;   //CCD上次误差
}Steering;

void ccddelay();
void steering_control();
void steering_init(void);
void Search_Line(void);
void Search_Line_Flag_Init(void);
void CCD_control(void);
extern int mid;
extern int midpwm;
extern float SP;
extern float SD;
extern int Steering_PWM ;
#endif 
