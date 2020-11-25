#ifndef __VARIABLE_H
#define __VARIABLE_H

#include "common.h"
//#include "SEEKFREE_MT9V032.h"
/****�������PID*****/
typedef struct
{
	s16 err;
	s16 last_err;
	s16 last_last_err;
	s16 kp,ki,kd;
	s16 result;
}_pid_t;

extern s16 Right_front_speed;/*��ǰ���ٶ�*/
extern s16 Left_front_speed;/*��ǰ���ٶ�*/



extern s16 Right_rear_speed;/*�Һ����ٶ�*/
extern s16 Left_rear_speed;/*������ٶ�*/

//extern uint8 imgbuff[IMG_ROWS][IMG_COLS];
//extern u8 image[ROW][COL];
extern u8 threshold;
extern    uint16  ImgThreshold;


extern u8 threshold;
extern s16 slave_beacon_x;
extern s16 slave_beacon_y;
extern s16 slave_count ;
extern u8 beacon_threshold;
extern u8 No_Barrier_flag ;
extern u8 excursion_flag ;
extern u8 Stop_car_flag;
extern u8 findflag;



extern float KP ;  //���򻷵�PD
extern s16 KD ;

extern _pid_t pid_left_front;     /*�ṹ�� ��ǰ��PID����*/
extern _pid_t pid_right_front;		/*�ṹ�� ��ǰ��PID����*/
extern _pid_t pid_left_rear;			/*�ṹ�� �����PID����*/
extern _pid_t pid_right_rear;			/*�ṹ�� �Һ���PID����*/
extern s16 twinkle_delay;/*��˸��ʱ����*/
extern u8 basic_speed ;
extern u8 Rotate_speed;

extern s32 Left_front_goalspeed ;/*��ǰ��Ŀ���ٶ�*/
extern s32 Right_front_goalspeed ;/*��ǰ��Ŀ���ٶ�*/
extern s32 Left_rear_goalspeed;/*��ǰ��Ŀ���ٶ�*/
extern s32 Right_rear_goalspeed;/*��ǰ��Ŀ���ٶ�*/

extern s16 beacon_x;  //ʵ���ű������
extern s16 beacon_y;
extern s16 excursion_x;  //�ű������ƫ��
extern s16 excursion_y;
extern u8 coordinate_X ; //�ȼ��ű������
extern u8 coordinate_Y ;

extern 	u8 state_flag; //�ű��Զ����־λ
extern u8 Barrier_flag ; //�ϰ����־λ
extern u8 force_left ;
extern u8 force_right;
extern s16 beacon_x;
extern s16 beacon_y;
extern u8 avoid_x;
extern u8 avoid_y;
extern u8 basic_speed;
extern u8 set_speed_l;
extern s16 set_speed_s;
extern u8 Rotate_speed;
extern s16 excursion_x;  //�ű������ƫ��
extern s16 excursion_y;
extern u8 No_Barrier_flag ;
extern u8 COL_2;  //98
extern u8 excursion_flag;

extern u8 delay_flag;


#endif