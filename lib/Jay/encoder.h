/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef _ENCODER_H
#define _ENCODER_H

#define uniformModel    0
#define dynamicModel    1

#define Dist_On     1
#define Dist_Off    0

void Encoder_Init(void);
void speed_param_init(void);
//PID数据结构体
typedef struct {
	float p;
	float i;
	float d;
}pid_struct;
//速度数据结构体
typedef struct {
	int16 val;
	int16 target;
}speed_struct;

extern speed_struct speed_left;
extern speed_struct speed_right;
extern pid_struct motor_left;
extern pid_struct motor_right;

extern int16 speed_target;

extern float dynamicSpeed_rate;
extern uint8 isGetDistCh1;
extern uint8 isGetDistCh2;
extern int32 distCh1;
extern int32 distCh2;


extern int16 get_qd1_val(void);
extern int16 get_qd2_val(void);
extern int16 get_left_speed();
extern int16 get_right_speed();
void speed_update(void);
void distAddUpCh1(void);
void distAddUpCh2(void);
#endif