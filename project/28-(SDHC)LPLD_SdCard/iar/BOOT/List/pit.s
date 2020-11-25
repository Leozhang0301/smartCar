///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:51
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\common\pit.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW4B75.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\common\pit.c -D LPLD_K60 -lCN
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List"
//        -lB
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List"
//        -o
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\Obj"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        G:\AIcar\arm\inc\c\DLib_Config_Normal.h -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\class\"
//        -I
//        "G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Jay\"
//        -Ol -I G:\AIcar\arm\CMSIS\Core\Include\ -I
//        G:\AIcar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\pit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN PID
        EXTERN __aeabi_memcpy4
        EXTERN back
        EXTERN left_getSpeed
        EXTERN left_reSpeed
        EXTERN right_getSpeed
        EXTERN right_reSpeed

        PUBLIC CCD_CTL_OPEN
        PUBLIC CCD_TIME
        PUBLIC CCD_TIME_OPEN
        PUBLIC K
        PUBLIC LC
        PUBLIC LuBang
        PUBLIC RC
        PUBLIC a
        PUBLIC back_count
        PUBLIC back_stop
        PUBLIC cctl
        PUBLIC cheak
        PUBLIC ic_isr
        PUBLIC pit1_init_struct
        PUBLIC pit_init
        PUBLIC pit_init_struct
        PUBLIC sctl

// G:\AIcar\@@\k60_144\smartcar\lib\common\pit.c
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
//   12 

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

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 int CCD_TIME = 0;
CCD_TIME:
        DS8 4
//   22 
//   23 /*
//   24 * 初始化PIT1定时器
//   25 *
//   26 */
//   27 
//   28 /*void pit1_init(void)
//   29 {
//   30   //配置PIT1参数
//   31   pit1_init_struct.PIT_Pitx = PIT1;
//   32   pit1_init_struct.PIT_PeriodMs = 10;     //定时周期1秒
//   33   pit1_init_struct.PIT_Isr = clear;  //设置中断函数
//   34   //初始化PIT1
//   35   LPLD_PIT_Init(pit1_init_struct);  
//   36   LPLD_PIT_EnableIrq(pit1_init_struct);
//   37 }*/
//   38 
//   39 /*void clear(void)
//   40 { 
//   41   CCDB(&ccd1);
//   42   ccdMAX_MIN(&ccd1); 
//   43   erzhi(&ccd1); 
//   44 }*/
//   45 
//   46 
//   47 /*
//   48 * 初始化PIT定时器
//   49 *
//   50 */
//   51 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   52 int back_count = 0;
back_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   53 int back_stop = 0;
back_stop:
        DS8 4
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 void pit_init()
//   56 {
pit_init:
        PUSH     {R2-R4,LR}
//   57   //配置定时周期中断参数
//   58   pit_init_struct.PIT_Pitx = PIT0;
        LDR.N    R4,??DataTable2
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//   59   pit_init_struct.PIT_PeriodMs = 2;    //2毫秒产生一起中断
        MOVS     R0,#+2
        STR      R0,[R4, #+8]
//   60   pit_init_struct.PIT_Isr = ic_isr;
        ADR.W    R0,ic_isr
        STR      R0,[R4, #+16]
//   61   //初始化PIT
//   62   LPLD_PIT_Init(pit_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   63   //使能PIT定时中断
//   64   LPLD_PIT_EnableIrq(pit_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   65 }
        POP      {R0,R1,R4,PC}    ;; return
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void cheak(void)
//   68 {
cheak:
        PUSH     {R7,LR}
//   69   if((left_getSpeed() <= 10 && PID.Speed_output_Left > 5000 )||(right_getSpeed() <= 10 && PID.Speed_output_Right > 5000))
        BL       left_getSpeed
        CMP      R0,#+11
        BGE.N    ??cheak_0
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+64]
        MOVW     R1,#+5001
        CMP      R0,R1
        BGE.N    ??cheak_1
??cheak_0:
        BL       right_getSpeed
        CMP      R0,#+11
        BGE.N    ??cheak_2
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+68]
        MOVW     R1,#+5001
        CMP      R0,R1
        BLT.N    ??cheak_2
//   70   {
//   71     back_count++;
??cheak_1:
        LDR.N    R0,??DataTable2_2
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   72     if(back_count > 300)
        LDR      R1,[R0, #+0]
        MOVW     R2,#+301
        CMP      R1,R2
        BLT.N    ??cheak_3
//   73     {
//   74       back_count = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   75       back = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+0]
        B.N      ??cheak_3
//   76       //init_Speed(0,0);
//   77     }  
//   78   }
//   79   else 
//   80     back_count = 0;    
??cheak_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   81 }
??cheak_3:
        POP      {R0,PC}          ;; return
//   82 
//   83 
//   84 /*
//   85 * PIT中断函数
//   86 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   87 void ic_isr()
//   88 {
ic_isr:
        PUSH     {R7,LR}
//   89   /* LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 2000);//右上反
//   90    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
//   91    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
//   92    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 2000);//左上反
//   93    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, 2000);//左下正
//   94    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
//   95     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
//   96     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 2000);//右下反*/
//   97     
//   98     left_reSpeed=left_getSpeed();
        BL       left_getSpeed
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   99     right_reSpeed=right_getSpeed();
        BL       right_getSpeed
        LDR.N    R1,??DataTable2_5
        STR      R0,[R1, #+0]
//  100    
//  101    
//  102   //获取FTM1的正交解码计数值
//  103  /* left_reSpeed = LPLD_FTM_GetCounter(FTM1);
//  104   LPLD_FTM_ClearCounter(FTM1);   
//  105   right_reSpeed= LPLD_LPTMR_GetPulseAcc();
//  106   //清空计数器
//  107   LPLD_LPTMR_ResetCounter();
//  108   LPLD_LPTMR_Init(lptmr_init_structure);  */ 
//  109   
//  110   
//  111   /***************电机开关**************/
//  112   /*if ( MIDDLE_I > 13 )//过弯提前减速
//  113   {
//  114     GO = SpeedLow;
//  115   }*/
//  116   
//  117 //  if(LuBang)
//  118 //  {
//  119 //    wheel_EDS(GO);
//  120 //    if(MIDDLE_I > 9 && right_getSpeed() > 40 && left_getSpeed() > 40 && back == 0 && GO == SpeedHigh)
//  121 //    {
//  122 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
//  123 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 2000);
//  124 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 2000);
//  125 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
//  126 //    }
//  127 //    else if (MIDDLE_I < 8 && right_getSpeed() < 50 && left_getSpeed() < 50 && Steering_PWM < midpwm + 10 && Steering_PWM > midpwm - 10 && GO == SpeedHigh)
//  128 //    {
//  129 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 9999);
//  130 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
//  131 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
//  132 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 9999);
//  133 //    }
//  134 //    else if (MIDDLE_I < 12 && right_getSpeed() < 25 && left_getSpeed() < 25 && Steering_PWM < midpwm + 10 && Steering_PWM > midpwm - 10 && GO == SpeedLow)
//  135 //    {
//  136 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 9999);
//  137 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
//  138 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
//  139 //      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 9999);
//  140 //    }
//  141 //    else{
//  142 //      Motor_control();
//  143 //    }
//  144 //  }
//  145 //  else
//  146 //  {
//  147 //    wheel_EDS(GO);
//  148 //    Motor_control();
//  149 //  }
//  150   
//  151   /***************倒车判断**************/
//  152  /* if (back == 0)
//  153   {
//  154     cheak();
//  155   }
//  156   else
//  157   {
//  158     back_stop++;
//  159     if(back_stop > 350)
//  160     {
//  161       back_stop = 0;
//  162       back = 0;
//  163     }
//  164   } */
//  165   
//  166   /***************路径判断**************/
//  167 /*  if (CCD_cheak == 0 && sctl == 1)
//  168   {
//  169     if(white_num > 8 &&  MIDDLE_I < 7)
//  170     {
//  171       CCD_cheak = 1;
//  172       cctl = 1;
//  173       sctl = 0;
//  174       CCD_CTL_OPEN = 1;
//  175     }
//  176   }
//  177   
//  178   
//  179   if( CCD_cheak == 1 )
//  180   {
//  181     CCD_TIME ++ ;
//  182     if(CCD_TIME > 50)
//  183     {
//  184       CCD_TIME = 0;
//  185       CCD_cheak = 0;
//  186       cctl = 0;
//  187       sctl = 1;
//  188     }      
//  189   }*/
//  190 }
        POP      {R0,PC}          ;; return

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
        DC32     PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     back_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     back

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     left_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     right_reSpeed

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  71 bytes in section .bss
//   2 bytes in section .data
// 180 bytes in section .text
// 
// 180 bytes of CODE memory
//  73 bytes of DATA memory
//
//Errors: none
//Warnings: 2
