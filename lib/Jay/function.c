/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include "common.h"
#include "include.h"


NVIC_InitTypeDef nvic_init_struct;

//取得两个数 最大值
int16 Max(int16 a, int16 b)
{
	return a > b ? a : b;
}
//取得两个数 最小值
int16 Min(int16 a, int16 b)
{
	return a < b ? a : b;
}
//绝对值 整型变量
int16 my_abs(int16 index)
{
	return index > 0 ? index : -index;
}
//绝对值 浮点型变量
float my_fabs(float index)
{
	return index > 0 ? index : -index;
}
//直接修改数组值，用于赋予同一个值
void AlterParam_Clear(int16 begin,int16 end,int16 *pArray,int16 val)
{
	for( ;begin >= end; begin--)
	{
		*(pArray + begin) = val;
	}
}
//判断参数是否在一个区间内
uint8 JudgeNumInterval(int16 Num,int16 Max,int16 Min)
{
	if (Num <= Max && Num >= Min)
	{
		return 1;
	}
	return 0;
}
//蜂鸣器
void Buzzer(void)
{
  
}
