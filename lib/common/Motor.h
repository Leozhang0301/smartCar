#ifndef _Motor_H_
#define _Motor_H_

#include "common.h"
#include "Variable.h"

typedef struct
{
  double S_left_P;
  double S_left_I;
  double S_right_P;
  double S_right_I;
  int S_value_left;   //实际值
  int S_value_right;
  int S_error_left;   //误差
  int S_error_right;
  int S_preerror_left;   //上次误差
  int S_preerror_right;
  int S_targetSpeed_L;     //目标值
  int S_targetSpeed_R;
  int S_Speed_output_Left;
  int S_Speed_output_Right;
  double X_left_P;
  double X_left_I;
  double X_right_P;
  double X_right_I;
  int X_value_left;   //实际值
  int X_value_right;
  int X_error_left;   //误差
  int X_error_right;
  int X_preerror_left;   //上次误差
  int X_preerror_right;
  int X_targetSpeed_L;     //目标值
  int X_targetSpeed_R;
  int X_Speed_output_Left;
  int X_Speed_output_Right;
}Motor;
//extern s16 P;


void init_Motor();
//extern void init_PID();
extern void Motor_control(void);


extern  double left_P;
extern  double left_I;
extern  double right_P;
extern  double right_I;
//extern Motor PID;

extern int SpeedHigh ;
extern int SpeedLow ;
extern int16 EDS_MAX;
#endif