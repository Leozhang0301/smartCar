///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:20
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\OV7725.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW457D.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\OV7725.c -D LPLD_K60
//        -lCN
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\OV7725.s
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

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\OV7725.c
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
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
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
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
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
//   17 uint16 ImgThreshold = 60;//152 //阈值
ImgThreshold:
        DATA16
        DC16 60

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
        DS8 1200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 uint8 Pix_Data1[pixels];
Pix_Data1:
        DS8 1200

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
//   28 
//   29 //场中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void VSY_isr(void)
//   31 { 
VSY_isr:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+28
//   32   uint32 flag = (PORTC->ISFR);
        LDR.W    R4,??DataTable12_2  ;; 0x4004b0a0
        LDR      R0,[R4, #+0]
//   33   LPLD_GPIO_ClearIntFlag(PORTC);                  //清中断标志位
        MOVS     R0,#-1
        STR      R0,[R4, #+0]
//   34   //场中断需要判断是场结束还是场开始
//   35   if(ov7725_eagle_img_flag == IMG_START)        //需要开始采集图像
        LDR.W    R5,??DataTable12_3
        LDRB     R0,[R5, #+0]
        CMP      R0,#+4
        BNE.N    ??VSY_isr_0
//   36   {
//   37     ov7725_eagle_img_flag = IMG_GATHER;         //标记图像采集中
        MOVS     R0,#+3
        STRB     R0,[R5, #+0]
//   38     disable_irq(PORTC_IRQn);
        MOVS     R0,#+89
        BL       __NVIC_DisableIRQ
//   39     
//   40     PORTC->ISFR = 1 << 17;                      //清空PCLK标志位 
        MOVS     R0,#+131072
        STR      R0,[R4, #+0]
//   41     
//   42     if(fieldCnt)
        LDR.W    R1,??DataTable12_4
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??VSY_isr_1
//   43     { LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data1);}//恢复地址
        LDR.W    R0,??DataTable12_5
        LDR.W    R2,??DataTable12_6  ;; 0x40009010
        STR      R0,[R2, #+0]
        B.N      ??VSY_isr_2
//   44     else
//   45     { LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data0);}//恢复地址
??VSY_isr_1:
        LDR.W    R0,??DataTable12_7
        LDR.W    R2,??DataTable12_6  ;; 0x40009010
        STR      R0,[R2, #+0]
//   46     
//   47     fieldCnt = fieldCnt ? 0 : 1;  //奇偶场计数
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
//   48     
//   49     DMA_flag = 1;
??VSY_isr_4:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_8
        STRB     R0,[R1, #+0]
//   50     
//   51     LPLD_DMA_EnableReq(DMA_CH0);                //使能通道CHn 硬件请求
        LDR.W    R0,??DataTable12_9  ;; 0x4000800c
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//   52     
//   53     LPLD_DMA_EnableIrq(DMA_init_struct);        //开DMA结束中断
        LDR.W    R1,??DataTable12_10
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_EnableIrq
        B.N      ??VSY_isr_5
//   54   }
//   55   else                                         //图像采集错误
//   56   {
//   57     disable_irq(PORTC_IRQn);                    //关闭PTA的中断
??VSY_isr_0:
        MOVS     R0,#+89
        BL       __NVIC_DisableIRQ
//   58     ov7725_eagle_img_flag = IMG_FAIL;           //标记图像采集失败
        MOVS     R0,#+2
        STRB     R0,[R5, #+0]
//   59   }
//   60 }
??VSY_isr_5:
        ADD      SP,SP,#+28
        POP      {R4,R5,PC}       ;; return
//   61 
//   62 
//   63 //DMA结束中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 void DMA_isr(void)
//   65 {
DMA_isr:
        PUSH     {R7,LR}
//   66   disable_irq(PORTC_IRQn);
        MOVS     R0,#+89
        BL       __NVIC_DisableIRQ
//   67   ov7725_eagle_img_flag = IMG_FINISH ;//关闭场中断
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
//   68   DMA0->INT |= 0x1u<<0;
        LDR.W    R0,??DataTable12_11  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//   69   enable_irq(PORTC_IRQn);
        MOVS     R0,#+89
        BL       __NVIC_EnableIRQ
//   70 }
        POP      {R0,PC}          ;; return
//   71 
//   72 
//   73 //采集函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void get_img(void)
//   75 {
get_img:
        PUSH     {R7,LR}
//   76   static u8 flag = 0;
//   77 
//   78   if(ov7725_eagle_img_flag != IMG_FINISH)      //图像采集是否完成
        LDR.W    R1,??DataTable12_3
        LDRB     R0,[R1, #+0]
        CMP      R0,#+1
        BEQ.N    ??get_img_0
//   79   {
//   80     flag = 0;//可以进行下一次场中断初始化
        MOVS     R0,#+0
        LDR.W    R2,??DataTable12_12
        STRB     R0,[R2, #+0]
//   81     if(ov7725_eagle_img_flag == IMG_FAIL)         //假如图像采集错误，则重新开始采集
        LDRB     R0,[R1, #+0]
        CMP      R0,#+2
        BNE.N    ??get_img_1
//   82     {
//   83       ov7725_eagle_img_flag = IMG_START;          //开始采集图像
        MOVS     R0,#+4
        STRB     R0,[R1, #+0]
//   84       LPLD_GPIO_ClearIntFlag(PORTC);              //写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
        MOVS     R0,#-1
        LDR.W    R1,??DataTable12_2  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//   85       enable_irq(PORTC_IRQn);                     //允许PTA的中断
        MOVS     R0,#+89
        BL       __NVIC_EnableIRQ
        B.N      ??get_img_1
//   86     }
//   87   }
//   88   else if(0 == flag)//首次场中断初始化
??get_img_0:
        LDR.W    R2,??DataTable12_12
        LDRB     R0,[R2, #+0]
        CMP      R0,#+0
        BNE.N    ??get_img_1
//   89   {
//   90     flag = 1;
        MOVS     R0,#+1
        STRB     R0,[R2, #+0]
//   91     //开始首次采集图像
//   92     ov7725_eagle_img_flag = IMG_START;//开始采集图像
        MOVS     R0,#+4
        STRB     R0,[R1, #+0]
//   93     LPLD_GPIO_ClearIntFlag(PORTC);//写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
        MOVS     R0,#-1
        LDR.W    R1,??DataTable12_2  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//   94     enable_irq(PORTC_IRQn);//允许PTC的中断
        MOVS     R0,#+89
        BL       __NVIC_EnableIRQ
//   95 
//   96   }  
//   97 }
??get_img_1:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`get_img::flag`:
        DS8 1
//   98 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   99 void IO_init(void)
//  100 {
IO_init:
        PUSH     {R7,LR}
//  101   //OV数据口初始化：PTD0~PTD7
//  102   IO_init_struct.GPIO_PTx = PTD;
        LDR.W    R1,??DataTable12_13
        LDR.W    R0,??DataTable12_14  ;; 0x400ff0c0
        STR      R0,[R1, #+0]
//  103   IO_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  104   IO_init_struct.GPIO_Pins = GPIO_Pin8_15;
        MOV      R0,#+65280
        STR      R0,[R1, #+4]
//  105   IO_init_struct.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DIS;
        MOVS     R0,#+0
        STR      R0,[R1, #+8]
//  106   LPLD_GPIO_Init(IO_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  107 }
        POP      {R0,PC}          ;; return
//  108 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 void VSY_init(void)
//  110 {
VSY_init:
        PUSH     {R7,LR}
//  111   nvic_init_struct.NVIC_IRQChannel = PORTC_IRQn;
        LDR.W    R1,??DataTable12_15
        MOVS     R0,#+89
        STRB     R0,[R1, #+0]
//  112   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[R1, #+4]
//  113   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+8]
//  114   nvic_init_struct.NVIC_IRQChannelSubPriority        = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+12]
//  115   LPLD_NVIC_Init(nvic_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  116   
//  117   VSY_init_struct.GPIO_PTx = PTC;
        LDR.W    R1,??DataTable12_16
        LDR.W    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  118   VSY_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  119   VSY_init_struct.GPIO_Pins = GPIO_Pin18;
        MOVS     R0,#+262144
        STR      R0,[R1, #+4]
//  120   VSY_init_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;
        LDR.W    R0,??DataTable12_18  ;; 0x90013
        STR      R0,[R1, #+8]
//  121   VSY_init_struct.GPIO_Isr = VSY_isr;
        LDR.W    R0,??DataTable12_19
        STR      R0,[R1, #+16]
//  122   LPLD_GPIO_Init(VSY_init_struct); 
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  123 }
        POP      {R0,PC}          ;; return
//  124 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 void PCLK_init(void)
//  126 {
PCLK_init:
        PUSH     {R7,LR}
//  127   PCLK_init_struct.GPIO_PTx = PTC;
        LDR.W    R1,??DataTable12_20
        LDR.W    R0,??DataTable12_17  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  128   PCLK_init_struct.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        STR      R0,[R1, #+4]
//  129   PCLK_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R1, #+12]
//  130   PCLK_init_struct.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP;
        LDR.W    R0,??DataTable12_21  ;; 0x20003
        STR      R0,[R1, #+8]
//  131   LPLD_GPIO_Init(PCLK_init_struct); 
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  132 }
        POP      {R0,PC}          ;; return
//  133 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 void DMA_init(void)
//  135 {
DMA_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  136   nvic_init_struct.NVIC_IRQChannel = DMA0_IRQn;
        LDR.N    R1,??DataTable12_15
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  137   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[R1, #+4]
//  138   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STR      R0,[R1, #+8]
//  139   nvic_init_struct.NVIC_IRQChannelSubPriority        = 1;
        MOVS     R0,#+1
        STR      R0,[R1, #+12]
//  140   LPLD_NVIC_Init(nvic_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//  141   //DMA参数配置
//  142   DMA_init_struct.DMA_CHx = DMA_CH0;        //CH0通道
        LDR.N    R1,??DataTable12_10
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  143   DMA_init_struct.DMA_Req = PORTC_DMAREQ;   //PORTC为请求源
        MOVS     R0,#+51
        STRB     R0,[R1, #+1]
//  144   DMA_init_struct.DMA_MajorLoopCnt = pixels;   //主循环计数值：采集数
        MOV      R0,#+1200
        STRH     R0,[R1, #+4]
//  145   DMA_init_struct.DMA_MinorByteCnt = 1;     //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        STR      R0,[R1, #+8]
//  146   DMA_init_struct.DMA_SourceAddr = (uint32_t)&PTD->PDIR+1;//源地址：PTD0~7
        LDR.N    R0,??DataTable12_22  ;; 0x400ff0d1
        STR      R0,[R1, #+12]
//  147   DMA_init_struct.DMA_DestAddr = (uint32)Pix_Data0;      //目的地址：存放图像的数组
        LDR.N    R0,??DataTable12_7
        STR      R0,[R1, #+24]
//  148   DMA_init_struct.DMA_DestAddrOffset = 1;   //目的地址偏移：每次读入增加1
        MOVS     R0,#+1
        STRH     R0,[R1, #+30]
//  149   DMA_init_struct.DMA_MajorCompleteIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R1, #+37]
//  150   DMA_init_struct.DMA_Isr = DMA_isr;
        LDR.N    R0,??DataTable12_23
        STR      R0,[R1, #+40]
//  151   DMA_init_struct.DMA_AutoDisableReq = TRUE;//自动禁用请求
        MOVS     R0,#+1
        STRB     R0,[R1, #+36]
//  152   //初始化DMA
//  153   LPLD_DMA_Init(DMA_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  154 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  155 
//  156 /*
//  157  * 延时一段时间
//  158  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  159 void delay(void)
//  160 {
//  161   uint16 i, n;
//  162   for(i=0;i<20000;i++)
delay:
        MOVS     R0,#+0
        B.N      ??delay_0
//  163   {
//  164     for(n=0;n<100;n++)
//  165     {
//  166       asm("nop");
??delay_1:
        nop
//  167     }
        ADDS     R1,R1,#+1
??delay_2:
        MOVS     R2,R1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+100
        BLT.N    ??delay_1
        ADDS     R0,R0,#+1
??delay_0:
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+20000
        CMP      R1,R2
        BGE.N    ??delay_3
        MOVS     R1,#+0
        B.N      ??delay_2
//  168   }
//  169 }
??delay_3:
        BX       LR               ;; return
//  170 //ov7725初始化函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 void ov7725_init(void)
//  172 {
ov7725_init:
        PUSH     {R7,LR}
//  173   SCCB_GPIO_init();
        BL       SCCB_GPIO_init
//  174   delay();
        BL       delay
//  175   SCCB_WriteByte(OV7725_COM7,0x80);//复位
        MOVS     R1,#+128
        MOVS     R0,#+18
        BL       SCCB_WriteByte
//  176   delay();
        BL       delay
//  177   SCCB_WriteByte(OV7725_COM4,0x81); //150帧:0xC1,112帧:0x81,75帧:0x41,50帧:0xC1
        MOVS     R1,#+129
        MOVS     R0,#+13
        BL       SCCB_WriteByte
//  178   SCCB_WriteByte(OV7725_CLKRC,0x00);//150帧:0x00,112帧:0x00,75帧:0x00,50帧:0x02
        MOVS     R1,#+0
        MOVS     R0,#+17
        BL       SCCB_WriteByte
//  179   SCCB_WriteByte(OV7725_COM2,0x03);
        MOVS     R1,#+3
        MOVS     R0,#+9
        BL       SCCB_WriteByte
//  180   SCCB_WriteByte(OV7725_COM3,0xD0);//50
        MOVS     R1,#+208
        MOVS     R0,#+12
        BL       SCCB_WriteByte
//  181   SCCB_WriteByte(OV7725_COM7,0x40);
        MOVS     R1,#+64
        MOVS     R0,#+18
        BL       SCCB_WriteByte
//  182   SCCB_WriteByte(OV7725_HSTART,0x3F);
        MOVS     R1,#+63
        MOVS     R0,#+23
        BL       SCCB_WriteByte
//  183   SCCB_WriteByte(OV7725_HSIZE,0x50);
        MOVS     R1,#+80
        MOVS     R0,#+24
        BL       SCCB_WriteByte
//  184   SCCB_WriteByte(OV7725_VSTRT,0x03);
        MOVS     R1,#+3
        MOVS     R0,#+25
        BL       SCCB_WriteByte
//  185   SCCB_WriteByte(OV7725_VSIZE,0x78);
        MOVS     R1,#+120
        MOVS     R0,#+26
        BL       SCCB_WriteByte
//  186   SCCB_WriteByte(OV7725_HREF,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+50
        BL       SCCB_WriteByte
//  187   SCCB_WriteByte(OV7725_SCAL0,0x0A);
        MOVS     R1,#+10
        MOVS     R0,#+160
        BL       SCCB_WriteByte
//  188   SCCB_WriteByte(OV7725_AWB_Ctrl0,0xE0);
        MOVS     R1,#+224
        MOVS     R0,#+99
        BL       SCCB_WriteByte
//  189   SCCB_WriteByte(OV7725_DSPAuto,0xff);
        MOVS     R1,#+255
        MOVS     R0,#+172
        BL       SCCB_WriteByte
//  190   SCCB_WriteByte(OV7725_DSP_Ctrl2,0x0C);
        MOVS     R1,#+12
        MOVS     R0,#+101
        BL       SCCB_WriteByte
//  191   SCCB_WriteByte(OV7725_DSP_Ctrl3,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+102
        BL       SCCB_WriteByte
//  192   SCCB_WriteByte(OV7725_DSP_Ctrl4,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+103
        BL       SCCB_WriteByte
//  193   SCCB_WriteByte(OV7725_HOutSize,0x14);//80:0x14  160:0x28  240:0x3c  320:0x50
        MOVS     R1,#+20
        MOVS     R0,#+41
        BL       SCCB_WriteByte
//  194   SCCB_WriteByte(OV7725_VOutSize,0x1e);//60:0x1e 120:0x3c 180:0x5a 240:0x78
        MOVS     R1,#+30
        MOVS     R0,#+44
        BL       SCCB_WriteByte
//  195   SCCB_WriteByte(OV7725_EXHCH,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+42
        BL       SCCB_WriteByte
//  196   SCCB_WriteByte(OV7725_GAM1,0x0c);
        MOVS     R1,#+12
        MOVS     R0,#+126
        BL       SCCB_WriteByte
//  197   SCCB_WriteByte(OV7725_GAM2,0x16);
        MOVS     R1,#+22
        MOVS     R0,#+127
        BL       SCCB_WriteByte
//  198   SCCB_WriteByte(OV7725_GAM3,0x2a);
        MOVS     R1,#+42
        MOVS     R0,#+128
        BL       SCCB_WriteByte
//  199   SCCB_WriteByte(OV7725_GAM4,0x4e);
        MOVS     R1,#+78
        MOVS     R0,#+129
        BL       SCCB_WriteByte
//  200   SCCB_WriteByte(OV7725_GAM5,0x61);
        MOVS     R1,#+97
        MOVS     R0,#+130
        BL       SCCB_WriteByte
//  201   SCCB_WriteByte(OV7725_GAM6,0x6f);
        MOVS     R1,#+111
        MOVS     R0,#+131
        BL       SCCB_WriteByte
//  202   SCCB_WriteByte(OV7725_GAM7,0x7b);
        MOVS     R1,#+123
        MOVS     R0,#+132
        BL       SCCB_WriteByte
//  203   SCCB_WriteByte(OV7725_GAM8,0x86);
        MOVS     R1,#+134
        MOVS     R0,#+133
        BL       SCCB_WriteByte
//  204   SCCB_WriteByte(OV7725_GAM9,0x8e);
        MOVS     R1,#+142
        MOVS     R0,#+134
        BL       SCCB_WriteByte
//  205   SCCB_WriteByte(OV7725_GAM10,0x97);
        MOVS     R1,#+151
        MOVS     R0,#+135
        BL       SCCB_WriteByte
//  206   SCCB_WriteByte(OV7725_GAM11,0xa4);
        MOVS     R1,#+164
        MOVS     R0,#+136
        BL       SCCB_WriteByte
//  207   SCCB_WriteByte(OV7725_GAM12,0xaf);
        MOVS     R1,#+175
        MOVS     R0,#+137
        BL       SCCB_WriteByte
//  208   SCCB_WriteByte(OV7725_GAM13,0xc5);
        MOVS     R1,#+197
        MOVS     R0,#+138
        BL       SCCB_WriteByte
//  209   SCCB_WriteByte(OV7725_GAM14,0xd7);
        MOVS     R1,#+215
        MOVS     R0,#+139
        BL       SCCB_WriteByte
//  210   SCCB_WriteByte(OV7725_GAM15,0xe8);
        MOVS     R1,#+232
        MOVS     R0,#+140
        BL       SCCB_WriteByte
//  211   SCCB_WriteByte(OV7725_SLOP,0x20);
        MOVS     R1,#+32
        MOVS     R0,#+141
        BL       SCCB_WriteByte
//  212   SCCB_WriteByte(OV7725_LC_RADI,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+74
        BL       SCCB_WriteByte
//  213   SCCB_WriteByte(OV7725_LC_COEF,0x13);
        MOVS     R1,#+19
        MOVS     R0,#+73
        BL       SCCB_WriteByte
//  214   SCCB_WriteByte(OV7725_LC_XC,0x08);
        MOVS     R1,#+8
        MOVS     R0,#+71
        BL       SCCB_WriteByte
//  215   SCCB_WriteByte(OV7725_LC_COEFB,0x14);
        MOVS     R1,#+20
        MOVS     R0,#+75
        BL       SCCB_WriteByte
//  216   SCCB_WriteByte(OV7725_LC_COEFR,0x17);
        MOVS     R1,#+23
        MOVS     R0,#+76
        BL       SCCB_WriteByte
//  217   SCCB_WriteByte(OV7725_LC_CTR,0x05);
        MOVS     R1,#+5
        MOVS     R0,#+70
        BL       SCCB_WriteByte
//  218   SCCB_WriteByte(OV7725_BDBase,0x99);
        MOVS     R1,#+153
        MOVS     R0,#+34
        BL       SCCB_WriteByte
//  219   SCCB_WriteByte(OV7725_BDMStep,0x03);
        MOVS     R1,#+3
        MOVS     R0,#+35
        BL       SCCB_WriteByte
//  220   SCCB_WriteByte(OV7725_SDE,0x04);
        MOVS     R1,#+4
        MOVS     R0,#+166
        BL       SCCB_WriteByte
//  221   SCCB_WriteByte(OV7725_BRIGHT,GrayValue); //亮度值补偿
        LDR.N    R0,??DataTable12_24
        LDRH     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+155
        BL       SCCB_WriteByte
//  222   SCCB_WriteByte(OV7725_CNST,ImgThreshold);//阈值调整(0~255)//0xA0//0x84
        LDR.N    R0,??DataTable12_25
        LDRH     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+156
        BL       SCCB_WriteByte
//  223   SCCB_WriteByte(OV7725_SIGN,0x0E);//0x06  BRIGHT为正       0x0E    BRIGHT为负
        MOVS     R1,#+14
        MOVS     R0,#+171
        BL       SCCB_WriteByte
//  224   SCCB_WriteByte(OV7725_UVADJ0,0x11);
        MOVS     R1,#+17
        MOVS     R0,#+158
        BL       SCCB_WriteByte
//  225   SCCB_WriteByte(OV7725_UVADJ1,0x02);
        MOVS     R1,#+2
        MOVS     R0,#+159
        BL       SCCB_WriteByte
//  226 }
        POP      {R0,PC}          ;; return
//  227 /*!
//  228  *  @brief      二值化图像解压（空间 换 时间 解压）
//  229  *  @param      dst             图像解压目的地址
//  230  *  @param      src             图像解压源地址
//  231  *  @param      srclen          二值化图像的占用空间大小
//  232  *  @since      v5.0            img_extract(img, imgbuff,CAMERA_SIZE);
//  233  *  Sample usage:
//  234  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 void img_extract(uint8 *dst, uint8 *src, uint32 srclen)
//  236 {
img_extract:
        PUSH     {R3-R5}
        MOVS     R3,R0
//  237     uint8 colour[2] = {WHITE, BLACK}; //分别对应的颜色
        LDR.N    R0,??DataTable12_26
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+0]
        B.N      ??img_extract_0
//  238     //注： 0 表示 白色，1表示 黑色
//  239     uint8 tmpsrc;
//  240     while(srclen --)
//  241     {
//  242         tmpsrc = *src++;
??img_extract_1:
        LDRB     R4,[R1, #+0]
        ADDS     R1,R1,#+1
//  243         *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        MOV      R0,SP
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R5,R5,#+7
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  244         *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+6,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  245         *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+5,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  246         *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+4,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  247         *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+3,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  248         *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+2,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  249         *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UBFX     R5,R5,#+1,#+1
        LDRB     R5,[R0, R5]
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  250         *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R4,R4,#0x1
        LDRB     R0,[R0, R4]
        STRB     R0,[R3, #+0]
        ADDS     R3,R3,#+1
//  251     }    
??img_extract_0:
        MOVS     R0,R2
        SUBS     R2,R0,#+1
        CMP      R0,#+0
        BNE.N    ??img_extract_1
//  252 }
        POP      {R0,R4,R5}
        BX       LR               ;; return
//  253 /*
//  254  *@功能说明：解压图像
//  255  *@方法：
//  256  *index 场计数  row起始行 srcLen数据长度
//  257  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void Unzip(uint8 index,uint16 srcLen)
//  259 {
Unzip:
        PUSH     {R7,LR}
        MOVS     R2,R1
//  260 	if(index)//判断是处理偶场还是奇场
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Unzip_0
//  261 	{ img_extract(*imgbuff,(uint8*)Pix_Data1,srcLen);}//解压偶场
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R1,??DataTable12_5
        LDR.N    R0,??DataTable12_27
        BL       img_extract
        B.N      ??Unzip_1
//  262 	else 
//  263 	{ img_extract(*imgbuff,(uint8*)Pix_Data0,srcLen);}//解压奇场
??Unzip_0:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR.N    R1,??DataTable12_7
        LDR.N    R0,??DataTable12_27
        BL       img_extract
//  264 }
??Unzip_1:
        POP      {R0,PC}          ;; return
//  265 
//  266 //摄像头总初始化

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  267 void Camera_Init(void)
//  268 {
Camera_Init:
        PUSH     {R7,LR}
//  269 	ov7725_init();
        BL       ov7725_init
//  270 	VSY_init();
        BL       VSY_init
//  271 	PCLK_init();
        BL       PCLK_init
//  272 	IO_init();
        BL       IO_init
//  273 	DMA_init();
        BL       DMA_init
//  274 	uint8 device_id = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  275 	SCCB_ReadByte(&device_id,1,OV7725_COM4);
        MOVS     R2,#+13
        MOVS     R1,#+1
        MOV      R0,SP
        BL       SCCB_ReadByte
//  276 }
        POP      {R0,PC}          ;; return
//  277 /*
//  278  *@功能说明：液晶显示
//  279  *@方法：
//  280  *
//  281  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  282 void img_display(void)
//  283 {
img_display:
        PUSH     {R3-R5,LR}
//  284   int16 i,j;
//  285   
//  286   for(i = 0;i < 60;i++)
        MOVS     R0,#+0
        B.N      ??img_display_0
//  287   {
//  288     for(j = 0; j < 80;j++)
//  289     { 
//  290       dst[i][j] = imgbuff[i][j]; 
??img_display_1:
        MOVS     R2,#+80
        LDR.N    R3,??DataTable12_28
        SMULBB   R4,R0,R2
        ADD      R3,R3,R4
        MOVS     R4,R1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.N    R5,??DataTable12_27
        SMULBB   R2,R0,R2
        ADD      R2,R5,R2
        MOVS     R5,R1
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LDRB     R2,[R2, R5]
        STRB     R2,[R3, R4]
//  291     }
        ADDS     R1,R1,#+1
??img_display_2:
        MOVS     R2,R1
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+80
        BLT.N    ??img_display_1
        ADDS     R0,R0,#+1
??img_display_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+60
        BGE.N    ??img_display_3
        MOVS     R1,#+0
        B.N      ??img_display_2
//  292   }
//  293   LED_PrintImage(*dst,60,80);
??img_display_3:
        MOVS     R2,#+80
        MOVS     R1,#+60
        LDR.N    R0,??DataTable12_28
        BL       LED_PrintImage
//  294 }
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
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
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
//  295 
// 
// 12 107 bytes in section .bss
//      5 bytes in section .data
//      2 bytes in section .rodata
//  1 480 bytes in section .text
// 
//  1 480 bytes of CODE  memory
//      2 bytes of CONST memory
// 12 112 bytes of DATA  memory
//
//Errors: none
//Warnings: none
