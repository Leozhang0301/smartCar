/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef _FUNCTION_H
#define _FUNCTION_H

extern NVIC_InitTypeDef nvic_init_struct;
extern int16 Max(int16 a, int16 b);
extern int16 Min(int16 a, int16 b);
extern int16 my_abs(int16 index);//整型绝对值
extern float my_fabs(float index);
extern uint8 JudgeNumInterval(int16 Num,int16 Max,int16 Min);
void AlterParam_Clear(int16 begin,int16 end,int16 *pArray,int16 val);
void Buzzer(void);

#endif