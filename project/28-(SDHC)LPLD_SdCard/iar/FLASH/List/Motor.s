///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:40:59
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\Motor.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW7182.tmp
//        (G:\AIcar\@@\xiugai\lib\common\Motor.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\Motor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN `P1`
        EXTERN `P2`
        EXTERN `P3`
        EXTERN `P4`
        EXTERN __aeabi_memcpy4
        EXTERN back

        PUBLIC EDS_MAX
        PUBLIC Motor_control
        PUBLIC SpeedHigh
        PUBLIC SpeedLow
        PUBLIC ftm_init_struct3
        PUBLIC init_Motor

// G:\AIcar\@@\xiugai\lib\common\Motor.c
//    1 #include "include.h"
//    2 
//    3 #define MAX_SPEED 5000
//    4 #define MAX_SPEED_L -5000
//    5 
//    6 //Motor PID;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 FTM_InitTypeDef ftm_init_struct3;
ftm_init_struct3:
        DS8 28
//    8 
//    9 
//   10 
//   11 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   12 int SpeedHigh = 60;
SpeedHigh:
        DATA32
        DC32 60

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   13 int SpeedLow = 35;
SpeedLow:
        DATA32
        DC32 35

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   14 int16 EDS_MAX = 10;
EDS_MAX:
        DATA16
        DC16 10
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void init_Motor()
//   17 {
init_Motor:
        PUSH     {R0-R4,LR}
//   18   ftm_init_struct3.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.N    R1,??DataTable1
        LDR.N    R4,??DataTable1_1  ;; 0x40038000
        STR      R4,[R1, #+0]
//   19   ftm_init_struct3.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        STRB     R0,[R1, #+4]
//   20   ftm_init_struct3.FTM_PwmFreq = 15000;	//PWM频率10000Hz
        MOVW     R0,#+15000
        STR      R0,[R1, #+8]
//   21   LPLD_FTM_Init(ftm_init_struct3);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   22   
//   23   
//   24 //右上正
//   25   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   26                       FTM_Ch0,   //使能Ch2通道 
//   27                       0,
//   28                       PTC1, //使用Ch1通道的PTC3引脚
//   29                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   30 //右上负
//   31   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   32                       FTM_Ch1,   //使能Ch3通道 
//   33                       0,
//   34                       PTC2, //使用Ch1通道的PTC4引脚
//   35                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   36 //左上负
//   37   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   38                       FTM_Ch2,   //使能Ch3通道 
//   39                       0,
//   40                       PTC3, //使用Ch1通道的PTC4引脚
//   41                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   42 //左上正
//   43   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   44                       FTM_Ch3,   //使能Ch3通道 
//   45                       0,
//   46                       PTC4, //使用Ch1通道的PTC4引脚
//   47                       ALIGN_LEFT);        //脉宽左对齐  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   48 //右下正
//   49   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   50                       FTM_Ch7,   //使能Ch2通道 
//   51                       0,
//   52                       PTD7, //使用Ch1通道的PTC3引脚
//   53                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+99
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   54 //右下负
//   55   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   56                       FTM_Ch6,   //使能Ch3通道 
//   57                       0,
//   58                       PTD6, //使用Ch1通道的PTC4引脚
//   59                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+98
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   60 //左下正
//   61   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   62                       FTM_Ch5,   //使能Ch3通道 
//   63                       0,
//   64                       PTD5, //使用Ch1通道的PTC4引脚
//   65                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   66 //左下反
//   67   LPLD_FTM_PWM_Enable(FTM0,//使用FTM0
//   68                       FTM_Ch4,   //使能Ch3通道 
//   69                       0,
//   70                       PTD4, //使用Ch1通道的PTC4引脚
//   71                       ALIGN_LEFT);        //脉宽左对齐
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_Enable
//   72 }
        POP      {R0-R4,PC}       ;; return
//   73 
//   74 
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void Motor_control(void)
//   77 {   
Motor_control:
        PUSH     {R3-R5,LR}
//   78 //  if(P1 >= 0) //左上正
//   79 //  { 
//   80 //    if(P1 >= MAX_SPEED) 
//   81 //    {      
//   82 //      P1 = MAX_SPEED;
//   83 //    }   
//   84 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);
//   85 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,P1 );
//   86 //  }
//   87 //  else //左上负
//   88 //  { 
//   89 //    if(P1 <= MAX_SPEED_L) 
//   90 //    {      
//   91 //      P1 = MAX_SPEED_L;
//   92 //    }   
//   93 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, -P1);
//   94 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0); 
//   95 //  }
//   96 //  
//   97 //  
//   98 //  if(P2 >= 0) //右上正
//   99 //  { 
//  100 //    if(P2 >= MAX_SPEED) 
//  101 //    {
//  102 //      P2 = MAX_SPEED;
//  103 //    }
//  104 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);   
//  105 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  P2);
//  106 // 
//  107 //  }
//  108 //  else //右上fan
//  109 //  { 
//  110 //    if(P2 <= MAX_SPEED_L) 
//  111 //    {
//  112 //      P2 = MAX_SPEED_L;
//  113 //    }
//  114 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, -P2 );   
//  115 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
//  116 // 
//  117 //  }
//  118 //
//  119 //  
//  120 //  if(P4 >= 0) //右下正
//  121 //  { 
//  122 //    if(P4 >= MAX_SPEED) 
//  123 //    {
//  124 //      P4 = MAX_SPEED;
//  125 //    }
//  126 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, P4);  
//  127 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
//  128 // 
//  129 //  }
//  130 //  else
//  131 //  { 
//  132 //    if(P4 <= MAX_SPEED_L) 
//  133 //    {
//  134 //      P4 = MAX_SPEED_L;
//  135 //    }
//  136 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6,  0);  
//  137 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, -P4 );
//  138 // 
//  139 //  }
//  140 //
//  141 //  
//  142 //    if(P3 >= 0) //左下正
//  143 //  { 
//  144 //    if(P3 >= MAX_SPEED) 
//  145 //    {
//  146 //     P3 = MAX_SPEED;
//  147 //    }
//  148 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4,P3 );
//  149 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5, 0);
//  150 // 
//  151 //  }
//  152 //  else
//  153 //  { 
//  154 //    if(P3 <= MAX_SPEED_L) 
//  155 //    {
//  156 //      P3 = MAX_SPEED_L;
//  157 //    }
//  158 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4,0);
//  159 //    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,  -P3);
//  160 // 
//  161 //  }
//  162   if(back==1)
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Motor_control_0
//  163   {
//  164     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,3000 );//zuo
        LDR.N    R4,??DataTable1_1  ;; 0x40038000
        MOVW     R5,#+3000
        MOVS     R2,R5
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  165     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  166     
//  167     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0);  
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  168     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 3000);
        MOVS     R2,R5
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  169    
//  170     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 3000); 
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  171     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  172     
//  173     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  174     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,3000); 
        MOVS     R2,R5
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??Motor_control_1
//  175   }
//  176   else
//  177   {
//  178     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,0 );//zuo
??Motor_control_0:
        LDR.N    R4,??DataTable1_1  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  179     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, P1);
        LDR.N    R0,??DataTable1_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  180     
//  181     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, P2);  
        LDR.N    R0,??DataTable1_4
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  182     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 0);
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  183    
//  184     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0); 
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  185     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  P3);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  186     
//  187     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,P4 );
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  188     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0 ); 
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  189   }
//  190 }
??Motor_control_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     ftm_init_struct3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     back

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     `P1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     `P2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     `P3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     `P4`

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  191 
//  192 
// 
//  28 bytes in section .bss
//  10 bytes in section .data
// 382 bytes in section .text
// 
// 382 bytes of CODE memory
//  38 bytes of DATA memory
//
//Errors: none
//Warnings: none
