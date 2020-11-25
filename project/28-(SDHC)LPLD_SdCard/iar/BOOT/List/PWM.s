///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:51
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\Jay\PWM.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW4D1D.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\Jay\PWM.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\PWM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN get_img_error
        EXTERN get_left_speed
        EXTERN get_right_speed
        EXTERN isStop
        EXTERN speed_update

        PUBLIC CarModel
        PUBLIC Motor_Init
        PUBLIC angle
        PUBLIC angleMax
        PUBLIC angleMid
        PUBLIC angleMin
        PUBLIC angle_update
        PUBLIC ftm_pwm_init_struct
        PUBLIC img_error
        PUBLIC speed_out
        PUBLIC steer_d
        PUBLIC steer_p

// G:\AIcar\@@\k60_144\smartcar\lib\Jay\PWM.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    9 uint8 CarModel = 0;
CarModel:
        DS8 1
//   10 //FTM_InitTypeDef steering_init_struct;

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   11 int16 angleMid;
angleMid:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   12 int16 angleMax;
angleMax:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   13 int16 angleMin;  
angleMin:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   14 int16 angle;
angle:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   15 int16 img_error = 0;
img_error:
        DS8 2
//   16 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   17 float steer_p = 2.01f;
steer_p:
        DATA32
        DC32 4000A3D7H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   18 float steer_d = 3.81f;
steer_d:
        DATA32
        DC32 4073D70AH
//   19 
//   20 /*void SteeringGear_Init(void)//舵机
//   21 {
//   22 #if plateNumber == 0
//   23   steer_p = 2.15f;
//   24   steer_d = 4.21f;
//   25   angleMid = 902;
//   26   angleMax = 902 + 120;
//   27   angleMin = 902 - 120;
//   28 #elif plateNumber == 1
//   29   steer_p = 2.15f;
//   30   steer_d = 3.51f;
//   31   angleMid = 1317;
//   32   angleMax = 1317 + 120;
//   33   angleMin = 1317 - 120;
//   34 #else
//   35   steer_p = 2.01f;
//   36   steer_d = 3.51f;
//   37   angleMid = 1010;
//   38   angleMax = 1010 + 120;
//   39   angleMin = 1010 - 120;
//   40 #endif
//   41   angle = angleMid;
//   42   //steering_init_struct.FTM_Ftmx = FTM2;	
//   43   steering_init_struct.FTM_Mode = FTM_MODE_PWM;	
//   44   steering_init_struct.FTM_PwmFreq = 75;
//   45   
//   46   LPLD_FTM_Init(steering_init_struct);
//   47   
//   48   LPLD_FTM_PWM_Enable(FTM2, 
//   49                       FTM_Ch0, 
//   50                       angleMid,  
//   51                       PTB18, 
//   52                       ALIGN_LEFT);
//   53 }*/
//   54 
//   55 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   56 FTM_InitTypeDef ftm_pwm_init_struct;
ftm_pwm_init_struct:
        DS8 28

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void Motor_Init(void)//电机
//   58 {
Motor_Init:
        PUSH     {R0-R4,LR}
//   59   ftm_pwm_init_struct.FTM_Ftmx = FTM0;
        LDR.N    R1,??DataTable2
        LDR.N    R4,??DataTable2_1  ;; 0x40038000
        STR      R4,[R1, #+0]
//   60   ftm_pwm_init_struct.FTM_Mode = FTM_MODE_PWM;
        MOVS     R0,#+1
        STRB     R0,[R1, #+4]
//   61   ftm_pwm_init_struct.FTM_PwmFreq = 10000;
        MOVW     R0,#+10000
        STR      R0,[R1, #+8]
//   62   LPLD_FTM_Init(ftm_pwm_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   63 
//   64 //右上正
//   65   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   66                       FTM_Ch0,   //使能Ch2通道 
//   67                       0,
//   68                       PTC1, //使用Ch1通道的PTC3引脚
//   69                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   70 //右上反
//   71   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   72                       FTM_Ch1,   //使能Ch3通道 
//   73                       0,
//   74                       PTC2, //使用Ch1通道的PTC4引脚
//   75                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   76 //左上反
//   77   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   78                       FTM_Ch2,   //使能Ch3通道 
//   79                       0,
//   80                       PTC3, //使用Ch1通道的PTC4引脚
//   81                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   82 //左上正
//   83   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   84                       FTM_Ch3,   //使能Ch3通道 
//   85                       0,
//   86                       PTC4, //使用Ch1通道的PTC4引脚
//   87                       ALIGN_LEFT);        //脉宽左对齐  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   88 //右下正
//   89   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   90                       FTM_Ch4,   //使能Ch2通道 
//   91                       0,
//   92                       PTD7, //使用Ch1通道的PTC3引脚
//   93                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   94 //右下反
//   95   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   96                       FTM_Ch5,   //使能Ch3通道 
//   97                       0,
//   98                       PTD6, //使用Ch1通道的PTC4引脚
//   99                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//  100 //左下反
//  101   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//  102                       FTM_Ch6,   //使能Ch3通道 
//  103                       0,
//  104                       PTD5, //使用Ch1通道的PTC4引脚
//  105                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//  106 //左下正
//  107   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//  108                       FTM_Ch7,   //使能Ch3通道 
//  109                       0,
//  110                       PTD4, //使用Ch1通道的PTC4引脚
//  111                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//  112   
//  113 }
        POP      {R0-R4,PC}       ;; return
//  114 
//  115 //舵机控制 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void angle_update(void)
//  117 {
angle_update:
        PUSH     {R3-R7,LR}
//  118   static int16 preerror = 0;
//  119   
//  120   img_error = get_img_error();
        LDR.N    R4,??DataTable2_2
        BL       get_img_error
        STRH     R0,[R4, #+0]
//  121   
//  122   angle = (int16)((img_error * steer_p) + (steer_d * (img_error - preerror)) + angleMid);
        LDR.N    R5,??DataTable2_3
        LDR.N    R6,??DataTable2_4
        LDRSH    R0,[R4, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDRSH    R0,[R4, #+0]
        LDRSH    R1,[R6, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R7
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        STRH     R0,[R5, #+0]
//  123   
//  124   if(angle >= angleMax) angle = angleMax;
        LDR.N    R0,??DataTable2_8
        LDRSH    R1,[R5, #+0]
        LDRSH    R2,[R0, #+0]
        CMP      R1,R2
        BLT.N    ??angle_update_0
        LDRH     R0,[R0, #+0]
        STRH     R0,[R5, #+0]
//  125   if(angle <= angleMin) angle = angleMin;
??angle_update_0:
        LDR.N    R0,??DataTable2_9
        LDRSH    R1,[R0, #+0]
        LDRSH    R2,[R5, #+0]
        CMP      R1,R2
        BLT.N    ??angle_update_1
        LDRH     R0,[R0, #+0]
        STRH     R0,[R5, #+0]
//  126   
//  127   LPLD_FTM_PWM_ChangeDuty(FTM2,FTM_Ch0,angle);
??angle_update_1:
        LDRSH    R2,[R5, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_10  ;; 0x400b8000
        BL       LPLD_FTM_PWM_ChangeDuty
//  128   
//  129   preerror = img_error;//保留上一次误差值
        LDRH     R0,[R4, #+0]
        STRH     R0,[R6, #+0]
//  130 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`angle_update::preerror`:
        DS8 2
//  131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void speed_out(void)
//  133 {
speed_out:
        PUSH     {R4,LR}
//  134   int16 outVal_Ch0 = 0,outVal_Ch3 = 0;
        MOVS     R0,#+0
        MOVS     R0,#+0
//  135   speed_update();
        BL       speed_update
//  136   outVal_Ch3 = get_left_speed();
        BL       get_left_speed
        MOVS     R4,R0
//  137   outVal_Ch0 = get_right_speed();
        BL       get_right_speed
//  138   
//  139   if(Run_Init == isStop)
        LDR.N    R1,??DataTable2_11
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??speed_out_0
//  140   {
//  141     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch0,0);
        LDR.N    R4,??DataTable2_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  142     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  143     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  144     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch2,0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??speed_out_1
//  145   }
//  146   else
//  147   {
//  148     if(outVal_Ch0 >= 0)
??speed_out_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BMI.N    ??speed_out_2
//  149     { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch0,(uint32)outVal_Ch0); }
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??speed_out_3
//  150     else
//  151     { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,(uint32)(-outVal_Ch0)); }
??speed_out_2:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        RSBS     R0,R0,#+0
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  152     if(outVal_Ch3 >= 0)
??speed_out_3:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BMI.N    ??speed_out_4
//  153     { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch3,(uint32)outVal_Ch3); }
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R2,R4
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??speed_out_1
//  154     else
//  155     { LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch2,(uint32)(-outVal_Ch3)); }
??speed_out_4:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        RSBS     R4,R4,#+0
        MOVS     R2,R4
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_1  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  156   }
//  157 }
??speed_out_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     ftm_pwm_init_struct

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
        DC32     img_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     `angle_update::preerror`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     steer_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DATA32
        DC32     steer_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DATA32
        DC32     angleMid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DATA32
        DC32     angleMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DATA32
        DC32     angleMin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DATA32
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DATA32
        DC32     isStop

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  41 bytes in section .bss
//   8 bytes in section .data
// 496 bytes in section .text
// 
// 496 bytes of CODE memory
//  49 bytes of DATA memory
//
//Errors: none
//Warnings: 5
