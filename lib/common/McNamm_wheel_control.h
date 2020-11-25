#ifndef _McNamm_h
#define _McNamm_h

#include "Variable.h"
#include "common.h"
//#include "Pid.h"
//#include "Picture_deal.h"
#include "include.h"
extern void McNamm_wheel_control(s16 Vx,s16 Vy,s16 Vz,s16 Vr);
extern void Speed_Conversion(u8 setspeedl,s16 setspeeds,s16 x,s16 y);
extern void Speed_Conversion2(void);
extern float shuliang;
extern int XValue;
extern int YValue;
extern int ZValue;
extern int RValue;
extern int carspeed;
#endif