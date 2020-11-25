///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:09
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\Bluetooth.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW194C.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\Bluetooth.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\Bluetooth.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_NVIC_Init
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN imgbuff
        EXTERN nvic_init_struct

        PUBLIC BinaryNumberBuffer
        PUBLIC BinaryNumberToChar
        PUBLIC Bluetooth_Decoder
        PUBLIC Bluetooth_Encoder
        PUBLIC Bluetooth_Init
        PUBLIC BtRcvMsg
        PUBLIC BtSndMsg
        PUBLIC CRC_CHECK
        PUBLIC CharToBinaryNumber
        PUBLIC OutData
        PUBLIC OutPut_Data
        PUBLIC btInfoInit
        PUBLIC btRcvInfo
        PUBLIC btSndInfo
        PUBLIC bt_Isr
        PUBLIC fusion_visualscope
        PUBLIC isConnect
        PUBLIC send_img_data

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\Bluetooth.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 #include "stdbool.h"
//    9 
//   10 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 float OutData[4];           //数组中四个元素为全局变量，供OutPut_Data调用
OutData:
        DS8 16
//   12                             //只需向数组中写入数据即可
//   13                             //0-CH1  1-CH2  2-CH3  3-CH4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 static UART_InitTypeDef bluetooth_init_structure; 
bluetooth_init_structure:
        DS8 20
//   15  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 btInfo btSndInfo,btRcvInfo;
btSndInfo:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
btRcvInfo:
        DS8 8

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void Bluetooth_Init(void)
//   18 {
Bluetooth_Init:
        PUSH     {R2-R4,LR}
//   19   nvic_init_struct.NVIC_IRQChannel = UART4_RX_TX_IRQn;
        LDR.N    R1,??DataTable7
        MOVS     R0,#+53
        STRB     R0,[R1, #+0]
//   20   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
        MOVS     R0,#+5
        STR      R0,[R1, #+4]
//   21   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        STR      R0,[R1, #+8]
//   22   nvic_init_struct.NVIC_IRQChannelSubPriority        = 2;
        MOVS     R0,#+2
        STR      R0,[R1, #+12]
//   23   LPLD_NVIC_Init(nvic_init_struct);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   24   
//   25   bluetooth_init_structure.UART_Uartx=UART4;
        LDR.N    R4,??DataTable7_1
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        STR      R0,[R4, #+0]
//   26   bluetooth_init_structure.UART_BaudRate = 115200;
        MOVS     R0,#+115200
        STR      R0,[R4, #+4]
//   27   bluetooth_init_structure.UART_TxPin=PTE24;
        MOVS     R0,#+148
        STRB     R0,[R4, #+8]
//   28   bluetooth_init_structure.UART_RxPin=PTE25;
        MOVS     R0,#+149
        STRB     R0,[R4, #+9]
//   29   
//   30   bluetooth_init_structure.UART_RxIntEnable = TRUE;    //使能接收中断
        MOVS     R0,#+1
        STRB     R0,[R4, #+10]
//   31   bluetooth_init_structure.UART_RxIsr = bt_Isr;   //设置接收中断函数
        ADR.W    R0,bt_Isr
        STR      R0,[R4, #+12]
//   32   LPLD_UART_Init(bluetooth_init_structure);           //初始化UART
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   33   LPLD_UART_EnableIrq(bluetooth_init_structure);      //使能UART中断
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   34 }
        POP      {R0,R1,R4,PC}    ;; return
//   35 
//   36 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   37 int8 BtSndMsg = 0;
BtSndMsg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   38 int8 BtRcvMsg = 0;
BtRcvMsg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   39 bool isConnect = 0;
isConnect:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   40 uint8 BinaryNumberBuffer[8];//蓝牙二进制八位缓存buf
BinaryNumberBuffer:
        DS8 8
//   41 
//   42 
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void CharToBinaryNumber(int8 index,uint8 *buffer)
//   45 {
CharToBinaryNumber:
        PUSH     {R4}
//   46 	for(int16 i = 0;i < 8;i++)
        MOVS     R2,#+0
        B.N      ??CharToBinaryNumber_0
//   47 	{ *(buffer + i) = index >> i & 0x01; }
??CharToBinaryNumber_1:
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        ASRS     R3,R3,R2
        ANDS     R3,R3,#0x1
        MOVS     R4,R2
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R3,[R1, R4]
        ADDS     R2,R2,#+1
??CharToBinaryNumber_0:
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+8
        BLT.N    ??CharToBinaryNumber_1
//   48 }
        POP      {R4}
        BX       LR               ;; return
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void BinaryNumberToChar(int8 *index,uint8 *buffer)
//   51 {
BinaryNumberToChar:
        PUSH     {R4}
//   52 	for(int16 i = 0;i < 8;i++)
        MOVS     R2,#+0
        B.N      ??BinaryNumberToChar_0
//   53 	{ (*index) |= *(buffer + i) << i; }
??BinaryNumberToChar_1:
        LDRB     R3,[R0, #+0]
        MOVS     R4,R2
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R4,[R1, R4]
        LSLS     R4,R4,R2
        ORRS     R3,R4,R3
        STRB     R3,[R0, #+0]
        ADDS     R2,R2,#+1
??BinaryNumberToChar_0:
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+8
        BLT.N    ??BinaryNumberToChar_1
//   54 }
        POP      {R4}
        BX       LR               ;; return
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void btInfoInit(void)
//   57 {
//   58   btSndInfo.Connect        = 0;
btInfoInit:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   59   btSndInfo.isStop         = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   60   btSndInfo.CarJoinArea    = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//   61   btSndInfo.CarJoinEnd     = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
//   62   btSndInfo.RingStop       = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//   63   btSndInfo.Rings          = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//   64   btSndInfo.buf6           = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//   65   btSndInfo.buf7           = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//   66   
//   67   btRcvInfo.Connect        = 0;
        LDR.N    R0,??DataTable7_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   68   btRcvInfo.isStop         = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   69   btRcvInfo.CarJoinArea    = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//   70   btRcvInfo.CarJoinEnd     = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
//   71   btRcvInfo.RingStop       = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//   72   btRcvInfo.Rings          = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//   73   btRcvInfo.buf6           = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//   74   btRcvInfo.buf7           = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//   75   
//   76   
//   77   for(int16 i = 0;i < 8;i++)
        MOVS     R0,#+0
        B.N      ??btInfoInit_0
//   78   {
//   79     BinaryNumberBuffer[i] = 0;
??btInfoInit_1:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable7_5
        MOVS     R3,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        STRB     R1,[R2, R3]
//   80   }
        ADDS     R0,R0,#+1
??btInfoInit_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+8
        BLT.N    ??btInfoInit_1
//   81 }
        BX       LR               ;; return
//   82 //蓝牙发送数据编码

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void Bluetooth_Encoder(void)
//   84 { 
Bluetooth_Encoder:
        PUSH     {R3-R5,LR}
//   85   BtSndMsg = 0;
        LDR.N    R4,??DataTable7_6
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//   86   
//   87   BinaryNumberBuffer[0] = btSndInfo.Connect;
        LDR.N    R5,??DataTable7_5
        LDR.N    R0,??DataTable7_3
        LDRB     R1,[R0, #+0]
        STRB     R1,[R5, #+0]
//   88   BinaryNumberBuffer[1] = btSndInfo.isStop;
        LDRB     R1,[R0, #+1]
        STRB     R1,[R5, #+1]
//   89   BinaryNumberBuffer[2] = btSndInfo.CarJoinArea;
        LDRB     R1,[R0, #+2]
        STRB     R1,[R5, #+2]
//   90   BinaryNumberBuffer[3] = btSndInfo.CarJoinEnd;
        LDRB     R1,[R0, #+3]
        STRB     R1,[R5, #+3]
//   91   BinaryNumberBuffer[4] = btSndInfo.RingStop;
        LDRB     R1,[R0, #+4]
        STRB     R1,[R5, #+4]
//   92   BinaryNumberBuffer[5] = btSndInfo.Rings;
        LDRB     R1,[R0, #+5]
        STRB     R1,[R5, #+5]
//   93   BinaryNumberBuffer[6] = btSndInfo.buf6;
        LDRB     R1,[R0, #+6]
        STRB     R1,[R5, #+6]
//   94   BinaryNumberBuffer[7] = btSndInfo.buf7;
        LDRB     R0,[R0, #+7]
        STRB     R0,[R5, #+7]
//   95   
//   96   BinaryNumberToChar(&BtSndMsg,BinaryNumberBuffer);
        MOVS     R1,R5
        MOVS     R0,R4
        BL       BinaryNumberToChar
//   97   LPLD_UART_PutChar(UART4,BtSndMsg);
        LDRSB    R1,[R4, #+0]
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//   98   
//   99   for(int16 i = 0;i < 8;i++)
        MOVS     R0,#+0
        B.N      ??Bluetooth_Encoder_0
//  100   {
//  101     BinaryNumberBuffer[i] = 0;
??Bluetooth_Encoder_1:
        MOVS     R1,#+0
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        STRB     R1,[R5, R2]
//  102   }
        ADDS     R0,R0,#+1
??Bluetooth_Encoder_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+8
        BLT.N    ??Bluetooth_Encoder_1
//  103 }
        POP      {R0,R4,R5,PC}    ;; return
//  104 
//  105 
//  106 //蓝牙接收数据译码

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 void Bluetooth_Decoder(void)
//  108 {
Bluetooth_Decoder:
        PUSH     {R3-R5,LR}
//  109 
//  110   for(int16 i = 0;i < 8;i++)
        MOVS     R0,#+0
        B.N      ??Bluetooth_Decoder_0
//  111   {
//  112     BinaryNumberBuffer[i] = 0;
??Bluetooth_Decoder_1:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable7_5
        MOVS     R3,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        STRB     R1,[R2, R3]
//  113   }
        ADDS     R0,R0,#+1
??Bluetooth_Decoder_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+8
        BLT.N    ??Bluetooth_Decoder_1
//  114   
//  115   
//  116   CharToBinaryNumber(BtRcvMsg,BinaryNumberBuffer);
        LDR.N    R4,??DataTable7_7
        LDR.N    R5,??DataTable7_5
        MOVS     R1,R5
        LDRSB    R0,[R4, #+0]
        BL       CharToBinaryNumber
//  117   
//  118   btRcvInfo.Connect         = BinaryNumberBuffer[0];
        LDR.N    R0,??DataTable7_4
        LDRSB    R1,[R5, #+0]
        STRB     R1,[R0, #+0]
//  119   btRcvInfo.isStop          = BinaryNumberBuffer[1];
        LDRB     R1,[R5, #+1]
        STRB     R1,[R0, #+1]
//  120   btRcvInfo.CarJoinArea     = BinaryNumberBuffer[2];
        LDRB     R1,[R5, #+2]
        STRB     R1,[R0, #+2]
//  121   btRcvInfo.CarJoinEnd      = BinaryNumberBuffer[3];
        LDRB     R1,[R5, #+3]
        STRB     R1,[R0, #+3]
//  122   btRcvInfo.RingStop        = BinaryNumberBuffer[4];
        LDRB     R1,[R5, #+4]
        STRB     R1,[R0, #+4]
//  123   btRcvInfo.Rings           = BinaryNumberBuffer[5];
        LDRB     R1,[R5, #+5]
        STRB     R1,[R0, #+5]
//  124   btRcvInfo.buf6            = BinaryNumberBuffer[6];
        LDRB     R1,[R5, #+6]
        STRB     R1,[R0, #+6]
//  125   btRcvInfo.buf7            = BinaryNumberBuffer[7];
        LDRB     R1,[R5, #+7]
        STRB     R1,[R0, #+7]
//  126   
//  127   //////////////////////////////////////////////轮询法检测蓝牙是否连接//////////////////////////////////////////////
//  128   static uint8 cnt = 0;
//  129   if(++cnt > 25)
        LDR.N    R0,??DataTable7_8
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
        LDRB     R1,[R0, #+0]
        CMP      R1,#+26
        BLT.N    ??Bluetooth_Decoder_2
//  130   {
//  131     cnt = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  132     if(isConnect == false)
        LDR.N    R1,??DataTable7_9
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??Bluetooth_Decoder_3
//  133     {
//  134       BtRcvMsg = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  135     }
//  136     isConnect = false;
??Bluetooth_Decoder_3:
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  137   }
//  138   //////////////////////////////////////////////轮询法检测蓝牙是否连接//////////////////////////////////////////////
//  139 }
??Bluetooth_Decoder_2:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Bluetooth_Decoder::cnt`:
        DS8 1
//  140 
//  141 /*
//  142  *  创口中断
//  143  *  测试专用
//  144  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//  145  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  146 void bt_Isr(void)
//  147 { 
//  148   isConnect = true;
bt_Isr:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_9
        STRB     R0,[R1, #+0]
//  149   BtRcvMsg = UART4->D;
        LDR.N    R0,??DataTable7_10  ;; 0x400ea007
        LDRSB    R0,[R0, #+0]
        LDR.N    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//  150 }
        BX       LR               ;; return
//  151 
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void send_img_data(void)
//  154 {
send_img_data:
        PUSH     {R4,LR}
//  155         LPLD_UART_PutChar(UART4,0x00);
        LDR.N    R4,??DataTable7_2  ;; 0x400ea000
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
//  156         LPLD_UART_PutChar(UART4,0xff);
        MOVS     R1,#-1
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
//  157         LPLD_UART_PutChar(UART4,0x01);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
//  158         LPLD_UART_PutChar(UART4,0x01);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
//  159         LPLD_UART_PutCharArr(UART4,(int8 *)imgbuff,IMG_ROWS*IMG_COLS);
        MOV      R2,#+4800
        LDR.N    R1,??DataTable7_11
        MOVS     R0,R4
        BL       LPLD_UART_PutCharArr
//  160 }
        POP      {R4,PC}          ;; return
//  161 ////////////////////////////////////////////////////以下为蓝牙示波器专用函数///////////////////////////////////////////////////////////
//  162 /********************************************************************************
//  163 *函数名称:CRC_CHECK
//  164 ----------------------------------------
//  165 此函数为数据校验函数，被OutPut_Data调用。
//  166 不需改动
//  167 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 uint16 CRC_CHECK(uint8 *Buf, uint8 CRC_CNT)
//  169 {
CRC_CHECK:
        PUSH     {R4,R5}
        MOVS     R2,R0
//  170     uint16 CRC_Temp;
//  171     uint8 i,j;
//  172     CRC_Temp = 0xffff;
        MOVW     R0,#+65535
//  173 
//  174     for (i=0;i<CRC_CNT; i++){      
        MOVS     R4,#+0
        B.N      ??CRC_CHECK_0
??CRC_CHECK_1:
        ADDS     R4,R4,#+1
??CRC_CHECK_0:
        MOVS     R3,R4
        MOVS     R5,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R3,R5
        BCS.N    ??CRC_CHECK_2
//  175         CRC_Temp ^= Buf[i];
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R3,[R2, R3]
        EORS     R0,R3,R0
//  176         for (j=0;j<8;j++) {
        MOVS     R3,#+0
??CRC_CHECK_3:
        MOVS     R5,R3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??CRC_CHECK_1
//  177             if (CRC_Temp & 0x01)
        LSLS     R5,R0,#+31
        BMI.N    ??CRC_CHECK_4
//  178                 CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
//  179             else
//  180                 CRC_Temp = CRC_Temp >> 1;
??CRC_CHECK_5:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        B.N      ??CRC_CHECK_6
??CRC_CHECK_4:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R5,R0
        MOVW     R0,#+40961
        EORS     R0,R0,R5, LSR #+1
//  181         }
??CRC_CHECK_6:
        ADDS     R3,R3,#+1
        B.N      ??CRC_CHECK_3
//  182     }
//  183     return(CRC_Temp);
??CRC_CHECK_2:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
//  184 }
//  185 
//  186 /******************************************************************************
//  187 *函数名称：OutPut_Data
//  188 *输入参数：无
//  189 *输出参数：无
//  190 *函数功能：将数据发送到Serial Scope显示
//  191 ------------------------------------------------
//  192 根据硬件mcu编写串口发送一个字节的函数供本函数调用
//  193 调用本函数即可将OutData数组中的四个元素显示到Serial Scope中
//  194 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 void OutPut_Data(void)
//  196 {
OutPut_Data:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
//  197   int32 temp[4] = {0};
        ADD      R0,SP,#+28
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//  198   uint32 temp1[4] = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//  199   uint8 databuf[10] = {0};
        MOV      R0,SP
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0,{R1-R3}
//  200   uint8 i;
//  201   uint16 CRC16 = 0;
        MOVS     R0,#+0
//  202   for(i=0;i<4;i++)
        MOVS     R4,#+0
        B.N      ??OutPut_Data_0
//  203   {
//  204     temp[i]  = (int32)OutData[i];
??OutPut_Data_1:
        ADD      R5,SP,#+28
        LDR.N    R0,??DataTable7_12
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        BL       __aeabi_f2iz
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R0,[R5, R1, LSL #+2]
//  205     temp1[i] = (uint32)temp[i];
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R0,[R5, R0, LSL #+2]
        ADD      R1,SP,#+12
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R0,[R1, R2, LSL #+2]
//  206   }
        ADDS     R4,R4,#+1
??OutPut_Data_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??OutPut_Data_1
//  207   
//  208   for(i=0;i<4;i++) 
        MOVS     R0,#+0
        B.N      ??OutPut_Data_2
//  209   {
//  210     databuf[i*2]   = (uint8)(temp1[i]%256);
??OutPut_Data_3:
        ADD      R1,SP,#+12
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R2,[R1, R2, LSL #+2]
        MOV      R3,SP
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R2,[R3, R4, LSL #+1]
//  211     databuf[i*2+1] = (uint8)(temp1[i]/256);
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R1,[R1, R2, LSL #+2]
        LSRS     R1,R1,#+8
        MOV      R2,SP
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R2,R2,R3, LSL #+1
        STRB     R1,[R2, #+1]
//  212   }
        ADDS     R0,R0,#+1
??OutPut_Data_2:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+4
        BLT.N    ??OutPut_Data_3
//  213   
//  214   CRC16 = CRC_CHECK(databuf,8);
        MOVS     R1,#+8
        MOV      R0,SP
        BL       CRC_CHECK
//  215   databuf[8] = CRC16%256;
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        MOV      R4,SP
        SDIV     R3,R1,R2
        MLS      R1,R2,R3,R1
        STRB     R1,[R4, #+8]
//  216   databuf[9] = CRC16/256;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R1,#+256
        SDIV     R0,R0,R1
        STRB     R0,[SP, #+9]
//  217   
//  218   for(i=0;i<10;i++)
        MOVS     R5,#+0
        B.N      ??OutPut_Data_4
//  219     LPLD_UART_PutChar(UART4,databuf[i]);                                    //此处根据硬件修改 
??OutPut_Data_5:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRSB    R0,[R4, R0]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_2  ;; 0x400ea000
        BL       LPLD_UART_PutChar
        ADDS     R5,R5,#+1
??OutPut_Data_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BLT.N    ??OutPut_Data_5
//  220   //串口发送一个字节
//  221 }
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return
//  222 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 void fusion_visualscope(float index1,float index2)
//  224 {
fusion_visualscope:
        PUSH     {R7,LR}
//  225   OutData[0] = index1;    
        LDR.N    R2,??DataTable7_12
        STR      R0,[R2, #+0]
//  226   OutData[1] = index2;
        STR      R1,[R2, #+4]
//  227   OutPut_Data();
        BL       OutPut_Data
//  228 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DATA32
        DC32     nvic_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DATA32
        DC32     bluetooth_init_structure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DATA32
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DATA32
        DC32     btSndInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DATA32
        DC32     btRcvInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DATA32
        DC32     BinaryNumberBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DATA32
        DC32     BtSndMsg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DATA32
        DC32     BtRcvMsg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DATA32
        DC32     `Bluetooth_Decoder::cnt`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DATA32
        DC32     isConnect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DATA32
        DC32     0x400ea007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DATA32
        DC32     OutData

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA32
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA32
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA8
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
//  229 
// 
//  64 bytes in section .bss
//  44 bytes in section .rodata
// 900 bytes in section .text
// 
// 900 bytes of CODE  memory
//  44 bytes of CONST memory
//  64 bytes of DATA  memory
//
//Errors: none
//Warnings: none
