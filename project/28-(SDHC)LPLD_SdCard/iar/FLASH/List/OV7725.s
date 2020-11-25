///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  01:03:17
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\Jay\OV7725.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EWD836.tmp
//        (G:\AIcar\@@\xiugai\lib\Jay\OV7725.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\OV7725.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LED_PrintImage
        EXTERN LPLD_DMA_EnableIrq
        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_NVIC_Init
        EXTERN SCCB_GPIO_init
        EXTERN SCCB_ReadByte
        EXTERN SCCB_WriteByte
        EXTERN __aeabi_memcpy4
        EXTERN nvic_init_struct

        PUBLIC Camera_Init
        PUBLIC DMA_flag
        PUBLIC DMA_init
        PUBLIC DMA_init_struct
        PUBLIC DMA_isr
        PUBLIC GrayValue
        PUBLIC IO_init
        PUBLIC IO_init_struct
        PUBLIC ImgThreshold
        PUBLIC PCLK_init
        PUBLIC PCLK_init_struct
        PUBLIC Pix_Data0
        PUBLIC Pix_Data1
        PUBLIC Unzip
        PUBLIC VSY_init
        PUBLIC VSY_init_struct
        PUBLIC VSY_isr
        PUBLIC delay
        PUBLIC dst
        PUBLIC fieldCnt
        PUBLIC get_img
        PUBLIC img_display
        PUBLIC img_extract
        PUBLIC imgbuff
        PUBLIC ov7725_eagle_img_flag
        PUBLIC ov7725_init
        PUBLIC temp

// G:\AIcar\@@\xiugai\lib\Jay\OV7725.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn_Type)
__NVIC_EnableIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable12  ;; 0xe000e100
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn_Type)
__NVIC_DisableIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable12_1  ;; 0xe000e180
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//    7 #include "include.h"
//    8 
//    9 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   10 volatile IMG_STATUS_e      ov7725_eagle_img_flag = IMG_FINISH;   //图像状态
ov7725_eagle_img_flag:
        DATA8
        DC8 1
//   11 
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 GPIO_InitTypeDef IO_init_struct;
IO_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 GPIO_InitTypeDef VSY_init_struct;
VSY_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   15 GPIO_InitTypeDef PCLK_init_struct;
PCLK_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 DMA_InitTypeDef DMA_init_struct;
DMA_init_struct:
        DS8 44

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   17 uint16 ImgThreshold = 40;//152 //阈值
ImgThreshold:
        DATA16
        DC16 40

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   18 uint16 GrayValue = 0x5a;
GrayValue:
        DATA16
        DC16 90
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 uint8 Pix_Data0[pixels];
Pix_Data0:
        DS8 600

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 uint8 Pix_Data1[pixels];
Pix_Data1:
        DS8 600

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 uint8 imgbuff[IMG_ROWS][IMG_COLS]; //
imgbuff:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 uint8 dst[60][80]; //处理数据
dst:
        DS8 4800
//   24 
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   26 uint8 DMA_flag=0;//图像采集完毕
DMA_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   27 uint8 fieldCnt=0;
fieldCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   28 uint8 temp=0;
temp:
        DS8 1
//   29 
//   30 //场中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void VSY_isr(void)
//   32 { 
VSY_isr:
        PUSH     {R3-R6,LR}
        SUB      SP,SP,#+28
//   33   uint32 flag = (PORTC->ISFR);
        LDR.W    R5,??DataTable12_2  ;; 0x4004b0a0
        LDR      R4,[R5, #+0]
//   34   LPLD_GPIO_ClearIntFlag(PORTC);                  //清中断标志位
        MOVS     R0,#-1
        STR      R0,[R5, #+0]
//   35   //场中断需要判断是场结束还是场开始
//   36   if(ov7725_eagle_img_flag == IMG_START)        //需要开始采集图像
        LDR.W    R6,??DataTable12_3
        LDRB     R0,[R6, #+0]
        CMP      R0,#+4
        BNE.N    ??VSY_isr_0
//   37   {
//   38     ov7725_eagle_img_flag = IMG_GATHER;         //标记图像采集中
        MOVS     R0,#+3
        STRB     R0,[R6, #+0]
//   39     disable_irq(PORTC_IRQn);
        MOVS     R0,#+89
        BL       __NVIC_DisableIRQ
//   40     
//   41     PORTC->ISFR = 1 << 17;                      //清空PCLK标志位 
        MOVS     R0,#+131072
        STR      R0,[R5, #+0]
//   42     
//   43     if(fieldCnt)
        LDR.W    R1,??DataTable12_4
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??VSY_isr_1
//   44     { LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data1);}//恢复地址
        LDR.W    R0,??DataTable12_5
        LDR.W    R2,??DataTable12_6  ;; 0x40009010
        STR      R0,[R2, #+0]
        B.N      ??VSY_isr_2
//   45     else
//   46     { LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data0);}//恢复地址
??VSY_isr_1:
        LDR.W    R0,??DataTable12_7
        LDR.W    R2,??DataTable12_6  ;; 0x40009010
        STR      R0,[R2, #+0]
//   47     
//   48     fieldCnt = fieldCnt ? 0 : 1;  //奇偶场计数
??VSY_isr_2:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??VSY_isr_3
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
        B.N      ??VSY_isr_4
??VSY_isr_3:
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
//   49     
//   50     DMA_flag = 1;
??VSY_isr_4:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
//   51     
//   52     LPLD_DMA_EnableReq(DMA_CH0);                //使能通道CHn 硬件请求
        LDR.W    R0,??DataTable12_9  ;; 0x4000800c
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//   53     
//   54     LPLD_DMA_EnableIrq(DMA_init_struct);        //开DMA结束中断
        LDR.W    R1,??DataTable12_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_EnableIrq
        B.N      ??VSY_isr_5
//   55   }
//   56   else                                         //图像采集错误
//   57   {
//   58     disable_irq(PORTC_IRQn);                    //关闭PTA的中断
??VSY_isr_0:
        MOVS     R0,#+89
        BL       __NVIC_DisableIRQ
//   59     ov7725_eagle_img_flag = IMG_FAIL;           //标记图像采集失败
        MOVS     R0,#+2
        STRB     R0,[R6, #+0]
//   60   }
//   61 }
??VSY_isr_5:
        ADD      SP,SP,#+32
        POP      {R4-R6,PC}       ;; return
//   62 
//   63 
//   64 //DMA结束中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void DMA_isr(void)
//   66 {
DMA_isr:
        PUSH     {R7,LR}
//   67   disable_irq(PORTC_IRQn);
        MOVS     R0,#+89
        BL       __NVIC_DisableIRQ
//   68   ov7725_eagle_img_flag = IMG_FINISH ;//关闭场中断
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
//   69   DMA0->INT |= 0x1u<<0;
        LDR.W    R0,??DataTable12_11  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//   70   enable_irq(PORTC_IRQn);
        MOVS     R0,#+89
        BL       __NVIC_EnableIRQ
//   71 }
        POP      {R0,PC}          ;; return
//   72 
//   73 
//   74 //采集函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void get_img(void)
//   76 {
get_img:
        PUSH     {R7,LR}
//   77   static u8 flag = 0;
//   78 
//   79   if(ov7725_eagle_img_flag != IMG_FINISH)      //图像采集是否完成
        LDR.W    R1,??DataTable12_3
        LDRB     R0,[R1, #+0]
        CMP      R0,#+1
        BEQ.N    ??get_img_0
//   80   {
//   81     flag = 0;//可以进行下一次场中断初始化
        MOVS     R0,#+0
        LDR.W    R2,??DataTable12_12
        STRB     R0,[R2, #+0]
//   82     if(ov7725_eagle_img_flag == IMG_FAIL)         //假如图像采集错误，则重新开始采集
        LDRB     R0,[R1, #+0]
        CMP      R0,#+2
        BNE.N    ??get_img_1
//   83     {
//   84       ov7725_eagle_img_flag = IMG_START;          //开始采集图像
        MOVS     R0,#+4
        STRB     R0,[R1, #+0]
//   85       LPLD_GPIO_ClearIntFlag(PORTC);              //写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
        MOVS     R0,#-1
        LDR.W    R1,??DataTable12_2  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//   86       enable_irq(PORTC_IRQn);                     //允许PTA的中断
        MOVS     R0,#+89
        BL       __NVIC_EnableIRQ
        B.N      ??get_img_1
//   87     }
//   88   }
//   89   else if(0 == flag)//首次场中断初始化
??get_img_0:
        LDR.W    R2,??DataTable12_12
        LDRB     R0,[R2, #+0]
        CMP      R0,#+0
        BNE.N    ??get_img_1
//   90   {
//   91     flag = 1;
        MOVS     R0,#+1
        STRB     R0,[R2, #+0]
//   92     //开始首次采集图像
//   93     ov7725_eagle_img_flag = IMG_START;//开始采集图像
        MOVS     R0,#+4
        STRB     R0,[R1, #+0]
//   94     LPLD_GPIO_ClearIntFlag(PORTC);//写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
        MOVS     R0,#-1
        LDR.W    R1,??DataTable12_2  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//   95     enable_irq(PORTC_IRQn);//允许PTC的中断
        MOVS     R0,#+89
        BL       __NVIC_EnableIRQ
//   96 
//   97   }  
//   98 }
??get_img_1:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`get_img::flag`:
        DS8 1
//   99 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  100 void IO_init(void)
//  101 {
IO_init:
        PUSH     {R7,LR}
//  102   //OV数据口初始化：PTD8~PTD15
//  103   IO_init_struct.GPIO_PTx = PTD;
        LDR.W    R1,??DataTable12_13
        LDR.W    R0,??DataTable12_14  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  104   IO_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  105   IO_init_struct.GPIO_Pins = GPIO_Pin8_15;
        MOV      R0,#+65280
        STR      R0,[R1, #+4]
//  106   IO_init_struct.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DIS;
        MOVS     R0,#+0
        STR      R0,[R1, #+8]
//  107   LPLD_GPIO_Init(IO_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  108 }
        POP      {R0,PC}          ;; return
//  109 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 void VSY_init(void)
//  111 {
VSY_init:
        PUSH     {R7,LR}
//  112   nvic_init_struct.NVIC_IRQChannel = PORTC_IRQn;
        LDR.W    R1,??DataTable12_15
        MOVS     R0,#+89
        STRB     R0,[R1, #+0]
//  113   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[R1, #+4]
//  114   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+8]
//  115   nvic_init_struct.NVIC_IRQChannelSubPriority        = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+12]
//  116   LPLD_NVIC_Init(nvic_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  117   
//  118   VSY_init_struct.GPIO_PTx = PTC;
        LDR.W    R1,??DataTable12_16
        LDR.W    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  119   VSY_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  120   VSY_init_struct.GPIO_Pins = GPIO_Pin18;
        MOVS     R0,#+262144
        STR      R0,[R1, #+4]
//  121   VSY_init_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;
        LDR.W    R0,??DataTable12_18  ;; 0x90013
        STR      R0,[R1, #+8]
//  122   VSY_init_struct.GPIO_Isr = VSY_isr;
        LDR.W    R0,??DataTable12_19
        STR      R0,[R1, #+16]
//  123   LPLD_GPIO_Init(VSY_init_struct); 
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  124 }
        POP      {R0,PC}          ;; return
//  125 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 void PCLK_init(void)
//  127 {
PCLK_init:
        PUSH     {R7,LR}
//  128   PCLK_init_struct.GPIO_PTx = PTC;
        LDR.W    R1,??DataTable12_20
        LDR.W    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  129   PCLK_init_struct.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        STR      R0,[R1, #+4]
//  130   PCLK_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  131   PCLK_init_struct.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP;
        LDR.W    R0,??DataTable12_21  ;; 0x20003
        STR      R0,[R1, #+8]
//  132   LPLD_GPIO_Init(PCLK_init_struct); 
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  133 }
        POP      {R0,PC}          ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void DMA_init(void)
//  136 {
DMA_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  137   nvic_init_struct.NVIC_IRQChannel = DMA0_IRQn;
        LDR.W    R1,??DataTable12_15
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  138   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[R1, #+4]
//  139   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STR      R0,[R1, #+8]
//  140   nvic_init_struct.NVIC_IRQChannelSubPriority        = 1;
        MOVS     R0,#+1
        STR      R0,[R1, #+12]
//  141   LPLD_NVIC_Init(nvic_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  142   //DMA参数配置
//  143   DMA_init_struct.DMA_CHx = DMA_CH0;        //CH0通道
        LDR.W    R1,??DataTable12_10
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  144   DMA_init_struct.DMA_Req = PORTC_DMAREQ;   //PORTC为请求源
        MOVS     R0,#+51
        STRB     R0,[R1, #+1]
//  145   DMA_init_struct.DMA_MajorLoopCnt = pixels;   //主循环计数值：采集数
        MOV      R0,#+600
        STRH     R0,[R1, #+4]
//  146   DMA_init_struct.DMA_MinorByteCnt = 1;     //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        STR      R0,[R1, #+8]
//  147   DMA_init_struct.DMA_SourceAddr = (uint32_t)&PTD->PDIR+1;//源地址：PTD8~15
        LDR.W    R0,??DataTable12_22  ;; 0x400ff0d1
        STR      R0,[R1, #+12]
//  148   DMA_init_struct.DMA_DestAddr = (uint32)Pix_Data0;      //目的地址：存放图像的数组
        LDR.N    R0,??DataTable12_7
        STR      R0,[R1, #+24]
//  149   DMA_init_struct.DMA_DestAddrOffset = 1;   //目的地址偏移：每次读入增加1
        MOVS     R0,#+1
        STRH     R0,[R1, #+30]
//  150   DMA_init_struct.DMA_MajorCompleteIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R1, #+37]
//  151   DMA_init_struct.DMA_Isr = DMA_isr;
        LDR.W    R0,??DataTable12_23
        STR      R0,[R1, #+40]
//  152   DMA_init_struct.DMA_AutoDisableReq = TRUE;//自动禁用请求
        MOVS     R0,#+1
        STRB     R0,[R1, #+36]
//  153   //初始化DMA
//  154   LPLD_DMA_Init(DMA_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  155 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  156 
//  157 /*
//  158  * 延时一段时间
//  159  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  160 void delay(void)
//  161 {
//  162   uint16 i, n;
//  163   for(i=0;i<20000;i++)
delay:
        MOVS     R0,#+0
??delay_0:
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVW     R3,#+20000
        CMP      R2,R3
        BGE.N    ??delay_1
//  164   {
//  165     for(n=0;n<100;n++)
        MOVS     R2,#+0
        MOVS     R1,R2
??delay_2:
        MOVS     R2,R1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+100
        BGE.N    ??delay_3
//  166     {
//  167       asm("nop");
        nop
//  168     }
        ADDS     R1,R1,#+1
        B.N      ??delay_2
//  169   }
??delay_3:
        ADDS     R0,R0,#+1
        B.N      ??delay_0
//  170 }
??delay_1:
        BX       LR               ;; return
//  171 //ov7725初始化函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void ov7725_init(void)
//  173 {
ov7725_init:
        PUSH     {R7,LR}
//  174   SCCB_GPIO_init();
        BL       SCCB_GPIO_init
//  175   delay();
        BL       delay
//  176   SCCB_WriteByte(OV7725_COM7,0x80);//复位
        MOVS     R1,#+128
        MOVS     R0,#+18
        BL       SCCB_WriteByte
//  177   delay();
        BL       delay
//  178   SCCB_WriteByte(OV7725_COM4,0x81); //150帧:0xC1,112帧:0x81,75帧:0x41,50帧:0xC1
        MOVS     R1,#+129
        MOVS     R0,#+13
        BL       SCCB_WriteByte
//  179   SCCB_WriteByte(OV7725_CLKRC,0x00);//150帧:0x00,112帧:0x00,75帧:0x00,50帧:0x02
        MOVS     R1,#+0
        MOVS     R0,#+17
        BL       SCCB_WriteByte
//  180   SCCB_WriteByte(OV7725_COM2,0x03);
        MOVS     R1,#+3
        MOVS     R0,#+9
        BL       SCCB_WriteByte
//  181   SCCB_WriteByte(OV7725_COM3,0xD0);//50
        MOVS     R1,#+208
        MOVS     R0,#+12
        BL       SCCB_WriteByte
//  182   SCCB_WriteByte(OV7725_COM7,0x40);
        MOVS     R1,#+64
        MOVS     R0,#+18
        BL       SCCB_WriteByte
//  183   SCCB_WriteByte(OV7725_HSTART,0x3F);
        MOVS     R1,#+63
        MOVS     R0,#+23
        BL       SCCB_WriteByte
//  184   SCCB_WriteByte(OV7725_HSIZE,0x50);
        MOVS     R1,#+80
        MOVS     R0,#+24
        BL       SCCB_WriteByte
//  185   SCCB_WriteByte(OV7725_VSTRT,0x03);
        MOVS     R1,#+3
        MOVS     R0,#+25
        BL       SCCB_WriteByte
//  186   SCCB_WriteByte(OV7725_VSIZE,0x78);
        MOVS     R1,#+120
        MOVS     R0,#+26
        BL       SCCB_WriteByte
//  187   SCCB_WriteByte(OV7725_HREF,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+50
        BL       SCCB_WriteByte
//  188   SCCB_WriteByte(OV7725_SCAL0,0x0A);
        MOVS     R1,#+10
        MOVS     R0,#+160
        BL       SCCB_WriteByte
//  189   SCCB_WriteByte(OV7725_AWB_Ctrl0,0xE0);
        MOVS     R1,#+224
        MOVS     R0,#+99
        BL       SCCB_WriteByte
//  190   SCCB_WriteByte(OV7725_DSPAuto,0xff);
        MOVS     R1,#+255
        MOVS     R0,#+172
        BL       SCCB_WriteByte
//  191   SCCB_WriteByte(OV7725_DSP_Ctrl2,0x0C);
        MOVS     R1,#+12
        MOVS     R0,#+101
        BL       SCCB_WriteByte
//  192   SCCB_WriteByte(OV7725_DSP_Ctrl3,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+102
        BL       SCCB_WriteByte
//  193   SCCB_WriteByte(OV7725_DSP_Ctrl4,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+103
        BL       SCCB_WriteByte
//  194   SCCB_WriteByte(OV7725_HOutSize,0x14);//80:0x14  160:0x28  240:0x3c  320:0x50
        MOVS     R1,#+20
        MOVS     R0,#+41
        BL       SCCB_WriteByte
//  195   SCCB_WriteByte(OV7725_VOutSize,0x1e);//60:0x1e 120:0x3c 180:0x5a 240:0x78
        MOVS     R1,#+30
        MOVS     R0,#+44
        BL       SCCB_WriteByte
//  196   SCCB_WriteByte(OV7725_EXHCH,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+42
        BL       SCCB_WriteByte
//  197   SCCB_WriteByte(OV7725_GAM1,0x0c);
        MOVS     R1,#+12
        MOVS     R0,#+126
        BL       SCCB_WriteByte
//  198   SCCB_WriteByte(OV7725_GAM2,0x16);
        MOVS     R1,#+22
        MOVS     R0,#+127
        BL       SCCB_WriteByte
//  199   SCCB_WriteByte(OV7725_GAM3,0x2a);
        MOVS     R1,#+42
        MOVS     R0,#+128
        BL       SCCB_WriteByte
//  200   SCCB_WriteByte(OV7725_GAM4,0x4e);
        MOVS     R1,#+78
        MOVS     R0,#+129
        BL       SCCB_WriteByte
//  201   SCCB_WriteByte(OV7725_GAM5,0x61);
        MOVS     R1,#+97
        MOVS     R0,#+130
        BL       SCCB_WriteByte
//  202   SCCB_WriteByte(OV7725_GAM6,0x6f);
        MOVS     R1,#+111
        MOVS     R0,#+131
        BL       SCCB_WriteByte
//  203   SCCB_WriteByte(OV7725_GAM7,0x7b);
        MOVS     R1,#+123
        MOVS     R0,#+132
        BL       SCCB_WriteByte
//  204   SCCB_WriteByte(OV7725_GAM8,0x86);
        MOVS     R1,#+134
        MOVS     R0,#+133
        BL       SCCB_WriteByte
//  205   SCCB_WriteByte(OV7725_GAM9,0x8e);
        MOVS     R1,#+142
        MOVS     R0,#+134
        BL       SCCB_WriteByte
//  206   SCCB_WriteByte(OV7725_GAM10,0x97);
        MOVS     R1,#+151
        MOVS     R0,#+135
        BL       SCCB_WriteByte
//  207   SCCB_WriteByte(OV7725_GAM11,0xa4);
        MOVS     R1,#+164
        MOVS     R0,#+136
        BL       SCCB_WriteByte
//  208   SCCB_WriteByte(OV7725_GAM12,0xaf);
        MOVS     R1,#+175
        MOVS     R0,#+137
        BL       SCCB_WriteByte
//  209   SCCB_WriteByte(OV7725_GAM13,0xc5);
        MOVS     R1,#+197
        MOVS     R0,#+138
        BL       SCCB_WriteByte
//  210   SCCB_WriteByte(OV7725_GAM14,0xd7);
        MOVS     R1,#+215
        MOVS     R0,#+139
        BL       SCCB_WriteByte
//  211   SCCB_WriteByte(OV7725_GAM15,0xe8);
        MOVS     R1,#+232
        MOVS     R0,#+140
        BL       SCCB_WriteByte
//  212   SCCB_WriteByte(OV7725_SLOP,0x20);
        MOVS     R1,#+32
        MOVS     R0,#+141
        BL       SCCB_WriteByte
//  213   SCCB_WriteByte(OV7725_LC_RADI,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+74
        BL       SCCB_WriteByte
//  214   SCCB_WriteByte(OV7725_LC_COEF,0x13);
        MOVS     R1,#+19
        MOVS     R0,#+73
        BL       SCCB_WriteByte
//  215   SCCB_WriteByte(OV7725_LC_XC,0x08);
        MOVS     R1,#+8
        MOVS     R0,#+71
        BL       SCCB_WriteByte
//  216   SCCB_WriteByte(OV7725_LC_COEFB,0x14);
        MOVS     R1,#+20
        MOVS     R0,#+75
        BL       SCCB_WriteByte
//  217   SCCB_WriteByte(OV7725_LC_COEFR,0x17);
        MOVS     R1,#+23
        MOVS     R0,#+76
        BL       SCCB_WriteByte
//  218   SCCB_WriteByte(OV7725_LC_CTR,0x05);
        MOVS     R1,#+5
        MOVS     R0,#+70
        BL       SCCB_WriteByte
//  219   SCCB_WriteByte(OV7725_BDBase,0x99);
        MOVS     R1,#+153
        MOVS     R0,#+34
        BL       SCCB_WriteByte
//  220   SCCB_WriteByte(OV7725_BDMStep,0x03);
        MOVS     R1,#+3
        MOVS     R0,#+35
        BL       SCCB_WriteByte
//  221   SCCB_WriteByte(OV7725_SDE,0x04);
        MOVS     R1,#+4
        MOVS     R0,#+166
        BL       SCCB_WriteByte
//  222   SCCB_WriteByte(OV7725_BRIGHT,GrayValue); //亮度值补偿
        LDR.N    R0,??DataTable12_24
        LDRH     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+155
        BL       SCCB_WriteByte
//  223   SCCB_WriteByte(OV7725_CNST,ImgThreshold);//阈值调整(0~255)//0xA0//0x84
        LDR.N    R0,??DataTable12_25
        LDRH     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+156
        BL       SCCB_WriteByte
//  224   SCCB_WriteByte(OV7725_SIGN,0x0E);//0x06  BRIGHT为正       0x0E    BRIGHT为负
        MOVS     R1,#+14
        MOVS     R0,#+171
        BL       SCCB_WriteByte
//  225   SCCB_WriteByte(OV7725_UVADJ0,0x11);
        MOVS     R1,#+17
        MOVS     R0,#+158
        BL       SCCB_WriteByte
//  226   SCCB_WriteByte(OV7725_UVADJ1,0x02);
        MOVS     R1,#+2
        MOVS     R0,#+159
        BL       SCCB_WriteByte
//  227 }
        POP      {R0,PC}          ;; return
//  228 /*!
//  229  *  @brief      二值化图像解压（空间 换 时间 解压）
//  230  *  @param      dst             图像解压目的地址
//  231  *  @param      src             图像解压源地址
//  232  *  @param      srclen          二值化图像的占用空间大小
//  233  *  @since      v5.0            img_extract(img, imgbuff,CAMERA_SIZE);
//  234  *  Sample usage:
//  235  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 void img_extract(uint8 *dst, uint8 *src, uint32 srclen)
//  237 {
img_extract:
        PUSH     {R3-R5}
        MOVS     R3,R0
//  238     uint8 colour[2] = {WHITE, BLACK}; //分别对应的颜色
        LDR.N    R0,??DataTable12_26
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+0]
//  239     //注： 0 表示 白色，1表示 黑色
//  240     uint8 tmpsrc;
//  241     while(srclen --)
??img_extract_0:
        MOVS     R0,R2
        SUBS     R2,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??img_extract_1
//  242     {
//  243       if(srclen%10!=9)
        MOVS     R0,#+10
        UDIV     R5,R2,R0
        MLS      R0,R0,R5,R2
        CMP      R0,#+9
        BEQ.N    ??img_extract_2
//  244       {
//  245           tmpsrc = *src++;
        LDRB     R0,[R1, #+0]
        MOVS     R4,R0
        ADDS     R1,R1,#+1
//  246                 
//  247         *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        MOV      R0,SP
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R5,R5,#+7
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  248         *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+6,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  249         *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+5,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  250         *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+4,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  251         *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+3,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  252         *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+2,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  253         *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+1,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  254         *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R5,R5,#0x1
        LDRB     R0,[R0, R5]
        STRB     R0,[R3, #+0]
        ADDS     R3,R3,#+1
        B.N      ??img_extract_0
//  255       }
//  256 
//  257       else
//  258       { 
//  259         temp=*src++;
??img_extract_2:
        LDRB     R0,[R1, #+0]
        LDR.N    R5,??DataTable12_27
        STRB     R0,[R5, #+0]
        ADDS     R1,R1,#+1
//  260         //srclen++;
//  261         *dst++ = 0;
        MOVS     R0,#+0
        STRB     R0,[R3, #+0]
        ADDS     R0,R3,#+1
//  262         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  263         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  264         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  265         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  266         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  267         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R0,R0,#+1
//  268         *dst++ = 0;
        MOVS     R3,#+0
        STRB     R3,[R0, #+0]
        ADDS     R3,R0,#+1
        B.N      ??img_extract_0
//  269       }
//  270     }    
//  271 //      uint8 colour[2] = {WHITE, BLACK}; //分别对应的颜色
//  272 //    //注： 0 表示 白色，1表示 黑色
//  273 //    uint8 tmpsrc;
//  274 //    while(srclen --)
//  275 //    {
//  276 //        tmpsrc = *src++;
//  277 //        *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
//  278 //        *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
//  279 //        *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
//  280 //        *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
//  281 //        *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
//  282 //        *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
//  283 //        *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
//  284 //        *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
//  285 //    } 
//  286 }
??img_extract_1:
        POP      {R0,R4,R5}
        BX       LR               ;; return
//  287 /*
//  288  *@功能说明：解压图像
//  289  *@方法：
//  290  *index 场计数  row起始行 srcLen数据长度
//  291  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  292 void Unzip(uint8 index,uint16 srcLen)
//  293 {
Unzip:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  294 	if(index)//判断是处理偶场还是奇场
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Unzip_0
//  295 	{ img_extract(*imgbuff,(uint8*)Pix_Data1,srcLen+60);}//解压偶场srcLen
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R2,R2,#+60
        LDR.N    R1,??DataTable12_5
        LDR.N    R0,??DataTable12_28
        BL       img_extract
        B.N      ??Unzip_1
//  296 	else 
//  297 	{ img_extract(*imgbuff,(uint8*)Pix_Data0,srcLen+60);}//解压奇场srcLen
??Unzip_0:
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R2,R2,#+60
        LDR.N    R1,??DataTable12_7
        LDR.N    R0,??DataTable12_28
        BL       img_extract
//  298 }
??Unzip_1:
        POP      {R0,R4,R5,PC}    ;; return
//  299 
//  300 //摄像头总初始化

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  301 void Camera_Init(void)
//  302 {
Camera_Init:
        PUSH     {R7,LR}
//  303 	ov7725_init();
        BL       ov7725_init
//  304 	VSY_init();
        BL       VSY_init
//  305 	PCLK_init();
        BL       PCLK_init
//  306 	IO_init();
        BL       IO_init
//  307 	DMA_init();
        BL       DMA_init
//  308 	uint8 device_id = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  309 	SCCB_ReadByte(&device_id,1,OV7725_COM4);
        MOVS     R2,#+13
        MOVS     R1,#+1
        MOV      R0,SP
        BL       SCCB_ReadByte
//  310 }
        POP      {R0,PC}          ;; return
//  311 /*
//  312  *@功能说明：液晶显示
//  313  *@方法：
//  314  *
//  315  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 void img_display(void)
//  317 {
img_display:
        PUSH     {R3-R5,LR}
//  318   int16 i,j;    
//  319   
//  320   for(i = 0;i < 60;i++)
        MOVS     R5,#+0
??img_display_0:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+60
        BGE.N    ??img_display_1
//  321   {
//  322     for(j = 0; j < 80;j++)
        MOVS     R0,#+0
        MOVS     R4,R0
??img_display_2:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+80
        BGE.N    ??img_display_3
//  323     { 
//  324         dst[i][j] = imgbuff[i][j]; 
        MOVS     R0,#+80
        LDR.N    R1,??DataTable12_29
        SMULBB   R2,R5,R0
        ADD      R1,R1,R2
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDR.N    R3,??DataTable12_28
        SMULBB   R0,R5,R0
        ADD      R0,R3,R0
        MOVS     R3,R4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRB     R0,[R0, R3]
        STRB     R0,[R1, R2]
//  325       
//  326     }
        ADDS     R4,R4,#+1
        B.N      ??img_display_2
//  327   }
??img_display_3:
        ADDS     R5,R5,#+1
        B.N      ??img_display_0
//  328   LED_PrintImage(*dst,60,80);
??img_display_1:
        MOVS     R2,#+80
        MOVS     R1,#+60
        LDR.N    R0,??DataTable12_29
        BL       LED_PrintImage
//  329 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DATA32
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DATA32
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DATA32
        DC32     ov7725_eagle_img_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DATA32
        DC32     fieldCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DATA32
        DC32     Pix_Data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DATA32
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DATA32
        DC32     Pix_Data0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DATA32
        DC32     DMA_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DATA32
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DATA32
        DC32     DMA_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DATA32
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DATA32
        DC32     `get_img::flag`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DATA32
        DC32     IO_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DATA32
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DATA32
        DC32     nvic_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DATA32
        DC32     VSY_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DATA32
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DATA32
        DC32     0x90013

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DATA32
        DC32     VSY_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DATA32
        DC32     PCLK_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DATA32
        DC32     0x20003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DATA32
        DC32     0x400ff0d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_23:
        DATA32
        DC32     DMA_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_24:
        DATA32
        DC32     GrayValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_25:
        DATA32
        DC32     ImgThreshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_26:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_27:
        DATA32
        DC32     temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_29:
        DATA32
        DC32     dst

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
?_0:
        DATA8
        DC8 255, 0

        END
//  330 
// 
// 10 908 bytes in section .bss
//      5 bytes in section .data
//      2 bytes in section .rodata
//  1 588 bytes in section .text
// 
//  1 588 bytes of CODE  memory
//      2 bytes of CONST memory
// 10 913 bytes of DATA  memory
//
//Errors: none
//Warnings: none
