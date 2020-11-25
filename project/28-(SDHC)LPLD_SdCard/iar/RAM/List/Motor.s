///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:19
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Motor.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW4220.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Motor.c -D
//        LPLD_K60 -lCN
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\Motor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN KD
        EXTERN KP
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN Move_Z
        EXTERN `P1`
        EXTERN `P2`
        EXTERN `P3`
        EXTERN `P4`
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4

        PUBLIC D
        PUBLIC Dir_Pid
        PUBLIC EDS_MAX
        PUBLIC I
        PUBLIC Motor_control
        PUBLIC Move_y
        PUBLIC P
        PUBLIC PID
        PUBLIC PID_Control
        PUBLIC SpeedHigh
        PUBLIC SpeedLow
        PUBLIC ftm_init_struct3
        PUBLIC init_Motor
        PUBLIC lun_Pid
        PUBLIC pid_err
        PUBLIC pid_last_err
        PUBLIC pid_last_last_err
        PUBLIC pid_out
        PUBLIC pid_result

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Motor.c
//    1 #include "include.h"
//    2 
//    3 #define MAX_SPEED 3000
//    4 #define MAX_SPEED_L -3000
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//    6 Motor PID;
PID:
        DS8 144

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 FTM_InitTypeDef ftm_init_struct3;
ftm_init_struct3:
        DS8 28
//    8 
//    9 extern _pid_t pid_left_front;     /*结构体 左前轮PID参数*/
//   10 extern _pid_t pid_right_front;		/*结构体 右前轮PID参数*/
//   11 extern _pid_t pid_left_rear;			/*结构体 左后轮PID参数*/
//   12 extern _pid_t pid_right_rear;			/*结构体 右后轮PID参数*/
//   13 
//   14 extern s16 Move_Z ; 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   15 s16 Move_y;
Move_y:
        DS8 2
//   16 extern s16 KP ;  //方向环的PD
//   17 extern s16 KD ;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   18 float P = 3.0f;//90;  
P:
        DATA32
        DC32 40400000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 float I = 0.0f;//22;
I:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 float D = 0.0f;//30;
D:
        DS8 4
//   21 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   22 int SpeedHigh = 60;
SpeedHigh:
        DATA32
        DC32 60

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   23 int SpeedLow = 35;
SpeedLow:
        DATA32
        DC32 35

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   24 int16 EDS_MAX = 10;
EDS_MAX:
        DATA16
        DC16 10
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void init_Motor()
//   27 {
init_Motor:
        PUSH     {R0-R4,LR}
//   28   ftm_init_struct3.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.N    R1,??DataTable4
        LDR.N    R4,??DataTable4_1  ;; 0x40038000
        STR      R4,[R1, #+0]
//   29   ftm_init_struct3.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        STRB     R0,[R1, #+4]
//   30   ftm_init_struct3.FTM_PwmFreq = 15000;	//PWM频率10000Hz
        MOVW     R0,#+15000
        STR      R0,[R1, #+8]
//   31   LPLD_FTM_Init(ftm_init_struct3);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   32   
//   33   
//   34 //右上正
//   35   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   36                       FTM_Ch0,   //使能Ch2通道 
//   37                       0,
//   38                       PTC1, //使用Ch1通道的PTC3引脚
//   39                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   40 //右上负
//   41   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   42                       FTM_Ch1,   //使能Ch3通道 
//   43                       0,
//   44                       PTC2, //使用Ch1通道的PTC4引脚
//   45                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   46 //左上负
//   47   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   48                       FTM_Ch2,   //使能Ch3通道 
//   49                       0,
//   50                       PTC3, //使用Ch1通道的PTC4引脚
//   51                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   52 //左上正
//   53   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   54                       FTM_Ch3,   //使能Ch3通道 
//   55                       0,
//   56                       PTC4, //使用Ch1通道的PTC4引脚
//   57                       ALIGN_LEFT);        //脉宽左对齐  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   58 //右下正
//   59   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   60                       FTM_Ch7,   //使能Ch2通道 
//   61                       0,
//   62                       PTD7, //使用Ch1通道的PTC3引脚
//   63                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   64 //右下负
//   65   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   66                       FTM_Ch6,   //使能Ch3通道 
//   67                       0,
//   68                       PTD6, //使用Ch1通道的PTC4引脚
//   69                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   70 //左下正
//   71   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   72                       FTM_Ch5,   //使能Ch3通道 
//   73                       0,
//   74                       PTD5, //使用Ch1通道的PTC4引脚
//   75                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   76 //左下反
//   77   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   78                       FTM_Ch4,   //使能Ch3通道 
//   79                       0,
//   80                       PTD4, //使用Ch1通道的PTC4引脚
//   81                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   82 }
        POP      {R0-R4,PC}       ;; return
//   83 
//   84 //void init_PID()
//   85 //{	
//   86 //	pid_left_front.kp=P;
//   87 //	pid_left_front.ki=I;
//   88 //	pid_left_front.kd=D;
//   89 //	
//   90 //	pid_right_front.kp=P;
//   91 //	pid_right_front.ki=I;
//   92 //	pid_right_front.kd=D;
//   93 //	
//   94 //	pid_left_rear.kp=P;
//   95 //	pid_left_rear.ki=I;
//   96 //	pid_left_rear.kd=D;
//   97 //	
//   98 //	pid_right_rear.kp=P;
//   99 //	pid_right_rear.ki=I;
//  100 //	pid_right_rear.kd=D;
//  101 	
//  102 //	pid_left_front.err=0;
//  103 //	pid_left_front.last_err=0;
//  104 //	pid_left_front.last_last_err=0;
//  105 //	pid_left_front.result=0;
//  106 //	
//  107 //	pid_right_front.err=0;
//  108 //	pid_right_front.last_err=0;
//  109 //	pid_right_front.last_last_err=0;
//  110 //	pid_right_front.result=0;
//  111 //	
//  112 //	
//  113 //	pid_left_rear.err=0;
//  114 //	pid_left_rear.last_err=0;
//  115 //	pid_left_rear.last_last_err=0;
//  116 //	pid_left_rear.result=0;
//  117 //	
//  118 //	pid_right_rear.err=0;
//  119 //	pid_right_rear.last_err=0;
//  120 //	pid_right_rear.last_last_err=0;
//  121 //	pid_right_rear.result=0;
//  122 	
//  123 //}
//  124 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 void Motor_control(void)
//  126 {   
Motor_control:
        PUSH     {R3-R5,LR}
//  127   if(P1 >= 0) //左上正
        LDR.N    R4,??DataTable4_2
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BMI.N    ??Motor_control_0
//  128   { 
//  129     if(P1 >= MAX_SPEED) 
        MOVW     R0,#+3000
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BLT.N    ??Motor_control_1
//  130     {      
//  131       P1 = MAX_SPEED;
        STR      R0,[R4, #+0]
//  132     }   
//  133     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
??Motor_control_1:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  134     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,P1 ); 
        LDR      R2,[R4, #+0]
        MOVS     R1,#+3
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_control_2
//  135   }
//  136   else //左上负
//  137   { 
//  138     if(P1 <= MAX_SPEED_L) 
??Motor_control_0:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable4_3  ;; 0xfffff449
        CMP      R0,R1
        BGE.N    ??Motor_control_3
//  139     {      
//  140       P1 = MAX_SPEED_L;
        LDR.N    R0,??DataTable4_4  ;; 0xfffff448
        STR      R0,[R4, #+0]
//  141     }   
//  142     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, -P1);
??Motor_control_3:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        LDR      R2,[R4, #+0]
        RSBS     R2,R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  143     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  144   }
//  145   
//  146   
//  147   if(P2 >= 0) //右上正
??Motor_control_2:
        LDR.N    R4,??DataTable4_5
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BMI.N    ??Motor_control_4
//  148   { 
//  149     if(P2 >= MAX_SPEED) 
        MOVW     R0,#+3000
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BLT.N    ??Motor_control_5
//  150     {
//  151       P2 = MAX_SPEED;
        STR      R0,[R4, #+0]
//  152     }
//  153     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);   
??Motor_control_5:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  154     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  P2);
        LDR      R2,[R4, #+0]
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_control_6
//  155  
//  156   }
//  157   else //右上fan
//  158   { 
//  159     if(P2 <= MAX_SPEED_L) 
??Motor_control_4:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable4_3  ;; 0xfffff449
        CMP      R0,R1
        BGE.N    ??Motor_control_7
//  160     {
//  161       P2 = MAX_SPEED_L;
        LDR.N    R0,??DataTable4_4  ;; 0xfffff448
        STR      R0,[R4, #+0]
//  162     }
//  163     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, -P2 );   
??Motor_control_7:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        LDR      R2,[R4, #+0]
        RSBS     R2,R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  164     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  165  
//  166   }
//  167 
//  168   
//  169   if(P4 >= 0) //右下正
??Motor_control_6:
        LDR.N    R4,??DataTable4_6
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BMI.N    ??Motor_control_8
//  170   { 
//  171     if(P4 >= MAX_SPEED) 
        MOVW     R0,#+3000
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BLT.N    ??Motor_control_9
//  172     {
//  173       P4 = MAX_SPEED;
        STR      R0,[R4, #+0]
//  174     }
//  175     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, P4);  
??Motor_control_9:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        LDR      R2,[R4, #+0]
        MOVS     R1,#+6
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  176     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_control_10
//  177  
//  178   }
//  179   else
//  180   { 
//  181     if(P4 <= MAX_SPEED_L) 
??Motor_control_8:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable4_3  ;; 0xfffff449
        CMP      R0,R1
        BGE.N    ??Motor_control_11
//  182     {
//  183       P4 = MAX_SPEED_L;
        LDR.N    R0,??DataTable4_4  ;; 0xfffff448
        STR      R0,[R4, #+0]
//  184     }
//  185     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6,  0);  
??Motor_control_11:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  186     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, -P4 );
        LDR      R2,[R4, #+0]
        RSBS     R2,R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  187  
//  188   }
//  189 
//  190   
//  191     if(P3 >= 0) //左下正
??Motor_control_10:
        LDR.N    R4,??DataTable4_7
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BMI.N    ??Motor_control_12
//  192   { 
//  193     if(P3 >= MAX_SPEED) 
        MOVW     R0,#+3000
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BLT.N    ??Motor_control_13
//  194     {
//  195      P3 = MAX_SPEED;
        STR      R0,[R4, #+0]
//  196     }
//  197     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,P3 );
??Motor_control_13:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        LDR      R2,[R4, #+0]
        MOVS     R1,#+5
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  198     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_control_14
//  199  
//  200   }
//  201   else
//  202   { 
//  203     if(P3 <= MAX_SPEED_L) 
??Motor_control_12:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable4_3  ;; 0xfffff449
        CMP      R0,R1
        BGE.N    ??Motor_control_15
//  204     {
//  205       P3 = MAX_SPEED_L;
        LDR.N    R0,??DataTable4_4  ;; 0xfffff448
        STR      R0,[R4, #+0]
//  206     }
//  207     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,0);
??Motor_control_15:
        LDR.N    R5,??DataTable4_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  208     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4,  -P3);
        LDR      R2,[R4, #+0]
        RSBS     R2,R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R5
        BL       LPLD_FTM_PWM_ChangeDuty
//  209  
//  210   }
//  211 }
??Motor_control_14:
        POP      {R0,R4,R5,PC}    ;; return
//  212 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  213 float pid_err = 0;
pid_err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  214 float pid_last_err = 0;
pid_last_err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  215 float pid_result = 0;
pid_result:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  216 float pid_last_last_err = 0;
pid_last_last_err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  217 float pid_out;
pid_out:
        DS8 4
//  218 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  219 float PID_Control(s16 actual, float set)
//  220 {
PID_Control:
        PUSH     {R4-R8,LR}
        MOVS     R5,R1
//  221 	float sp = 0, si = 0;// d = 0;
        MOVS     R1,#+0
        MOVS     R1,#+0
//  222 	pid_err = (float)(set - actual); //-25
        LDR.N    R4,??DataTable4_8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//  223 	sp = pid_err - pid_last_err;//-25
        LDR.N    R5,??DataTable4_9
        LDR      R0,[R4, #+0]
        LDR      R1,[R5, #+0]
        BL       __aeabi_fsub
        MOVS     R1,R0
//  224 	si = pid_err;//-25
        LDR      R7,[R4, #+0]
//  225 	//d = pid_err - 2 * pid_last_err + pid_last_last_err;//-25
//  226 	pid_result = pid_result+ P * sp +I * si ;//+ pid->kd * d;
        LDR.N    R6,??DataTable4_10
        LDR.N    R0,??DataTable4_11
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR      R1,[R6, #+0]
        BL       __aeabi_fadd
        MOV      R8,R0
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R1,R8
        BL       __aeabi_fadd
        STR      R0,[R6, #+0]
//  227 	pid_out = pid_result;
        LDR.N    R2,??DataTable4_13
        LDR      R0,[R6, #+0]
        STR      R0,[R2, #+0]
//  228         if(pid_out>3000)
        LDR      R0,[R2, #+0]
        LDR.N    R1,??DataTable4_14  ;; 0x453b8001
        BL       __aeabi_cfrcmple
        BHI.N    ??PID_Control_0
//  229 		pid_out= 3000;
        LDR.N    R0,??DataTable4_15  ;; 0x453b8000
        STR      R0,[R2, #+0]
        B.N      ??PID_Control_1
//  230 	else if(pid_out<-3000)
??PID_Control_0:
        LDR.N    R1,??DataTable4_16  ;; 0xc53b8000
        LDR      R0,[R2, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??PID_Control_1
//  231 		pid_out = -3000;
        STR      R1,[R2, #+0]
//  232 	pid_last_last_err = pid_last_err;
??PID_Control_1:
        LDR      R0,[R5, #+0]
        LDR.N    R1,??DataTable4_17
        STR      R0,[R1, #+0]
//  233 	pid_last_err = pid_err;
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+0]
//  234         return(pid_out);
        LDR      R0,[R2, #+0]
        POP      {R4-R8,PC}       ;; return
//  235 }
//  236 
//  237 //方向环
//  238 //P=24   D=35

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  239 s16 Dir_Pid(s16 midpoint,s16 error_act)
//  240 {
Dir_Pid:
        PUSH     {R4,R5}
//  241 	s16 midpoint_err =0;  //距离中线的误差
        MOVS     R2,#+0
//  242 	s16 lastpoint_err =0; //上次误差
        MOVS     R2,#+0
//  243 	midpoint_err = midpoint - error_act;
        SUBS     R0,R0,R1
//  244 	Move_Z = KP*midpoint_err + KD*(midpoint_err - lastpoint_err);
        LDR.N    R1,??DataTable4_18
        LDR.N    R3,??DataTable4_19
        LDRSH    R3,[R3, #+0]
        SMULBB   R3,R3,R0
        LDR.N    R4,??DataTable4_20
        LDRSH    R4,[R4, #+0]
        MOVS     R5,R0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SUBS     R2,R5,R2
        MLA      R2,R2,R4,R3
        STRH     R2,[R1, #+0]
//  245 	lastpoint_err = midpoint_err ;
//  246 	if(Move_Z >= 1500)
        MOVW     R0,#+1500
        LDRSH    R2,[R1, #+0]
        CMP      R2,R0
        BLT.N    ??Dir_Pid_0
//  247 		Move_Z = 1500;
        STRH     R0,[R1, #+0]
        B.N      ??Dir_Pid_1
//  248 	else if(Move_Z <= -1500)
??Dir_Pid_0:
        LDRSH    R0,[R1, #+0]
        LDR.N    R2,??DataTable4_21  ;; 0xfffffa25
        CMP      R0,R2
        BGE.N    ??Dir_Pid_1
//  249 		Move_Z = -1500;
        LDR.N    R0,??DataTable4_22  ;; 0xfffffa24
        STRH     R0,[R1, #+0]
//  250 	return Move_Z;
??Dir_Pid_1:
        LDRSH    R0,[R1, #+0]
        POP      {R4,R5}
        BX       LR               ;; return
//  251 
//  252 }
//  253 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 s16 lun_Pid(s16 midpoint_lun,s16 error_lun)
//  255 {
lun_Pid:
        PUSH     {R4,R5}
//  256 	s16 midpoint_err1 =0;  //距离中线的误差
        MOVS     R2,#+0
//  257 	s16 lastpoint_err1 =0; //上次误差
        MOVS     R2,#+0
//  258 	midpoint_err1 = midpoint_lun - error_lun;
        SUBS     R0,R0,R1
//  259 	Move_y = KP*midpoint_err1 + KD*(midpoint_err1 - lastpoint_err1);
        LDR.N    R1,??DataTable4_23
        LDR.N    R3,??DataTable4_19
        LDRSH    R3,[R3, #+0]
        SMULBB   R3,R3,R0
        LDR.N    R4,??DataTable4_20
        LDRSH    R4,[R4, #+0]
        MOVS     R5,R0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SUBS     R2,R5,R2
        MLA      R2,R2,R4,R3
        STRH     R2,[R1, #+0]
//  260 	lastpoint_err1 = midpoint_err1 ;
//  261 	if(Move_y >= 1500)
        MOVW     R0,#+1500
        LDRSH    R2,[R1, #+0]
        CMP      R2,R0
        BLT.N    ??lun_Pid_0
//  262 		Move_y = 1500;
        STRH     R0,[R1, #+0]
        B.N      ??lun_Pid_1
//  263 	else if(Move_y <= -1500)
??lun_Pid_0:
        LDRSH    R0,[R1, #+0]
        LDR.N    R2,??DataTable4_21  ;; 0xfffffa25
        CMP      R0,R2
        BGE.N    ??lun_Pid_1
//  264 		Move_y = -1500;
        LDR.N    R0,??DataTable4_22  ;; 0xfffffa24
        STRH     R0,[R1, #+0]
//  265 	return Move_y;
??lun_Pid_1:
        LDRSH    R0,[R1, #+0]
        POP      {R4,R5}
        BX       LR               ;; return
//  266 
//  267 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DATA32
        DC32     ftm_init_struct3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DATA32
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DATA32
        DC32     `P1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DATA32
        DC32     0xfffff449

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DATA32
        DC32     0xfffff448

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DATA32
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DATA32
        DC32     `P4`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DATA32
        DC32     `P3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DATA32
        DC32     pid_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DATA32
        DC32     pid_last_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DATA32
        DC32     pid_result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DATA32
        DC32     P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DATA32
        DC32     I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DATA32
        DC32     pid_out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DATA32
        DC32     0x453b8001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DATA32
        DC32     0x453b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DATA32
        DC32     0xc53b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DATA32
        DC32     pid_last_last_err

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DATA32
        DC32     Move_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DATA32
        DC32     KP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DATA32
        DC32     KD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DATA32
        DC32     0xfffffa25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DATA32
        DC32     0xfffffa24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DATA32
        DC32     Move_y

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 202 bytes in section .bss
//  14 bytes in section .data
// 868 bytes in section .text
// 
// 868 bytes of CODE memory
// 216 bytes of DATA memory
//
//Errors: none
//Warnings: none
