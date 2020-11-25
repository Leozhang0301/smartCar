#ifndef _Picture_deal_h
#define _Picture_deal_h

#include "Variable.h"
#include "common.h"
#include "Function.h"
//#include "SEEKFREE_MT9V032.h"
//#include "stdint.h"
//#include "OLED.h"
#include "include.h"


extern int16 Coordinate_Filter(int16 Channal,int16 Data_In);
extern void MyScan_Point(void);
extern void Scan_Point(void);
extern u8 Judge_distance(int16 x,int16 y);
extern u8 Judge_Rotating_Direction(void);

extern int16 limit_s16(int16 Data,int16 Min,int16 Max) ;
extern float limit_float(float Data,float Min,float Max);
extern uint8 limit_u8(uint8 Data,uint8 Min,uint8 Max);
extern int16 PaiXu(int16 Data0,int16 Data1,int16 Data2);
extern uint16 Distance_Filter(uint16 distance);

#define you 1
#define far 1 
#define near 2
#define very_near 3
#define very_very_near 6
#define roll 4  //未找到灯
#define FOREC_RAMPAGE 5  //强制横行



#define Left_Rotate 1
#define Right_Rotate 0
#define normal_staright 3

#define Error(a,b)   (a > b) ? (a - b) : (b - a)
#define Isimage_Black(i,j)  (image[i][j]>threshold)? 1:0

#endif

