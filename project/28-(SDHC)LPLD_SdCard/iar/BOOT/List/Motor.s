///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:50
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\common\Motor.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW469F.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\common\Motor.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\Motor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4

        PUBLIC EDS_MAX
        PUBLIC Motor_control
        PUBLIC PID
        PUBLIC SpeedHigh
        PUBLIC SpeedLow
        PUBLIC ftm_init_struct3
        PUBLIC init_Motor
        PUBLIC init_PID
        PUBLIC left_I
        PUBLIC left_P
        PUBLIC right_I
        PUBLIC right_P

// G:\AIcar\@@\k60_144\smartcar\lib\common\Motor.c
//    1 #include "include.h"
//    2 
//    3 
//    4 #define MAX_SPEED 9999
//    5 #define MAX_SPEED_L -5000
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//    7 Motor PID;
PID:
        DS8 72

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 FTM_InitTypeDef ftm_init_struct3;
ftm_init_struct3:
        DS8 28

        SECTION `.data`:DATA:REORDER:NOROOT(3)
        DATA
//    9 double left_P =250.0f;     //259
left_P:
        DATA64
        DC64 406F400000000000H

        SECTION `.data`:DATA:REORDER:NOROOT(3)
        DATA
//   10 double left_I = 45.0f;     //50
left_I:
        DATA64
        DC64 4046800000000000H

        SECTION `.data`:DATA:REORDER:NOROOT(3)
        DATA
//   11 double right_P = 250.0f;
right_P:
        DATA64
        DC64 406F400000000000H

        SECTION `.data`:DATA:REORDER:NOROOT(3)
        DATA
//   12 double right_I = 45.0f;
right_I:
        DATA64
        DC64 4046800000000000H
//   13 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   14 int SpeedHigh = 60;
SpeedHigh:
        DATA32
        DC32 60

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   15 int SpeedLow = 35;
SpeedLow:
        DATA32
        DC32 35

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   16 int16 EDS_MAX = 10;
EDS_MAX:
        DATA16
        DC16 10
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void init_Motor()
//   19 {
init_Motor:
        PUSH     {R0-R4,LR}
//   20   ftm_init_struct3.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.N    R1,??DataTable2
        LDR.N    R4,??DataTable2_1  ;; 0x40038000
        STR      R4,[R1, #+0]
//   21   ftm_init_struct3.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        STRB     R0,[R1, #+4]
//   22   ftm_init_struct3.FTM_PwmFreq = 15000;	//PWM频率10000Hz
        MOVW     R0,#+15000
        STR      R0,[R1, #+8]
//   23   LPLD_FTM_Init(ftm_init_struct3);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   24   
//   25   
//   26 //右上正
//   27   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   28                       FTM_Ch0,   //使能Ch2通道 
//   29                       0,
//   30                       PTC1, //使用Ch1通道的PTC3引脚
//   31                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   32 //右上负
//   33   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   34                       FTM_Ch1,   //使能Ch3通道 
//   35                       0,
//   36                       PTC2, //使用Ch1通道的PTC4引脚
//   37                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   38 //左上负
//   39   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   40                       FTM_Ch2,   //使能Ch3通道 
//   41                       0,
//   42                       PTC3, //使用Ch1通道的PTC4引脚
//   43                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   44 //左上正
//   45   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   46                       FTM_Ch3,   //使能Ch3通道 
//   47                       0,
//   48                       PTC4, //使用Ch1通道的PTC4引脚
//   49                       ALIGN_LEFT);        //脉宽左对齐  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   50 //右下正
//   51   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   52                       FTM_Ch7,   //使能Ch2通道 
//   53                       0,
//   54                       PTD7, //使用Ch1通道的PTC3引脚
//   55                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   56 //右下负
//   57   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   58                       FTM_Ch6,   //使能Ch3通道 
//   59                       0,
//   60                       PTD6, //使用Ch1通道的PTC4引脚
//   61                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   62 //左下正
//   63   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   64                       FTM_Ch5,   //使能Ch3通道 
//   65                       0,
//   66                       PTD5, //使用Ch1通道的PTC4引脚
//   67                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   68 //左下反
//   69   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   70                       FTM_Ch4,   //使能Ch3通道 
//   71                       0,
//   72                       PTD4, //使用Ch1通道的PTC4引脚
//   73                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   74 }
        POP      {R0-R4,PC}       ;; return
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void init_PID()
//   77 {
init_PID:
        PUSH     {R4-R7}
//   78   PID.left_P = left_P;    
        LDR.N    R0,??DataTable2_2
        LDR.N    R1,??DataTable2_3
        LDRD     R2,R3,[R1, #+0]
        STRD     R2,R3,[R0, #+0]
//   79   PID.left_I = left_I;
        LDR.N    R2,??DataTable2_4
        LDRD     R4,R5,[R2, #+0]
        STRD     R4,R5,[R0, #+8]
//   80   PID.right_P = right_P;
        LDR.N    R3,??DataTable2_5
        LDRD     R4,R5,[R3, #+0]
        STRD     R4,R5,[R0, #+16]
//   81   PID.right_I = right_I;
        LDR.N    R4,??DataTable2_6
        LDRD     R6,R7,[R4, #+0]
        STRD     R6,R7,[R0, #+24]
//   82   PID.value_left = 0;   //实际
        MOVS     R5,#+0
        STR      R5,[R0, #+32]
//   83   PID.value_right = 0;
        MOVS     R5,#+0
        STR      R5,[R0, #+36]
//   84   PID.error_left = 0;   //误差
        MOVS     R5,#+0
        STR      R5,[R0, #+40]
//   85   PID.error_right = 0;
        MOVS     R5,#+0
        STR      R5,[R0, #+44]
//   86   PID.preerror_left = 0;   //上次误差
        MOVS     R5,#+0
        STR      R5,[R0, #+48]
//   87   PID.preerror_right = 0;
        MOVS     R5,#+0
        STR      R5,[R0, #+52]
//   88   PID.targetSpeed_L =  0;  //目标值_左
        MOVS     R5,#+0
        STR      R5,[R0, #+56]
//   89   PID.targetSpeed_R =  0;  //目标值_右
        MOVS     R5,#+0
        STR      R5,[R0, #+60]
//   90   PID.Speed_output_Left = 0;
        MOVS     R5,#+0
        STR      R5,[R0, #+64]
//   91   PID.Speed_output_Right = 0;
        MOVS     R5,#+0
        STR      R5,[R0, #+68]
//   92   PID.left_P = left_P;    
        LDRD     R6,R7,[R1, #+0]
        STRD     R6,R7,[R0, #+0]
//   93   PID.left_I = left_I;
        LDRD     R6,R7,[R2, #+0]
        STRD     R6,R7,[R0, #+8]
//   94   PID.right_P = right_P;
        LDRD     R2,R3,[R3, #+0]
        STRD     R2,R3,[R0, #+16]
//   95   PID.right_I = right_I;
        LDRD     R2,R3,[R4, #+0]
        STRD     R2,R3,[R0, #+24]
//   96   PID.value_left = 0;   //实际
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//   97   PID.value_right = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+36]
//   98   PID.error_left = 0;   //误差
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
//   99   PID.error_right = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
//  100   PID.preerror_left = 0;   //上次误差
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
//  101   PID.preerror_right = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+52]
//  102   PID.targetSpeed_L =  0;  //目标值_左
        MOVS     R1,#+0
        STR      R1,[R0, #+56]
//  103   PID.targetSpeed_R =  0;  //目标值_右
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
//  104   PID.Speed_output_Left = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+64]
//  105   PID.Speed_output_Right = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//  106 }
        POP      {R4-R7}
        BX       LR               ;; return
//  107 
//  108 /*void wheel_EDS(int speed)
//  109 {
//  110   float p = 0.68f;
//  111   float Kv = 0.0f;
//  112   int16 eds_val = 0;
//  113   if(Steering_PWM >= midpwm+10)//左拐/
//  114   { 
//  115     Kv=1.02+ (Steering_PWM - (midpwm+10)) * ( p / 100); 
//  116     eds_val = (int)(speed * (1-Kv) / (-Kv-1));
//  117     if(eds_val >= EDS_MAX )
//  118     { eds_val = EDS_MAX;}
//  119     else if(eds_val <= -EDS_MAX)
//  120     { eds_val = -EDS_MAX; }
//  121     PID.targetSpeed_R = speed + eds_val;
//  122     PID.targetSpeed_L = speed - eds_val;
//  123   }
//  124   else if(Steering_PWM <= midpwm-10)//右拐/
//  125   {
//  126     Kv=1.02 + ((midpwm-10) - Steering_PWM) * ( p / 100);
//  127     eds_val = (int)(speed * (1-Kv) / (-Kv-1));
//  128     if(eds_val >= EDS_MAX)
//  129     { eds_val = EDS_MAX;}
//  130     else if(eds_val <= -EDS_MAX)
//  131     { eds_val = -EDS_MAX; }
//  132     PID.targetSpeed_R  = speed - eds_val;
//  133     PID.targetSpeed_L  = speed + eds_val;
//  134   }
//  135   else
//  136   {
//  137     PID.targetSpeed_R  = speed ;
//  138     PID.targetSpeed_L  = speed ;
//  139   }
//  140 }*/
//  141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void Motor_control(void)
//  143 { 
Motor_control:
        PUSH     {R4-R6,R8,R9,LR}
//  144   PID.value_left = 10;//left_getSpeed();
        LDR.N    R6,??DataTable2_2
        MOVS     R0,#+10
        STR      R0,[R6, #+32]
//  145   PID.value_right = 10;//right_getSpeed();
        MOVS     R0,#+10
        STR      R0,[R6, #+36]
//  146   PID.error_left = PID.targetSpeed_L - PID.value_left;
        LDR      R1,[R6, #+56]
        LDR      R0,[R6, #+32]
        SUBS     R1,R1,R0
        STR      R1,[R6, #+40]
//  147   PID.error_right = PID.targetSpeed_R - PID.value_right;
        LDR      R1,[R6, #+60]
        LDR      R0,[R6, #+36]
        SUBS     R1,R1,R0
        STR      R1,[R6, #+44]
//  148   PID.Speed_output_Left += (PID.left_P * (PID.error_left - PID.preerror_left) +  PID.left_I  * PID.error_left);
        LDR      R0,[R6, #+64]
        BL       __aeabi_i2d
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[R6, #+40]
        LDR      R1,[R6, #+48]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+0]
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+40]
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+8]
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[R6, #+64]
//  149   PID.Speed_output_Right += (PID.right_P * (PID.error_right - PID.preerror_right) +  PID.right_I  * PID.error_right);
        LDR      R0,[R6, #+68]
        BL       __aeabi_i2d
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[R6, #+44]
        LDR      R1,[R6, #+52]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+16]
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+44]
        BL       __aeabi_i2d
        LDRD     R2,R3,[R6, #+24]
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[R6, #+68]
//  150   PID.preerror_left = PID.error_left;
        LDR      R0,[R6, #+40]
        STR      R0,[R6, #+48]
//  151   PID.preerror_right = PID.error_right;
        LDR      R0,[R6, #+44]
        STR      R0,[R6, #+52]
//  152  
//  153   
//  154   
//  155   
//  156   if(PID.Speed_output_Left >= 0) //左上正
        LDR      R0,[R6, #+64]
        CMP      R0,#+0
        BMI.N    ??Motor_control_0
//  157   { 
//  158     if(PID.Speed_output_Left >= MAX_SPEED) 
        MOVW     R0,#+9999
        LDR      R1,[R6, #+64]
        CMP      R1,R0
        BLT.N    ??Motor_control_1
//  159     {
//  160       PID.Speed_output_Left = MAX_SPEED;
        STR      R0,[R6, #+64]
//  161     }
//  162     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);   
??Motor_control_1:
        LDR.N    R4,??DataTable2_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  163     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  164     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, PID.Speed_output_Left);
        LDR      R2,[R6, #+64]
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  165     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0 );  
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  166     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, PID.Speed_output_Left );
        LDR      R2,[R6, #+64]
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  167     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, PID.Speed_output_Left);
        LDR      R2,[R6, #+64]
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  168     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  169     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, PID.Speed_output_Left );
        LDR      R2,[R6, #+64]
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_control_2
//  170  
//  171   }
//  172   else if(PID.Speed_output_Left < 0) //左上负
??Motor_control_0:
        LDR      R0,[R6, #+64]
        CMP      R0,#+0
        BPL.N    ??Motor_control_2
//  173   { 
//  174     if(PID.Speed_output_Left <= -MAX_SPEED) 
        LDR      R0,[R6, #+64]
        LDR.N    R1,??DataTable2_7  ;; 0xffffd8f2
        CMP      R0,R1
        BGE.N    ??Motor_control_3
//  175     {
//  176       PID.Speed_output_Left = -MAX_SPEED;
        LDR.N    R0,??DataTable2_8  ;; 0xffffd8f1
        STR      R0,[R6, #+64]
//  177     }
//  178     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
??Motor_control_3:
        LDR.N    R4,??DataTable2_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  179     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  180     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, -PID.Speed_output_Left);  
        LDR      R2,[R6, #+64]
        RSBS     R2,R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  181     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  182     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, -PID.Speed_output_Left );  
        LDR      R2,[R6, #+64]
        RSBS     R2,R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  183     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, -PID.Speed_output_Left);  
        LDR      R2,[R6, #+64]
        RSBS     R2,R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  184     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  185     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, -PID.Speed_output_Left );    
        LDR      R2,[R6, #+64]
        RSBS     R2,R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  186   }
//  187   
//  188   
//  189 }
??Motor_control_2:
        POP      {R4-R6,R8,R9,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     ftm_init_struct3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     PID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     left_P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     left_I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     right_P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DATA32
        DC32     right_I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DATA32
        DC32     0xffffd8f2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DATA32
        DC32     0xffffd8f1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  190 
//  191   
//  192 
// 
// 100 bytes in section .bss
//  42 bytes in section .data
// 748 bytes in section .text
// 
// 748 bytes of CODE memory
// 142 bytes of DATA memory
//
//Errors: none
//Warnings: 2
