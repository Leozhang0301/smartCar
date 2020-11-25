#ifndef __VARIABLE_H
#define __VARIABLE_H

#include "common.h"
//#include "SEEKFREE_MT9V032.h"
/****电机控制PID*****/
typedef struct
{
	s16 err;
	s16 last_err;
	s16 last_last_err;
	s16 kp,ki,kd;
	s16 result;
}_pid_t;

extern s16 Right_front_speed;/*右前轮速度*/
extern s16 Left_front_speed;/*左前轮速度*/



extern s16 Right_rear_speed;/*右后轮速度*/
extern s16 Left_rear_speed;/*左后轮速度*/

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



extern float KP ;  //方向环的PD
extern s16 KD ;

extern _pid_t pid_left_front;     /*结构体 左前轮PID参数*/
extern _pid_t pid_right_front;		/*结构体 右前轮PID参数*/
extern _pid_t pid_left_rear;			/*结构体 左后轮PID参数*/
extern _pid_t pid_right_rear;			/*结构体 右后轮PID参数*/
extern s16 twinkle_delay;/*闪烁延时参数*/
extern u8 basic_speed ;
extern u8 Rotate_speed;

extern s32 Left_front_goalspeed ;/*左前轮目标速度*/
extern s32 Right_front_goalspeed ;/*右前轮目标速度*/
extern s32 Left_rear_goalspeed;/*左前轮目标速度*/
extern s32 Right_rear_goalspeed;/*右前轮目标速度*/

extern s16 beacon_x;  //实际信标灯坐标
extern s16 beacon_y;
extern s16 excursion_x;  //信标灯坐标偏移
extern s16 excursion_y;
extern u8 coordinate_X ; //等价信标灯坐标
extern u8 coordinate_Y ;

extern 	u8 state_flag; //信标灯远近标志位
extern u8 Barrier_flag ; //障碍物标志位
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
extern s16 excursion_x;  //信标灯坐标偏移
extern s16 excursion_y;
extern u8 No_Barrier_flag ;
extern u8 COL_2;  //98
extern u8 excursion_flag;

extern u8 delay_flag;


#endif