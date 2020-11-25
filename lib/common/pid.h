#ifndef _PID_H_
#define _PID_H_

#include "common.h"
extern s16 Move_y;
extern s16 Move_Z;
extern s16 Dir_Pid(s16 midpoint,s16 error_act);
extern s16 lun_Pid(s16 midpoint_lun,s16 error_lun);
extern s16 lPID_Control( s16 actual, s16 set1);
extern s16 rPID_Control(s16 actual2, s16 set2);


extern float nbpid_kP ;//13.3f; 7.15f 
extern float nbpid_kI;//0;
extern float nbpid_kD ;//3.5f;
#endif