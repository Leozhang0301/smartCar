///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\common\encoder.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW2934.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\common\encoder.c -D LPLD_K60
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\encoder.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_QD_Enable
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_LPTMR_GetPulseAcc
        EXTERN LPLD_LPTMR_Init
        EXTERN LPLD_LPTMR_ResetCounter
        EXTERN __aeabi_memcpy4

        PUBLIC L1_init
        PUBLIC L2_init
        PUBLIC R1_init
        PUBLIC R2_init
        PUBLIC ftm1_init_struct
        PUBLIC gpio_init_struct
        PUBLIC ic_init
        PUBLIC left_getSpeed
        PUBLIC left_reSpeed
        PUBLIC lptmr_init_structure
        PUBLIC right_getSpeed
        PUBLIC right_reSpeed

// G:\AIcar\@@\k60_144\smartcar\lib\common\encoder.c
//    1 /**
//    2 * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_QuadratureDecoder）-----------------
//    3 * @file LPLD_QuadratureDecoder.c
//    4 * @version 0.1
//    5 * @date 2013-9-29
//    6 * @BRIEF 利用FTM模块的正交解码功能，实现编码器的正反转测速。
//    7 *
//    8 * 版权所有:北京拉普兰德电子技术有限公司
//    9 * http://www.lpld.cn
//   10 * mail:support@lpld.cn
//   11 * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12 *
//   13 * 本工程基于"拉普兰德K60底层库V3"开发，
//   14 * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15 * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16 * 底层库使用方法见相关文档。
//   17 *
//   18 */
//   19 #include "include.h"
//   20 
//   21 
//   22 
//   23 /****************************************
//   24 说明：
//   25 *分别将编码器的AB相信号接入PTB0、PTB1引脚
//   26 *将MiniUSB线插入RUSH Kinetis开发板的USB
//   27 插座，并连接至电脑USB接口。
//   28 *使用串口调试助手波特率设置为115200
//   29 *使用串口调试助手查看运行结果。
//   30 *使编码器产生正反转，查看运行结果。
//   31 ****************************************/
//   32 
//   33 //函数声明
//   34 void L1_init();
//   35 void L2_init();
//   36 void R1_init();
//   37 void R2_init();
//   38 
//   39 
//   40 
//   41 //变量定义
//   42 int left_getSpeed();
//   43 int right_getSpeed();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   44 int left_reSpeed;
left_reSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 int right_reSpeed;
right_reSpeed:
        DS8 4
//   46 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 FTM_InitTypeDef ftm1_init_struct; 
ftm1_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   48 LPTMR_InitTypeDef lptmr_init_structure;
lptmr_init_structure:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   49 GPIO_InitTypeDef gpio_init_struct;
gpio_init_struct:
        DS8 20
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void ic_init()
//   52 {
ic_init:
        PUSH     {R7,LR}
//   53   L1_init();
        BL       L1_init
//   54   L2_init();
        BL       L2_init
//   55   R1_init();
        BL       R1_init
//   56   R2_init();
        BL       R2_init
//   57 }
        POP      {R0,PC}          ;; return
//   58 
//   59 /*********************************
//   60 编码器R1
//   61 **********************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void R1_init(void)
//   63 {
R1_init:
        PUSH     {R0-R4,LR}
//   64   
//   65   //配置正交解码功能参数
//   66   ftm1_init_struct.FTM_Ftmx = FTM1;              //只有FTM1和FTM2有正交解码功能
        LDR.N    R1,??DataTable6
        LDR.N    R4,??DataTable6_1  ;; 0x40039000
        STR      R4,[R1, #+0]
//   67   ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
        MOVS     R0,#+4
        STRB     R0,[R1, #+4]
//   68   ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
        MOVS     R0,#+8
        STRB     R0,[R1, #+18]
//   69   //初始化FTM
//   70   LPLD_FTM_Init(ftm1_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   71   //PTB0引脚接A相输入、PTB1引脚接B相输入
//   72   LPLD_FTM_QD_Enable(FTM1, PTB18, PTB19);
        MOVS     R2,#+51
        MOVS     R1,#+50
        MOVS     R0,R4
        BL       LPLD_FTM_QD_Enable
//   73   
//   74 }
        POP      {R0-R4,PC}       ;; return
//   75 
//   76 /*********************************
//   77 编码器R2
//   78 **********************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void R2_init(void)
//   80 {
R2_init:
        PUSH     {R0-R4,LR}
//   81   
//   82   //配置正交解码功能参数
//   83   ftm1_init_struct.FTM_Ftmx = FTM1;              //只有FTM1和FTM2有正交解码功能
        LDR.N    R1,??DataTable6
        LDR.N    R4,??DataTable6_1  ;; 0x40039000
        STR      R4,[R1, #+0]
//   84   ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
        MOVS     R0,#+4
        STRB     R0,[R1, #+4]
//   85   ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
        MOVS     R0,#+8
        STRB     R0,[R1, #+18]
//   86   //初始化FTM
//   87   LPLD_FTM_Init(ftm1_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   88   //PTB0引脚接A相输入、PTB1引脚接B相输入
//   89   LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
        MOVS     R2,#+33
        MOVS     R1,#+32
        MOVS     R0,R4
        BL       LPLD_FTM_QD_Enable
//   90   
//   91 }
        POP      {R0-R4,PC}       ;; return
//   92 
//   93 /*********************************
//   94 编码器L2
//   95 **********************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   96 void L2_init(void)
//   97 {
L2_init:
        PUSH     {R0-R4,LR}
//   98   
//   99   //配置正交解码功能参数
//  100   ftm1_init_struct.FTM_Ftmx = FTM1;              //只有FTM1和FTM2有正交解码功能
        LDR.N    R1,??DataTable6
        LDR.N    R4,??DataTable6_1  ;; 0x40039000
        STR      R4,[R1, #+0]
//  101   ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
        MOVS     R0,#+4
        STRB     R0,[R1, #+4]
//  102   ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
        MOVS     R0,#+8
        STRB     R0,[R1, #+18]
//  103   //初始化FTM
//  104   LPLD_FTM_Init(ftm1_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  105   //PTB0引脚接A相输入、PTB1引脚接B相输入
//  106   LPLD_FTM_QD_Enable(FTM1, PTA9, PTA8);
        MOVS     R2,#+8
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       LPLD_FTM_QD_Enable
//  107   
//  108 }
        POP      {R0-R4,PC}       ;; return
//  109 
//  110 /*********************************
//  111 编码器L1
//  112 **********************************/ 
//  113 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void L1_init(void)
//  115 {
L1_init:
        PUSH     {R7,LR}
//  116   lptmr_init_structure.LPTMR_Mode = LPTMR_MODE_PLACC;
        LDR.N    R0,??DataTable6_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  117   lptmr_init_structure.LPTMR_PluseAccInput = LPTMR_ALT1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
//  118   lptmr_init_structure.LPTMR_Isr = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  119   LPLD_LPTMR_Init(lptmr_init_structure); 
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//  120   //初始化IO口
//  121   gpio_init_struct.GPIO_PTx = PTC;
        LDR.N    R1,??DataTable6_3
        LDR.N    R0,??DataTable6_4  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  122   gpio_init_struct.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  123   gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[R1, #+8]
//  124   gpio_init_struct.GPIO_Pins = GPIO_Pin5;
        MOVS     R0,#+32
        STR      R0,[R1, #+4]
//  125   LPLD_GPIO_Init(gpio_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  126 }
        POP      {R0,PC}          ;; return
//  127 
//  128 
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 int right_getSpeed()
//  131 {
right_getSpeed:
        PUSH     {R4,LR}
//  132   int16 val=0;
        MOVS     R0,#+0
//  133   val=LPLD_LPTMR_GetPulseAcc();
        BL       LPLD_LPTMR_GetPulseAcc
        MOVS     R4,R0
//  134   LPLD_LPTMR_ResetCounter();
        BL       LPLD_LPTMR_ResetCounter
//  135   LPLD_LPTMR_Init(lptmr_init_structure);
        LDR.N    R0,??DataTable6_2
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//  136   if(1==PTC5_I)
        LDR.N    R0,??DataTable6_5  ;; 0x43fe1214
        LDR      R1,[R0, #+0]
        CMP      R1,#+1
        BNE.N    ??right_getSpeed_0
//  137   {return val;}
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        B.N      ??right_getSpeed_1
//  138   else if(0==PTC5_I)
??right_getSpeed_0:
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??right_getSpeed_2
//  139   {return -val;}
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        RSBS     R4,R4,#+0
        MOVS     R0,R4
        B.N      ??right_getSpeed_1
//  140   return 0;
??right_getSpeed_2:
        MOVS     R0,#+0
??right_getSpeed_1:
        POP      {R4,PC}          ;; return
//  141 }
//  142 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  143 int left_getSpeed()
//  144 {
left_getSpeed:
        PUSH     {R3-R5,LR}
//  145   
//  146   int16 val=0;
        MOVS     R0,#+0
//  147   val=LPLD_FTM_GetCounter(FTM1);
        LDR.N    R5,??DataTable6_1  ;; 0x40039000
        MOVS     R0,R5
        BL       LPLD_FTM_GetCounter
        MOVS     R4,R0
//  148   LPLD_FTM_ClearCounter(FTM1);
        MOVS     R0,R5
        BL       LPLD_FTM_ClearCounter
//  149   return val;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  150 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DATA32
        DC32     ftm1_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DATA32
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DATA32
        DC32     lptmr_init_structure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DATA32
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DATA32
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DATA32
        DC32     0x43fe1214

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  151 
//  152   
//  153 
//  154 
// 
//  68 bytes in section .bss
// 314 bytes in section .text
// 
// 314 bytes of CODE memory
//  68 bytes of DATA memory
//
//Errors: none
//Warnings: 2
