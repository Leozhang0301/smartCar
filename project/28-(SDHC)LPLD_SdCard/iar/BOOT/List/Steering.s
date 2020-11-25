///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:53
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\common\Steering.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW5157.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\common\Steering.c -D LPLD_K60
//        -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\Steering.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Calculate
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4

        PUBLIC PID_S
        PUBLIC SD
        PUBLIC `SP`
        PUBLIC Steering_PWM
        PUBLIC ccd_mid
        PUBLIC mid
        PUBLIC midpwm
        PUBLIC steering_control
        PUBLIC steering_init
        PUBLIC steering_init_struct

// G:\AIcar\@@\k60_144\smartcar\lib\common\Steering.c
//    1 #include "include.h"
//    2 /*后来加的变量*/
//    3 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    4 int mid = 39;
mid:
        DATA32
        DC32 39

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    5 int ccd_mid =63;
ccd_mid:
        DATA32
        DC32 63

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    6 int midpwm = 1134;
midpwm:
        DATA32
        DC32 1134

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 int Steering_PWM = 0;
Steering_PWM:
        DS8 4
//    8 
//    9 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   10 float SP = 2.8f;
`SP`:
        DATA32
        DC32 40333333H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   11 float SD = 2.1f;
SD:
        DATA32
        DC32 40066666H
//   12 //舵机结构体

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 FTM_InitTypeDef steering_init_struct;
steering_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//   14 Steering PID_S;
PID_S:
        DS8 40
//   15 /*
//   16 name:   steering_init()
//   17 舵机初始化
//   18 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void steering_init()
//   20 {
steering_init:
        PUSH     {R0-R4,LR}
//   21   PID_S.KP = SP;
        LDR.N    R4,??DataTable1
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        STRD     R0,R1,[R4, #+0]
//   22   PID_S.KD = SD;
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        STRD     R0,R1,[R4, #+8]
//   23   PID_S.error = 0;   //误差
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//   24   PID_S.lasterror = 0;   //上次误差
        MOVS     R0,#+0
        STR      R0,[R4, #+20]
//   25   PID_S.SteerPwmAdd = 0.0f;
        MOVS     R0,#+0
        MOVS     R1,#+0
        STRD     R0,R1,[R4, #+24]
//   26   PID_S.CCD_error  = 0;  //CCD误差
        MOVS     R0,#+0
        STR      R0,[R4, #+32]
//   27   
//   28   steering_init_struct.FTM_Ftmx = FTM2;	
        LDR.N    R1,??DataTable1_3
        LDR.N    R4,??DataTable1_4  ;; 0x400b8000
        STR      R4,[R1, #+0]
//   29   steering_init_struct.FTM_Mode = FTM_MODE_PWM;	
        MOVS     R0,#+1
        STRB     R0,[R1, #+4]
//   30   steering_init_struct.FTM_PwmFreq = 75;
        MOVS     R0,#+75
        STR      R0,[R1, #+8]
//   31   
//   32   LPLD_FTM_Init(steering_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   33   
//   34   LPLD_FTM_PWM_Enable(FTM2, 
//   35                       FTM_Ch0, 
//   36                       midpwm,  //  中：1134   左：999 右：1269
//   37                       PTB18, 
//   38                       ALIGN_LEFT       
//   39                         );  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+50
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   40 }
        POP      {R0-R4,PC}       ;; return
//   41 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 void steering_control(void)
//   43 {   
steering_control:
        PUSH     {R4-R6,LR}
//   44   PID_S.CCD_error  = 0;  //CCD误差清零
        LDR.N    R6,??DataTable1
        MOVS     R0,#+0
        STR      R0,[R6, #+32]
//   45   
//   46   PID_S.error =  mid - Calculate()  ;  
        BL       Calculate
        LDR.N    R1,??DataTable1_6
        LDR      R1,[R1, #+0]
        SUBS     R0,R1,R0
        STR      R0,[R6, #+16]
//   47   PID_S.SteerPwmAdd=(PID_S.KP*PID_S.error)+PID_S.KD*(PID_S.error-PID_S.lasterror);  //舵机的pd控制器
        LDR      R0,[R6, #+16]
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+16]
        LDR      R1,[R6, #+20]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+8]
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        STRD     R0,R1,[R6, #+24]
//   48   if(PID_S.SteerPwmAdd > 135 )
        LDRD     R0,R1,[R6, #+24]
        MOVS     R2,#+1
        LDR.N    R3,??DataTable1_7  ;; 0x4060e000
        BL       __aeabi_cdrcmple
        BHI.N    ??steering_control_0
//   49   {
//   50     PID_S.SteerPwmAdd = 135;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7  ;; 0x4060e000
        STRD     R0,R1,[R6, #+24]
        B.N      ??steering_control_1
//   51   }
//   52   else if(PID_S.SteerPwmAdd < -135 )
??steering_control_0:
        LDRD     R0,R1,[R6, #+24]
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_8  ;; 0xc060e000
        BL       __aeabi_cdcmple
        BCS.N    ??steering_control_1
//   53   {
//   54     PID_S.SteerPwmAdd = -135;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0xc060e000
        STRD     R0,R1,[R6, #+24]
//   55   }
//   56   Steering_PWM = (int)(midpwm + PID_S.SteerPwmAdd);
??steering_control_1:
        LDR.N    R4,??DataTable1_9
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+24]
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[R4, #+0]
//   57   
//   58   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch0, Steering_PWM);
        LDR      R2,[R4, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_4  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//   59   
//   60   PID_S.lasterror = PID_S.error;
        LDR      R0,[R6, #+16]
        STR      R0,[R6, #+20]
//   61 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     PID_S

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     `SP`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     SD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     steering_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     midpwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     mid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     0x4060e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     0xc060e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     Steering_PWM

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   62 
//   63 
//   64 /*void CCD_control(void)
//   65 {   
//   66   PID_S.error = 0;   //舵机误差清零
//   67   PID_S.lasterror = 0;   //舵机上次误差
//   68   
//   69   PID_S.CCD_error =  ccd_mid - weizhi(&ccd1);      ///weizhi = 63的时候  要达到最大角度
//   70   if(PID_S.CCD_error >= 0)
//   71   {
//   72     PID_S.CCD_error = 63 - PID_S.CCD_error;
//   73   }
//   74   if(PID_S.CCD_error < 0)
//   75     
//   76   {
//   77     PID_S.CCD_error = -63 + PID_S.CCD_error;
//   78   }
//   79   
//   80   
//   81   PID_S.SteerPwmAdd=(2.5*PID_S.CCD_error);  //舵机的P控制器
//   82   if(PID_S.CCD_error >= 0){
//   83     if(PID_S.SteerPwmAdd > 135 )
//   84     {
//   85       PID_S.SteerPwmAdd = 135;
//   86     }
//   87     else if(PID_S.SteerPwmAdd < 0 )
//   88     {
//   89       PID_S.SteerPwmAdd = 0;
//   90     }
//   91   }
//   92   else if(PID_S.CCD_error < 0){
//   93     if(PID_S.SteerPwmAdd <= -135 )
//   94     {
//   95       PID_S.SteerPwmAdd = -135;
//   96     }
//   97     else if(PID_S.SteerPwmAdd > 0 )
//   98     {
//   99       PID_S.SteerPwmAdd = 0;
//  100     }
//  101   }
//  102   
//  103   Steering_PWM = (int)(midpwm - PID_S.SteerPwmAdd);
//  104   LPLD_FTM_PWM_ChangeDuty(FTM2, FTM_Ch0, Steering_PWM);    //midpwm+中间是最大偏角     
//  105   
//  106   CCD_CTL_OPEN = 0;
//  107 }*/
//  108 
//  109 
// 
//  72 bytes in section .bss
//  20 bytes in section .data
// 292 bytes in section .text
// 
// 292 bytes of CODE memory
//  92 bytes of DATA memory
//
//Errors: none
//Warnings: 2
