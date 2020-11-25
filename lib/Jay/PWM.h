/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
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
void SteeringGear_Init(void);//舵机
void Motor_Init(void);//电机
void speed_out(void);
#endif