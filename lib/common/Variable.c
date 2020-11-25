#include "Variable.h"
//#include "SEEKFREE_MT9V032.h"
//右轮是从机发送的，左轮是主机自己读取的
s16 Right_front_speed;/*右前轮速度*/
s16 Left_front_speed;/*左前轮速度*/
s16 Right_rear_speed;/*右后轮速度*/
s16 Left_rear_speed;/*左后轮速度*/
s32 Left_front_goalspeed;/*左前轮目标速度*/
s32 Right_front_goalspeed;/*右前轮目标速度*/
s32 Left_rear_goalspeed;/*左前轮目标速度*/
s32 Right_rear_goalspeed;/*右前轮目标速度*/

u8 set_speed_l =0;  //行走速度
s16 set_speed_s =0;  // 转圈速度

float KP = 2.5f;//18;  //方向环的PD
s16 KD = 0;//40;
s16 KP_show = 180 ;  //方向环的PD，用来oled参数显示的
s16 KD_show = 400 ;
_pid_t pid_left_front;     /*结构体 左前轮PID参数*/
_pid_t pid_right_front;		/*结构体 右前轮PID参数*/
_pid_t pid_left_rear;			/*结构体 左后轮PID参数*/
_pid_t pid_right_rear;			/*结构体 右后轮PID参数*/


//调试所用参数（show.c里面用到）
u8 basic_speed =40;
u8 Rotate_speed = 40; //
u8 coordinate_X = 0;  //等价信标灯的坐标  X坐标
u8 coordinate_Y = 0;  //Y坐标
//u8 menu =1;     //菜单选项

//调试所用参数（main里面用到）
u8 shield_flag =0;


u8 prama[5] = {0};       //写入flash里面的数
u8 R_prama[5] = {0};		 //读出flash里面的数
u8 My_sectorNum = 20;     //扇区号

//u8 threshold ;/*阈值*/



s16 use_time = 0;      /*测量程序执行时间*/

u8 Data_State=0;/*主从机传送数据状态*/

/*障碍坐标*/
u8 avoid_x =0 ;
u8 avoid_y = 0 ;
u8 COL_2 = 98;
#define NO_Barrier_advoidance 1  // 0: 需要检测障碍   1：不检测障碍
u8 delay_flag =0;// 检测到障碍物后的延时标志位,使角度打死一小段时间
u8 Barrier_flag = 0;

/*信标灯坐标*/
s16 beacon_x=0;
s16 beacon_y=0;
s16 excursion_x = 0;  //信标灯坐标偏移
s16 excursion_y = 0;
u8 beacon_threshold =2;
s16 twinkle_delay=0;/*闪烁延时参数*/
u8 No_Barrier_flag =0;
u8 excursion_flag =0; //近距离偏移标志位
u8 state_flag = 0;    //距离信标灯远近标志位

