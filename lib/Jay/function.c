/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#include "common.h"
#include "include.h"


NVIC_InitTypeDef nvic_init_struct;

//ȡ�������� ���ֵ
int16 Max(int16 a, int16 b)
{
	return a > b ? a : b;
}
//ȡ�������� ��Сֵ
int16 Min(int16 a, int16 b)
{
	return a < b ? a : b;
}
//����ֵ ���ͱ���
int16 my_abs(int16 index)
{
	return index > 0 ? index : -index;
}
//����ֵ �����ͱ���
float my_fabs(float index)
{
	return index > 0 ? index : -index;
}
//ֱ���޸�����ֵ�����ڸ���ͬһ��ֵ
void AlterParam_Clear(int16 begin,int16 end,int16 *pArray,int16 val)
{
	for( ;begin >= end; begin--)
	{
		*(pArray + begin) = val;
	}
}
//�жϲ����Ƿ���һ��������
uint8 JudgeNumInterval(int16 Num,int16 Max,int16 Min)
{
	if (Num <= Max && Num >= Min)
	{
		return 1;
	}
	return 0;
}
//������
void Buzzer(void)
{
  
}
