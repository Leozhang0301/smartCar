///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  22:53:50
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\pit.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EWB18C.tmp
//        (G:\AIcar\@@\xiugai\lib\common\pit.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\pit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN KeyScan
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN Left_front_goalspeed
        EXTERN Left_rear_goalspeed
        EXTERN Motor_control
        EXTERN Right_front_goalspeed
        EXTERN Right_rear_goalspeed
        EXTERN __aeabi_memcpy4
        EXTERN back
        EXTERN daoche
        EXTERN fps1_n
        EXTERN fps_num1_n
        EXTERN ftm1_getSpeed
        EXTERN ftm2_getSpeed
        EXTERN getspeed
        EXTERN l1_reSpeed
        EXTERN l2_reSpeed
        EXTERN r1_reSpeed
        EXTERN r2_reSpeed
        EXTERN rPID_Control
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
        PUBLIC cheak
        PUBLIC daoche_ms
        PUBLIC delay_p
        PUBLIC ic_isr
        PUBLIC inct
        PUBLIC pit1_init_struct
        PUBLIC pit_init
        PUBLIC pit_init_struct
        PUBLIC sctl
        PUBLIC two_ms

// G:\AIcar\@@\xiugai\lib\common\pit.c
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
//    6 void cheak(void);
//    7 //void clear();
//    8 
//    9 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 float LC = 0.0f;
LC:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 float RC = 0.0f;
RC:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 float K = 0.0f;
K:
        DS8 4
//   13 //int twinkle_delay = 10;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 int a = 0;
a:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   15 boolean sctl = 1;
sctl:
        DATA8
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   16 boolean cctl = 0;
cctl:
        DS8 1
//   17 void pit_init();

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   18 boolean CCD_CTL_OPEN = 0;
CCD_CTL_OPEN:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   19 boolean CCD_TIME_OPEN = 0;
CCD_TIME_OPEN:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   20 boolean LuBang = 1;
LuBang:
        DATA8
        DC8 1
//   21 
//   22 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 int CCD_TIME = 0;
CCD_TIME:
        DS8 4
//   24 
//   25 
//   26 
//   27 
//   28 /*
//   29 * 初始化PIT定时器
//   30 *
//   31 */
//   32 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   33 int back_count = 0;
back_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   34 int back_stop = 0;
back_stop:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   35 int two_ms=0;
two_ms:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   36 int daoche_ms=500;
daoche_ms:
        DATA32
        DC32 500

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   37 u8 inct = 0;
inct:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void pit_init()
//   39 {
pit_init:
        PUSH     {R2-R4,LR}
//   40   //配置定时周期中断参数
//   41   pit_init_struct.PIT_Pitx = PIT0;
        LDR.N    R4,??DataTable3
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//   42   pit_init_struct.PIT_PeriodMs = 2;    //2毫秒产生一起中断
        MOVS     R0,#+2
        STR      R0,[R4, #+8]
//   43   pit_init_struct.PIT_Isr = ic_isr;
        ADR.W    R0,ic_isr
        STR      R0,[R4, #+16]
//   44   //初始化PIT
//   45   LPLD_PIT_Init(pit_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   46   //使能PIT定时中断
//   47   LPLD_PIT_EnableIrq(pit_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   48 }
        POP      {R0,R1,R4,PC}    ;; return
//   49 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   50 int P1,P2,P3,P4;
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
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void delay_p(void)
//   53 {
//   54   inct++;
delay_p:
        LDR.N    R0,??DataTable3_1
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
//   55 }
        BX       LR               ;; return
//   56 /*
//   57 * PIT中断函数
//   58 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   59 void ic_isr()
//   60 {
ic_isr:
        PUSH     {R3-R11,LR}
//   61     two_ms++;
        LDR.N    R1,??DataTable3_2
        LDR      R0,[R1, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R1, #+0]
//   62     if(two_ms%500==0)
        MOV      R0,#+500
        LDR      R2,[R1, #+0]
        LDR      R1,[R1, #+0]
        SDIV     R1,R1,R0
        MLS      R0,R0,R1,R2
        CMP      R0,#+0
        BNE.N    ??ic_isr_0
//   63     {
//   64       fps1_n = fps_num1_n;
        LDR.N    R0,??DataTable3_3
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable3_4
        STR      R1,[R2, #+0]
//   65       fps_num1_n=0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   66     }
//   67     daoche();
??ic_isr_0:
        BL       daoche
//   68 
//   69     l1_reSpeed=right_getSpeed();
        LDR.N    R4,??DataTable3_5
        BL       right_getSpeed
        STR      R0,[R4, #+0]
//   70     r1_reSpeed=ftm2_getSpeed();
        LDR.N    R5,??DataTable3_6
        BL       ftm2_getSpeed
        STR      R0,[R5, #+0]
//   71 
//   72     r2_reSpeed=ftm1_getSpeed();
        LDR.N    R6,??DataTable3_7
        BL       ftm1_getSpeed
        STR      R0,[R6, #+0]
//   73 
//   74     l2_reSpeed=getspeed(); 
        LDR.N    R7,??DataTable3_8
        BL       getspeed
        STR      R0,[R7, #+0]
//   75     KeyScan();
        BL       KeyScan
//   76     //倒车
//   77     if(back==0)
        LDR.N    R1,??DataTable3_9
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_1
//   78     {
//   79       cheak();
        BL       cheak
        B.N      ??ic_isr_2
//   80     }
//   81     else
//   82     {
//   83       back_stop++;
??ic_isr_1:
        LDR.N    R0,??DataTable3_10
        LDR      R2,[R0, #+0]
        ADDS     R2,R2,#+1
        STR      R2,[R0, #+0]
//   84       if(back_stop>350)
        LDR      R2,[R0, #+0]
        MOVW     R3,#+351
        CMP      R2,R3
        BLT.N    ??ic_isr_2
//   85       {
//   86         back_stop=0;
        MOVS     R2,#+0
        STR      R2,[R0, #+0]
//   87         back=0;
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//   88       }
//   89     }
//   90     
//   91     
//   92     P1=2000;
??ic_isr_2:
        LDR.W    R8,??DataTable3_11
        MOV      R0,#+2000
        STR      R0,[R8, #+0]
//   93     P2=2000;
        LDR.W    R9,??DataTable3_12
        STR      R0,[R9, #+0]
//   94     P3=2000;
        LDR.W    R10,??DataTable3_13
        STR      R0,[R10, #+0]
//   95     P4=2000;
        LDR.W    R11,??DataTable3_14
        STR      R0,[R11, #+0]
//   96 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,P1 );//zuo
//   97 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
//   98 //    
//   99 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0);  
//  100 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, P2);
//  101 //   
//  102 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, P3); 
//  103 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  0);
//  104 ////    
//  105 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
//  106 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,P4 ); 
//  107 //Motor_control();
//  108 //if(1)//FACHEflag
//  109 //{
//  110    P1 = (int)rPID_Control(r1_reSpeed, Left_front_goalspeed);
        LDR.N    R0,??DataTable3_15
        LDR      R1,[R0, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR      R0,[R5, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       rPID_Control
        STR      R0,[R8, #+0]
//  111    P2 = (int)rPID_Control(r2_reSpeed, Right_front_goalspeed);
        LDR.N    R0,??DataTable3_16
        LDR      R1,[R0, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR      R0,[R6, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       rPID_Control
        STR      R0,[R9, #+0]
//  112    P3 = (int)rPID_Control(l1_reSpeed, Left_rear_goalspeed);
        LDR.N    R0,??DataTable3_17
        LDR      R1,[R0, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR      R0,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       rPID_Control
        STR      R0,[R10, #+0]
//  113    P4 = (int)rPID_Control(l2_reSpeed, Right_rear_goalspeed);   
        LDR.N    R0,??DataTable3_18
        LDR      R1,[R0, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDR      R0,[R7, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       rPID_Control
        STR      R0,[R11, #+0]
//  114   
//  115    Motor_control();
        BL       Motor_control
//  116 //}
//  117 
//  118     
//  119 
//  120 }
        POP      {R0,R4-R11,PC}   ;; return
//  121 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 void cheak(void)
//  123 {
//  124   if(PTA17_I==0||PTB5_I==0)
cheak:
        LDR.N    R0,??DataTable3_19  ;; 0x43fe0244
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??cheak_0
        LDR.N    R0,??DataTable3_20  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??cheak_1
//  125   {
//  126     back_count++;
??cheak_0:
        LDR.N    R0,??DataTable3_21
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  127     if(back_count > 500)
        LDR      R1,[R0, #+0]
        MOVW     R2,#+501
        CMP      R1,R2
        BLT.N    ??cheak_2
//  128     {
//  129       back_count = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  130       back = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_9
        STRB     R0,[R1, #+0]
        B.N      ??cheak_2
//  131       //init_Speed(0,0);
//  132     }  
//  133   }
//  134   else 
//  135     back_count = 0;    
??cheak_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_21
        STR      R0,[R1, #+0]
//  136 }
??cheak_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA32
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA32
        DC32     inct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA32
        DC32     two_ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DATA32
        DC32     fps_num1_n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DATA32
        DC32     fps1_n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DATA32
        DC32     l1_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DATA32
        DC32     r1_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DATA32
        DC32     r2_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DATA32
        DC32     l2_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DATA32
        DC32     back

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DATA32
        DC32     back_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DATA32
        DC32     `P1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DATA32
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DATA32
        DC32     `P3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DATA32
        DC32     `P4`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DATA32
        DC32     Left_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DATA32
        DC32     Right_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DATA32
        DC32     Left_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DATA32
        DC32     Right_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DATA32
        DC32     0x43fe0244

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DATA32
        DC32     0x43fe0a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DATA32
        DC32     back_count

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  137 
//  138 
// 
//  92 bytes in section .bss
//   6 bytes in section .data
// 448 bytes in section .text
// 
// 448 bytes of CODE memory
//  98 bytes of DATA memory
//
//Errors: none
//Warnings: none
