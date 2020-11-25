///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:11
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\encoder.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW215E.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\encoder.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\encoder.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_QD_Enable
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_LPTMR_GetPulseAcc
        EXTERN LPLD_LPTMR_Init
        EXTERN LPLD_LPTMR_ResetCounter
        EXTERN __aeabi_memcpy4

        PUBLIC L1_init
        PUBLIC L2_init
        PUBLIC R1_init
        PUBLIC R2_init
        PUBLIC encorder_init
        PUBLIC flag
        PUBLIC flag1
        PUBLIC ftm1_getSpeed
        PUBLIC ftm1_init_struct
        PUBLIC ftm2_getSpeed
        PUBLIC getspeed
        PUBLIC gpioSpeed
        PUBLIC gpio_init_struct
        PUBLIC l1_reSpeed
        PUBLIC l2_reSpeed
        PUBLIC left_reSpeed
        PUBLIC lptmr_init_structure
        PUBLIC porta_isr
        PUBLIC r1_reSpeed
        PUBLIC r2_reSpeed
        PUBLIC right_getSpeed
        PUBLIC right_reSpeed
        PUBLIC speed

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\encoder.c
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
//   38 void porta_isr(void);
//   39 
//   40 
//   41 
//   42 //变量定义
//   43 int left_getSpeed();
//   44 int right_getSpeed();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 int left_reSpeed;
left_reSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   46 int right_reSpeed;
right_reSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 int r1_reSpeed=0;
r1_reSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   48 int r2_reSpeed=0;
r2_reSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   49 int l1_reSpeed=0;
l1_reSpeed:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   50 int l2_reSpeed=1;
l2_reSpeed:
        DATA32
        DC32 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   51 int speed=0;
speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   52 int gpioSpeed;
gpioSpeed:
        DS8 4
//   53 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   54 int flag1;
flag1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   55 int flag;
flag:
        DS8 4
//   56 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   57 FTM_InitTypeDef ftm1_init_struct; 
ftm1_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   58 LPTMR_InitTypeDef lptmr_init_structure;
lptmr_init_structure:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   59 GPIO_InitTypeDef gpio_init_struct;
gpio_init_struct:
        DS8 20
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void encorder_init()
//   62 {
encorder_init:
        PUSH     {R7,LR}
//   63   L1_init();
        BL       L1_init
//   64   L2_init();
        BL       L2_init
//   65   R1_init();
        BL       R1_init
//   66   R2_init();
        BL       R2_init
//   67 }
        POP      {R0,PC}          ;; return
//   68 
//   69 /*********************************
//   70 编码器R1
//   71 **********************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 void R1_init(void)
//   73 {
R1_init:
        PUSH     {R0-R4,LR}
//   74   
//   75   //配置正交解码功能参数
//   76   ftm1_init_struct.FTM_Ftmx = FTM2;              //只有FTM1和FTM2有正交解码功能
        LDR.N    R1,??DataTable9
        LDR.N    R4,??DataTable9_1  ;; 0x400b8000
        STR      R4,[R1, #+0]
//   77   ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
        MOVS     R0,#+4
        STRB     R0,[R1, #+4]
//   78   ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
        MOVS     R0,#+8
        STRB     R0,[R1, #+18]
//   79   //初始化FTM
//   80   LPLD_FTM_Init(ftm1_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   81   //PTB0引脚接A相输入、PTB1引脚接B相输入
//   82   LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);
        MOVS     R2,#+51
        MOVS     R1,#+50
        MOVS     R0,R4
        BL       LPLD_FTM_QD_Enable
//   83   
//   84 }
        POP      {R0-R4,PC}       ;; return
//   85 
//   86 
//   87 /*********************************
//   88 编码器L2
//   89 **********************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void L2_init(void)
//   91 {
L2_init:
        PUSH     {R3-R5,LR}
//   92   
//   93       gpio_init_struct.GPIO_PTx = PTA;
        LDR.N    R4,??DataTable9_2
        LDR.N    R5,??DataTable9_3  ;; 0x400ff000
        STR      R5,[R4, #+0]
//   94   gpio_init_struct.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   95   gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[R4, #+8]
//   96   gpio_init_struct.GPIO_Pins = GPIO_Pin8;     //A8 判断正反转
        MOV      R0,#+256
        STR      R0,[R4, #+4]
//   97   LPLD_GPIO_Init(gpio_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   98   
//   99     gpio_init_struct.GPIO_PTx = PTA;
        STR      R5,[R4, #+0]
//  100   gpio_init_struct.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//  101   gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_RI;//自拉低
        LDR.N    R0,??DataTable9_4  ;; 0x90002
        STR      R0,[R4, #+8]
//  102   gpio_init_struct.GPIO_Pins = GPIO_Pin9;
        MOV      R0,#+512
        STR      R0,[R4, #+4]
//  103   gpio_init_struct.GPIO_Isr=porta_isr;//中断函数 gpio_interrupt
        ADR.W    R0,porta_isr
        STR      R0,[R4, #+16]
//  104   flag = LPLD_GPIO_Init(gpio_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
        LDR.N    R1,??DataTable9_5
        STR      R0,[R1, #+0]
//  105   flag1 = LPLD_GPIO_EnableIrq(gpio_init_struct);//使能中断
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
        LDR.N    R1,??DataTable9_6
        STR      R0,[R1, #+0]
//  106 }
        POP      {R0,R4,R5,PC}    ;; return
//  107 
//  108 
//  109 /*********************************
//  110 编码器R2
//  111 **********************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  112 void R2_init(void)
//  113 {
R2_init:
        PUSH     {R0-R4,LR}
//  114   
//  115   //配置正交解码功能参数
//  116   ftm1_init_struct.FTM_Ftmx = FTM1;              //只有FTM1和FTM2有正交解码功能
        LDR.N    R1,??DataTable9
        LDR.N    R4,??DataTable9_7  ;; 0x40039000
        STR      R4,[R1, #+0]
//  117   ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
        MOVS     R0,#+4
        STRB     R0,[R1, #+4]
//  118   ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
        MOVS     R0,#+8
        STRB     R0,[R1, #+18]
//  119   //初始化FTM
//  120   LPLD_FTM_Init(ftm1_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  121   //PTB0引脚接A相输入、PTB1引脚接B相输入
//  122   LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
        MOVS     R2,#+33
        MOVS     R1,#+32
        MOVS     R0,R4
        BL       LPLD_FTM_QD_Enable
//  123   
//  124 
//  125   
//  126 }
        POP      {R0-R4,PC}       ;; return
//  127 
//  128 
//  129 
//  130 /*********************************
//  131 编码器L1
//  132 **********************************/ 
//  133 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 void L1_init(void)
//  135 {
L1_init:
        PUSH     {R7,LR}
//  136   lptmr_init_structure.LPTMR_Mode = LPTMR_MODE_PLACC;
        LDR.N    R0,??DataTable9_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  137   lptmr_init_structure.LPTMR_PluseAccInput = LPTMR_ALT1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
//  138   lptmr_init_structure.LPTMR_Isr = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  139   LPLD_LPTMR_Init(lptmr_init_structure); 
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//  140   //初始化IO口
//  141   gpio_init_struct.GPIO_PTx = PTC;
        LDR.N    R1,??DataTable9_2
        LDR.N    R0,??DataTable9_9  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  142   gpio_init_struct.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  143   gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[R1, #+8]
//  144   gpio_init_struct.GPIO_Pins = GPIO_Pin5;
        MOVS     R0,#+32
        STR      R0,[R1, #+4]
//  145   LPLD_GPIO_Init(gpio_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  146 }
        POP      {R0,PC}          ;; return
//  147 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 int getspeed()
//  149 {
//  150   int val=0;
getspeed:
        MOVS     R0,#+0
//  151   val=gpioSpeed;
        LDR.N    R1,??DataTable9_10
        LDR      R0,[R1, #+0]
//  152   gpioSpeed=0;
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//  153   if(1==PTA8_I)
        LDR.N    R1,??DataTable9_11  ;; 0x43fe0220
        LDR      R2,[R1, #+0]
        CMP      R2,#+1
        BNE.N    ??getspeed_0
//  154   {return -val;}
        RSBS     R0,R0,#+0
        B.N      ??getspeed_1
//  155   else if(0==PTA8_I)
??getspeed_0:
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??getspeed_1
//  156   {return val;}
//  157   return 0;
??getspeed_2:
        MOVS     R0,#+0
??getspeed_1:
        BX       LR               ;; return
//  158 }
//  159 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 int right_getSpeed()
//  161 {
right_getSpeed:
        PUSH     {R4,LR}
//  162   int16 val=0;
        MOVS     R0,#+0
//  163   val=LPLD_LPTMR_GetPulseAcc();
        BL       LPLD_LPTMR_GetPulseAcc
        MOVS     R4,R0
//  164   LPLD_LPTMR_ResetCounter();
        BL       LPLD_LPTMR_ResetCounter
//  165   LPLD_LPTMR_Init(lptmr_init_structure);
        LDR.N    R0,??DataTable9_8
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//  166   if(1==PTC5_I)
        LDR.N    R0,??DataTable9_12  ;; 0x43fe1214
        LDR      R1,[R0, #+0]
        CMP      R1,#+1
        BNE.N    ??right_getSpeed_0
//  167   {return val;}
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        B.N      ??right_getSpeed_1
//  168   else if(0==PTC5_I)
??right_getSpeed_0:
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??right_getSpeed_2
//  169   {return -val;}
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        RSBS     R4,R4,#+0
        MOVS     R0,R4
        B.N      ??right_getSpeed_1
//  170   return 0;
??right_getSpeed_2:
        MOVS     R0,#+0
??right_getSpeed_1:
        POP      {R4,PC}          ;; return
//  171 }
//  172 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  173 int ftm1_getSpeed()
//  174 {
ftm1_getSpeed:
        PUSH     {R3-R5,LR}
//  175   
//  176   int16 val=0;
        MOVS     R0,#+0
//  177   val=LPLD_FTM_GetCounter(FTM1);
        LDR.N    R5,??DataTable9_7  ;; 0x40039000
        MOVS     R0,R5
        BL       LPLD_FTM_GetCounter
        MOVS     R4,R0
//  178   LPLD_FTM_ClearCounter(FTM1);
        MOVS     R0,R5
        BL       LPLD_FTM_ClearCounter
//  179   return -val;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        RSBS     R4,R4,#+0
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  180 }
//  181 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 int ftm2_getSpeed()
//  183 {
ftm2_getSpeed:
        PUSH     {R3-R5,LR}
//  184   
//  185   int16 val=0;
        MOVS     R0,#+0
//  186   val=LPLD_FTM_GetCounter(FTM2);
        LDR.N    R5,??DataTable9_1  ;; 0x400b8000
        MOVS     R0,R5
        BL       LPLD_FTM_GetCounter
        MOVS     R4,R0
//  187   LPLD_FTM_ClearCounter(FTM2);
        MOVS     R0,R5
        BL       LPLD_FTM_ClearCounter
//  188   return val;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  189 }
//  190 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  191 void porta_isr()
//  192 {
//  193  // if(LPLD_GPIO_IsPinxExt(PORTA,GPIO_Pin9)>0)
//  194  // {
//  195    gpioSpeed++;
porta_isr:
        LDR.N    R0,??DataTable9_10
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  196 
//  197   //  LPLD_GPIO_ClearIntFlag(PORTA);
//  198  // }
//  199   //PTA_9=0;
//  200 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DATA32
        DC32     ftm1_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DATA32
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DATA32
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DATA32
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DATA32
        DC32     0x90002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DATA32
        DC32     flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DATA32
        DC32     flag1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DATA32
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DATA32
        DC32     lptmr_init_structure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DATA32
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DATA32
        DC32     gpioSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DATA32
        DC32     0x43fe0220

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DATA32
        DC32     0x43fe1214

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  201 
//  202   
//  203 
//  204 
// 
//  96 bytes in section .bss
//   4 bytes in section .data
// 476 bytes in section .text
// 
// 476 bytes of CODE memory
// 100 bytes of DATA memory
//
//Errors: none
//Warnings: none
