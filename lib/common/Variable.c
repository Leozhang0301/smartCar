#include "Variable.h"
//#include "SEEKFREE_MT9V032.h"
//�����Ǵӻ����͵ģ������������Լ���ȡ��
s16 Right_front_speed;/*��ǰ���ٶ�*/
s16 Left_front_speed;/*��ǰ���ٶ�*/
s16 Right_rear_speed;/*�Һ����ٶ�*/
s16 Left_rear_speed;/*������ٶ�*/
s32 Left_front_goalspeed;/*��ǰ��Ŀ���ٶ�*/
s32 Right_front_goalspeed;/*��ǰ��Ŀ���ٶ�*/
s32 Left_rear_goalspeed;/*��ǰ��Ŀ���ٶ�*/
s32 Right_rear_goalspeed;/*��ǰ��Ŀ���ٶ�*/

u8 set_speed_l =0;  //�����ٶ�
s16 set_speed_s =0;  // תȦ�ٶ�

float KP = 2.5f;//18;  //���򻷵�PD
s16 KD = 0;//40;
s16 KP_show = 180 ;  //���򻷵�PD������oled������ʾ��
s16 KD_show = 400 ;
_pid_t pid_left_front;     /*�ṹ�� ��ǰ��PID����*/
_pid_t pid_right_front;		/*�ṹ�� ��ǰ��PID����*/
_pid_t pid_left_rear;			/*�ṹ�� �����PID����*/
_pid_t pid_right_rear;			/*�ṹ�� �Һ���PID����*/


//�������ò�����show.c�����õ���
u8 basic_speed =40;
u8 Rotate_speed = 40; //
u8 coordinate_X = 0;  //�ȼ��ű�Ƶ�����  X����
u8 coordinate_Y = 0;  //Y����
//u8 menu =1;     //�˵�ѡ��

//�������ò�����main�����õ���
u8 shield_flag =0;


u8 prama[5] = {0};       //д��flash�������
u8 R_prama[5] = {0};		 //����flash�������
u8 My_sectorNum = 20;     //������

//u8 threshold ;/*��ֵ*/



s16 use_time = 0;      /*��������ִ��ʱ��*/

u8 Data_State=0;/*���ӻ���������״̬*/

/*�ϰ�����*/
u8 avoid_x =0 ;
u8 avoid_y = 0 ;
u8 COL_2 = 98;
#define NO_Barrier_advoidance 1  // 0: ��Ҫ����ϰ�   1��������ϰ�
u8 delay_flag =0;// ��⵽�ϰ�������ʱ��־λ,ʹ�Ƕȴ���һС��ʱ��
u8 Barrier_flag = 0;

/*�ű������*/
s16 beacon_x=0;
s16 beacon_y=0;
s16 excursion_x = 0;  //�ű������ƫ��
s16 excursion_y = 0;
u8 beacon_threshold =2;
s16 twinkle_delay=0;/*��˸��ʱ����*/
u8 No_Barrier_flag =0;
u8 excursion_flag =0; //������ƫ�Ʊ�־λ
u8 state_flag = 0;    //�����ű��Զ����־λ

