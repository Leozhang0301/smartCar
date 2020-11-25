///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:21
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\pit.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW48AC.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\pit.c -D LPLD_K60
//        -lCN
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List"
//        -lB
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List"
//        -o
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\Obj"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\@@\605110 IAR for
//        ARM 8.30\arm\inc\c\DLib_Config_Normal.h" -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\driver\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\class\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Me\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Jay\"
//        -Ol -I "D:\@@\605110 IAR for ARM 8.30\arm\CMSIS\Core\Include\" -I
//        "D:\@@\605110 IAR for ARM 8.30\arm\CMSIS\DSP\Include\" -D
//        ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\pit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN KeyScan
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN Left_front_goalspeed
        EXTERN Left_rear_goalspeed
        EXTERN Motor_control
        EXTERN PID_Control
        EXTERN Right_front_goalspeed
        EXTERN Right_rear_goalspeed
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN fps1_n
        EXTERN fps_num1_n
        EXTERN ftm1_getSpeed
        EXTERN ftm2_getSpeed
        EXTERN getspeed
        EXTERN l1_reSpeed
        EXTERN l2_reSpeed
        EXTERN r1_reSpeed
        EXTERN r2_reSpeed
        EXTERN right_getSpeed

        PUBLIC CCD_CTL_OPEN
        PUBLIC CCD_TIME
        PUBLIC CCD_TIME_OPEN
        PUBLIC K
        PUBLIC LC
        PUBLIC LuBang
        PUBLIC `P1`
        PUBLIC `P2`
        PUBLIC `P3`
        PUBLIC `P4`
        PUBLIC RC
        PUBLIC a
        PUBLIC back_count
        PUBLIC back_stop
        PUBLIC cctl
        PUBLIC delay_p
        PUBLIC ic_isr
        PUBLIC inct
        PUBLIC pit1_init_struct
        PUBLIC pit_init
        PUBLIC pit_init_struct
        PUBLIC sctl
        PUBLIC two_ms

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\pit.c
//    1 #include "common.h"
//    2 #include "include.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 PIT_InitTypeDef pit1_init_struct;
pit1_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 PIT_InitTypeDef pit_init_struct;
pit_init_struct:
        DS8 20
//    5 void ic_isr();
//    6 //void clear();
//    7 
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 float LC = 0.0f;
LC:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 float RC = 0.0f;
RC:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 float K = 0.0f;
K:
        DS8 4
//   12 //int twinkle_delay = 10;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 int a = 0;
a:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   14 boolean sctl = 1;
sctl:
        DATA8
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   15 boolean cctl = 0;
cctl:
        DS8 1
//   16 void pit_init();

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   17 boolean CCD_CTL_OPEN = 0;
CCD_CTL_OPEN:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   18 boolean CCD_TIME_OPEN = 0;
CCD_TIME_OPEN:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   19 boolean LuBang = 1;
LuBang:
        DATA8
        DC8 1
//   20 
//   21 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 int CCD_TIME = 0;
CCD_TIME:
        DS8 4
//   23 
//   24 extern s16 Right_front_speed;/*右前轮速度*/
//   25 extern s16 Left_front_speed;/*左前轮速度*/
//   26 extern s16 Left_front_goalspeed;/*左前轮目标速度*/
//   27 extern s16 Right_front_goalspeed;/*右前轮目标速度*/
//   28 
//   29 extern s16 Right_rear_speed;/*右后轮速度*/
//   30 extern s16 Left_rear_speed;/*左后轮速度*/
//   31 extern s16 Left_rear_goalspeed;/*左后轮目标速度*/
//   32 extern s16 Right_rear_goalspeed;/*右后轮目标速度*/
//   33 
//   34 extern _pid_t pid_left_front;     /*结构体 左前轮PID参数*/
//   35 extern _pid_t pid_right_front;		/*结构体 右前轮PID参数*/
//   36 extern _pid_t pid_left_rear;			/*结构体 左后轮PID参数*/
//   37 extern _pid_t pid_right_rear;			/*结构体 右后轮PID参数*/
//   38 extern s16 twinkle_delay;/*闪烁延时参数*/
//   39 
//   40 
//   41 /*
//   42 * 初始化PIT定时器
//   43 *
//   44 */
//   45 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   46 int back_count = 0;
back_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 int back_stop = 0;
back_stop:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   48 int two_ms=0;
two_ms:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   49 u8 inct = 0;
inct:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void pit_init()
//   51 {
pit_init:
        PUSH     {R2-R4,LR}
//   52   //配置定时周期中断参数
//   53   pit_init_struct.PIT_Pitx = PIT0;
        LDR.N    R4,??DataTable2
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//   54   pit_init_struct.PIT_PeriodMs = 2;    //2毫秒产生一起中断
        MOVS     R0,#+2
        STR      R0,[R4, #+8]
//   55   pit_init_struct.PIT_Isr = ic_isr;
        ADR.W    R0,ic_isr
        STR      R0,[R4, #+16]
//   56   //初始化PIT
//   57   LPLD_PIT_Init(pit_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   58   //使能PIT定时中断
//   59   LPLD_PIT_EnableIrq(pit_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   60 }
        POP      {R0,R1,R4,PC}    ;; return
//   61 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   62 int P1,P2,P3,P4;
`P1`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`P2`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`P3`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`P4`:
        DS8 4
//   63 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 void delay_p(void)
//   65 {
//   66   inct++;
delay_p:
        LDR.N    R0,??DataTable2_1
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
//   67 }
        BX       LR               ;; return
//   68 /*
//   69 * PIT中断函数
//   70 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   71 void ic_isr()
//   72 {
ic_isr:
        PUSH     {R3-R7,LR}
//   73   
//   74     two_ms++;
        LDR.N    R1,??DataTable2_2
        LDR      R0,[R1, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R1, #+0]
//   75     if(two_ms%500==0)
        MOV      R0,#+500
        LDR      R2,[R1, #+0]
        LDR      R1,[R1, #+0]
        SDIV     R1,R1,R0
        MLS      R0,R0,R1,R2
        CMP      R0,#+0
        BNE.N    ??ic_isr_0
//   76     {
//   77       fps1_n = fps_num1_n;
        LDR.N    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable2_4
        STR      R1,[R2, #+0]
//   78       fps_num1_n=0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   79     }
//   80    
//   81 	/* LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);//右上反
//   82      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 2500);
//   83      
//   84      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 2500);
//   85      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);//左上反
//   86      
//   87      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, 2500);//左下正
//   88      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
//   89      
//   90      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
//   91      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 2500);//右下正*/
//   92  // if(twinkle_delay>0)twinkle_delay--;    
//   93     l1_reSpeed=right_getSpeed();
??ic_isr_0:
        LDR.N    R6,??DataTable2_5
        BL       right_getSpeed
        STR      R0,[R6, #+0]
//   94     r1_reSpeed=ftm2_getSpeed();
        LDR.N    R7,??DataTable2_6
        BL       ftm2_getSpeed
        STR      R0,[R7, #+0]
//   95 
//   96     r2_reSpeed=ftm1_getSpeed();
        LDR.N    R4,??DataTable2_7
        BL       ftm1_getSpeed
        STR      R0,[R4, #+0]
//   97 
//   98     l2_reSpeed=getspeed(); 
        LDR.N    R5,??DataTable2_8
        BL       getspeed
        STR      R0,[R5, #+0]
//   99     KeyScan();
        BL       KeyScan
//  100    // KeyScan();
//  101   P1 = (int)PID_Control(  l1_reSpeed, Left_rear_goalspeed );
        LDR.N    R0,??DataTable2_9
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR      R0,[R6, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       PID_Control
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_10
        STR      R0,[R1, #+0]
//  102   P2 = (int)PID_Control(r1_reSpeed, Left_front_goalspeed);
        LDR.N    R0,??DataTable2_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR      R0,[R7, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       PID_Control
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_12
        STR      R0,[R1, #+0]
//  103   P3 = (int)PID_Control( l2_reSpeed, Right_rear_goalspeed );
        LDR.N    R0,??DataTable2_13
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR      R0,[R5, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       PID_Control
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_14
        STR      R0,[R1, #+0]
//  104   P4 = (int)PID_Control( r2_reSpeed, Right_front_goalspeed);   
        LDR.N    R0,??DataTable2_15
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR      R0,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       PID_Control
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//  105 //  
//  106    Motor_control();
        BL       Motor_control
//  107 
//  108 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     inct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     two_ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     fps_num1_n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     fps1_n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     l1_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DATA32
        DC32     r1_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DATA32
        DC32     r2_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DATA32
        DC32     l2_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DATA32
        DC32     Left_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DATA32
        DC32     `P1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DATA32
        DC32     Left_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DATA32
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DATA32
        DC32     Right_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DATA32
        DC32     `P3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DATA32
        DC32     Right_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DATA32
        DC32     `P4`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  109 
//  110 
// 
//  92 bytes in section .bss
//   2 bytes in section .data
// 330 bytes in section .text
// 
// 330 bytes of CODE memory
//  94 bytes of DATA memory
//
//Errors: none
//Warnings: none
