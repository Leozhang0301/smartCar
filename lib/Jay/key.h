/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#ifndef __KEY_H__
#define __KEY_H__

extern uint8 KeyValue;
extern GPIO_InitTypeDef KeyBoard_init_struct;
void KeyBoard_Init(void);
void KeyScan(void);

#endif