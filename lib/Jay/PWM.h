/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#ifndef __PWM_H__
#define __PWM_H__

#define plateNumber  1
   
   
extern uint8 CarModel;
extern int16 angleMid;
extern int16 angleMax;
extern int16 angleMin;  
extern int16 angle;

extern float steer_p;
extern float steer_d;



void angle_update(void);
void SteeringGear_Init(void);//���
void Motor_Init(void);//���
void speed_out(void);
#endif