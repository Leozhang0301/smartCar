///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        02/Jul/2019  17:59:23
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\Variable.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW6EE7.tmp
//        (G:\AIcar\@@\xiugai\lib\common\Variable.c -D LPLD_K60 -lCN
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List"
//        -lB
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List"
//        -o
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\Obj"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        G:\AIcar\arm\inc\c\DLib_Config_Normal.h -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\app\" -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\class\"
//        -I
//        "G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Jay\"
//        -On -I G:\AIcar\arm\CMSIS\Core\Include\ -I
//        G:\AIcar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\Variable.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC Barrier_flag
        PUBLIC COL_2
        PUBLIC Data_State
        PUBLIC KD
        PUBLIC KD_show
        PUBLIC KP
        PUBLIC KP_show
        PUBLIC Left_front_goalspeed
        PUBLIC Left_front_speed
        PUBLIC Left_rear_goalspeed
        PUBLIC Left_rear_speed
        PUBLIC My_sectorNum
        PUBLIC No_Barrier_flag
        PUBLIC R_prama
        PUBLIC Right_front_goalspeed
        PUBLIC Right_front_speed
        PUBLIC Right_rear_goalspeed
        PUBLIC Right_rear_speed
        PUBLIC Rotate_speed
        PUBLIC avoid_x
        PUBLIC avoid_y
        PUBLIC basic_speed
        PUBLIC beacon_threshold
        PUBLIC beacon_x
        PUBLIC beacon_y
        PUBLIC coordinate_X
        PUBLIC coordinate_Y
        PUBLIC delay_flag
        PUBLIC excursion_flag
        PUBLIC excursion_x
        PUBLIC excursion_y
        PUBLIC pid_left_front
        PUBLIC pid_left_rear
        PUBLIC pid_right_front
        PUBLIC pid_right_rear
        PUBLIC prama
        PUBLIC set_speed_l
        PUBLIC set_speed_s
        PUBLIC shield_flag
        PUBLIC state_flag
        PUBLIC twinkle_delay
        PUBLIC use_time

// G:\AIcar\@@\xiugai\lib\common\Variable.c
//    1 #include "Variable.h"
//    2 //#include "SEEKFREE_MT9V032.h"
//    3 //�����Ǵӻ����͵ģ������������Լ���ȡ��

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    4 s16 Right_front_speed;/*��ǰ���ٶ�*/
Right_front_speed:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    5 s16 Left_front_speed;/*��ǰ���ٶ�*/
Left_front_speed:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    6 s16 Right_rear_speed;/*�Һ����ٶ�*/
Right_rear_speed:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    7 s16 Left_rear_speed;/*������ٶ�*/
Left_rear_speed:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 s32 Left_front_goalspeed;/*��ǰ��Ŀ���ٶ�*/
Left_front_goalspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 s32 Right_front_goalspeed;/*��ǰ��Ŀ���ٶ�*/
Right_front_goalspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 s32 Left_rear_goalspeed;/*��ǰ��Ŀ���ٶ�*/
Left_rear_goalspeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 s32 Right_rear_goalspeed;/*��ǰ��Ŀ���ٶ�*/
Right_rear_goalspeed:
        DS8 4
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   13 u8 set_speed_l =0;  //�����ٶ�
set_speed_l:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   14 s16 set_speed_s =0;  // תȦ�ٶ�
set_speed_s:
        DS8 2
//   15 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   16 float KP = 2.5f;//18;  //���򻷵�PD
KP:
        DATA32
        DC32 40200000H

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   17 s16 KD = 0;//40;
KD:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   18 s16 KP_show = 180 ;  //���򻷵�PD������oled������ʾ��
KP_show:
        DATA16
        DC16 180

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   19 s16 KD_show = 400 ;
KD_show:
        DATA16
        DC16 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 _pid_t pid_left_front;     /*�ṹ�� ��ǰ��PID����*/
pid_left_front:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 _pid_t pid_right_front;		/*�ṹ�� ��ǰ��PID����*/
pid_right_front:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 _pid_t pid_left_rear;			/*�ṹ�� �����PID����*/
pid_left_rear:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 _pid_t pid_right_rear;			/*�ṹ�� �Һ���PID����*/
pid_right_rear:
        DS8 16
//   24 
//   25 
//   26 //�������ò�����show.c�����õ���

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   27 u8 basic_speed =40;
basic_speed:
        DATA8
        DC8 40

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   28 u8 Rotate_speed = 40; //
Rotate_speed:
        DATA8
        DC8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   29 u8 coordinate_X = 0;  //�ȼ��ű�Ƶ�����  X����
coordinate_X:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   30 u8 coordinate_Y = 0;  //Y����
coordinate_Y:
        DS8 1
//   31 //u8 menu =1;     //�˵�ѡ��
//   32 
//   33 //�������ò�����main�����õ���

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   34 u8 shield_flag =0;
shield_flag:
        DS8 1
//   35 
//   36 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   37 u8 prama[5] = {0};       //д��flash�������
prama:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   38 u8 R_prama[5] = {0};		 //����flash�������
R_prama:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   39 u8 My_sectorNum = 20;     //������
My_sectorNum:
        DATA8
        DC8 20
//   40 
//   41 //u8 threshold ;/*��ֵ*/
//   42 
//   43 
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   45 s16 use_time = 0;      /*��������ִ��ʱ��*/
use_time:
        DS8 2
//   46 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   47 u8 Data_State=0;/*���ӻ���������״̬*/
Data_State:
        DS8 1
//   48 
//   49 /*�ϰ�����*/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   50 u8 avoid_x =0 ;
avoid_x:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   51 u8 avoid_y = 0 ;
avoid_y:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   52 u8 COL_2 = 98;
COL_2:
        DATA8
        DC8 98
//   53 #define NO_Barrier_advoidance 1  // 0: ��Ҫ����ϰ�   1��������ϰ�

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   54 u8 delay_flag =0;// ��⵽�ϰ�������ʱ��־λ,ʹ�Ƕȴ���һС��ʱ��
delay_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   55 u8 Barrier_flag = 0;
Barrier_flag:
        DS8 1
//   56 
//   57 /*�ű������*/

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   58 s16 beacon_x=0;
beacon_x:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   59 s16 beacon_y=0;
beacon_y:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   60 s16 excursion_x = 0;  //�ű������ƫ��
excursion_x:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   61 s16 excursion_y = 0;
excursion_y:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   62 u8 beacon_threshold =2;
beacon_threshold:
        DATA8
        DC8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   63 s16 twinkle_delay=0;/*��˸��ʱ����*/
twinkle_delay:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   64 u8 No_Barrier_flag =0;
No_Barrier_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   65 u8 excursion_flag =0; //������ƫ�Ʊ�־λ
excursion_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   66 u8 state_flag = 0;    //�����ű��Զ����־λ
state_flag:
        DS8 1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   67 
// 
// 132 bytes in section .bss
//  13 bytes in section .data
// 
// 145 bytes of DATA memory
//
//Errors: none
//Warnings: none
