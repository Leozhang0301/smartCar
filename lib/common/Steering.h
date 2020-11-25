#ifndef __STEERING_CONTROL_H__
#define __STEERING_CONTROL_H__

typedef struct
{
  double KP;
  double KD;
  int error;   //���
  int lasterror;   //�ϴ����
  double SteerPwmAdd;  //������
  int CCD_error;  //CCD���
  int CCD_lasterror;   //CCD�ϴ����
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
