///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:10
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\DEV_SCCB.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW1D65.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\DEV_SCCB.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\DEV_SCCB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC SCCB_GPIO_init
        PUBLIC SCCB_ReadByte
        PUBLIC SCCB_WriteByte

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\DEV_SCCB.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 
//    9 static void SCCB_delay(uint16 i);
//   10 
//   11 /*!
//   12  *  @brief      SCCB延迟函数
//   13  *  @param      time    延时时间
//   14  *  @since      v5.0
//   15  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 static void SCCB_delay(vuint16 time)
//   17 {
SCCB_delay:
        PUSH     {R0}
        B.N      ??SCCB_delay_0
//   18     while(time)
//   19     {
//   20         time--;
??SCCB_delay_1:
        LDRH     R0,[SP, #+0]
        SUBS     R0,R0,#+1
        STRH     R0,[SP, #+0]
//   21     }
??SCCB_delay_0:
        LDRH     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??SCCB_delay_1
//   22 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
//   23 
//   24 ///*!
//   25 // *  @brief      SCCB管脚配置
//   26 // *  @since      v5.0
//   27 // */
//   28 //void SCCB_GPIO_init(void)
//   29 //{
//   30 //  GPIO_InitTypeDef pta;
//   31 //  /********用户可修改值 开始***********/
//   32 //  pta.GPIO_PTx = PTA;
//   33 //  pta.GPIO_Pins = GPIO_Pin12 | GPIO_Pin13;
//   34 //  /********用户可修改值 结束***********/
//   35 //  pta.GPIO_Dir = DIR_OUTPUT;
//   36 //  pta.GPIO_Output = OUTPUT_H;
//   37 //  pta.GPIO_PinControl = NULL;
//   38 //  LPLD_GPIO_Init(pta);
//   39 //}

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void SCCB_GPIO_init(void)
//   41 {
SCCB_GPIO_init:
        PUSH     {R7,LR}
        SUB      SP,SP,#+24
//   42   GPIO_InitTypeDef pta;
//   43   /********用户可修改值 开始***********/
//   44   pta.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable8  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   45   pta.GPIO_Pins = GPIO_Pin12 | GPIO_Pin13;
        MOV      R0,#+12288
        STR      R0,[SP, #+8]
//   46   /********用户可修改值 结束***********/
//   47   pta.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   48   pta.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   49   pta.GPIO_PinControl = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   50   LPLD_GPIO_Init(pta);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   51 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   52 /*!
//   53  *  @brief      SCCB起始信号
//   54  *  @since      v5.0
//   55  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 static uint8 SCCB_Start(void)
//   57 {
SCCB_Start:
        PUSH     {R3-R7,LR}
//   58     SDA_H();
        LDR.N    R4,??DataTable8_1  ;; 0x43fe0034
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//   59     SCL_H();
        LDR.N    R6,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
//   60     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//   61 
//   62     SDA_DDR_IN();
        LDR.N    R5,??DataTable8_3  ;; 0x43fe02b4
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//   63     if(!SDA_IN())
        LDR.N    R7,??DataTable8_4  ;; 0x43fe0234
        LDR      R0,[R7, #+0]
        CMP      R0,#+0
        BNE.N    ??SCCB_Start_0
//   64     {
//   65         SDA_DDR_OUT();
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//   66         return 0;   /* SDA线为低电平则总线忙,退出 */
        MOVS     R0,#+0
        B.N      ??SCCB_Start_1
//   67     }
//   68     SDA_DDR_OUT();
??SCCB_Start_0:
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//   69     SDA_L();
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   70 
//   71     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//   72     SCL_L();
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//   73 
//   74     if(SDA_IN())
        LDR      R0,[R7, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_Start_2
//   75     {
//   76         SDA_DDR_OUT();
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//   77         return 0;   /* SDA线为高电平则总线出错,退出 */
        MOVS     R0,#+0
        B.N      ??SCCB_Start_1
//   78     }
//   79     //SDA_DDR_OUT();
//   80     //SDA_L();
//   81     //SCCB_delay();
//   82     return 1;
??SCCB_Start_2:
        MOVS     R0,#+1
??SCCB_Start_1:
        POP      {R1,R4-R7,PC}    ;; return
//   83 }
//   84 
//   85 /*!
//   86  *  @brief      SCCB停止信号
//   87  *  @since      v5.0
//   88  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 static void SCCB_Stop(void)
//   90 {
SCCB_Stop:
        PUSH     {R3-R5,LR}
//   91     SCL_L();
        LDR.N    R4,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   92     //SCCB_DELAY();
//   93     SDA_L();
        LDR.N    R5,??DataTable8_1  ;; 0x43fe0034
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//   94     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//   95     SCL_H();
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//   96     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//   97     SDA_H();
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//   98     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//   99 }
        POP      {R0,R4,R5,PC}    ;; return
//  100 
//  101 /*!
//  102  *  @brief      SCCB应答信号
//  103  *  @since      v5.0
//  104  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 static void SCCB_Ack(void)
//  106 {
SCCB_Ack:
        PUSH     {R4,LR}
//  107     SCL_L();
        LDR.N    R4,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  108     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  109     SDA_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_1  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//  110     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  111     SCL_H();
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//  112     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  113     SCL_L();
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  114     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  115 }
        POP      {R4,PC}          ;; return
//  116 
//  117 /*!
//  118  *  @brief      SCCB无应答信号
//  119  *  @since      v5.0
//  120  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 static void SCCB_NoAck(void)
//  122 {
SCCB_NoAck:
        PUSH     {R4,LR}
//  123     SCL_L();
        LDR.N    R4,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  124     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  125     SDA_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_1  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//  126     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  127     SCL_H();
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//  128     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  129     SCL_L();
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  130     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  131 }
        POP      {R4,PC}          ;; return
//  132 
//  133 /*!
//  134  *  @brief      SCCB 等待应答
//  135  *  @return     应答结果（0表示无应答，1表示有应答）
//  136  *  @since      v5.0
//  137  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 static int SCCB_WaitAck(void)
//  139 {
SCCB_WaitAck:
        PUSH     {R3-R5,LR}
//  140     SCL_L();
        LDR.N    R4,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  141     //SDA_H();
//  142     SDA_DDR_IN();
        LDR.N    R5,??DataTable8_3  ;; 0x43fe02b4
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  143 
//  144     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  145     SCL_H();
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//  146 
//  147     SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  148 
//  149     if(SDA_IN())           //应答为高电平，异常，通信失败
        LDR.N    R0,??DataTable8_4  ;; 0x43fe0234
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_WaitAck_0
//  150     {
//  151         SDA_DDR_OUT();
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//  152         SCL_L();
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  153         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WaitAck_1
//  154     }
//  155     SDA_DDR_OUT();
??SCCB_WaitAck_0:
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//  156     SCL_L();
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  157     return 1;
        MOVS     R0,#+1
??SCCB_WaitAck_1:
        POP      {R1,R4,R5,PC}    ;; return
//  158 }
//  159 
//  160 /*!
//  161  *  @brief      SCCB 发送的数据
//  162  *  @param      SendByte    需要发送的数据
//  163  *  @since      v5.0
//  164  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 static void SCCB_SendByte(uint8 SendByte)
//  166 {
SCCB_SendByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  167     uint8 i = 8;
        MOVS     R5,#+8
        B.N      ??SCCB_SendByte_0
//  168     while(i--)
//  169     {
//  170 
//  171         if(SendByte & 0x80)     //SDA 输出数据
//  172         {
//  173             SDA_H();
//  174         }
//  175         else
//  176         {
//  177             SDA_L();
??SCCB_SendByte_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_1  ;; 0x43fe0034
        STR      R0,[R1, #+0]
        B.N      ??SCCB_SendByte_2
//  178         }
??SCCB_SendByte_3:
        LSLS     R0,R4,#+24
        BPL.N    ??SCCB_SendByte_1
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_1  ;; 0x43fe0034
        STR      R0,[R1, #+0]
//  179         SendByte <<= 1;
??SCCB_SendByte_2:
        LSLS     R4,R4,#+1
//  180         SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  181         SCL_H();                //SCL 拉高，采集信号
        LDR.N    R6,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
//  182         SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  183         SCL_L();                //SCL 时钟线拉低
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//  184         //SCCB_DELAY();
//  185     }
??SCCB_SendByte_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SCCB_SendByte_3
//  186     //SCL_L();
//  187 }
??SCCB_SendByte_4:
        POP      {R4-R6,PC}       ;; return
//  188 
//  189 /*!
//  190  *  @brief      接收SCCB总线的数据
//  191  *  @return     接收到的数据
//  192  *  @since      v5.0
//  193  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 static int SCCB_ReceiveByte(void)
//  195 {
SCCB_ReceiveByte:
        PUSH     {R3-R7,LR}
//  196     uint8 i = 8;
        MOVS     R4,#+8
//  197     uint8 ReceiveByte = 0;
        MOVS     R6,#+0
//  198 
//  199     //SDA_H();
//  200     //SCCB_DELAY();
//  201     SDA_DDR_IN();
        LDR.N    R5,??DataTable8_3  ;; 0x43fe02b4
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
        B.N      ??SCCB_ReceiveByte_0
//  202 
//  203     while(i--)
//  204     {
//  205         ReceiveByte <<= 1;
??SCCB_ReceiveByte_1:
        LSLS     R6,R6,#+1
//  206         SCL_L();
        LDR.N    R7,??DataTable8_2  ;; 0x43fe0030
        MOVS     R0,#+0
        STR      R0,[R7, #+0]
//  207         SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  208         SCL_H();
        MOVS     R0,#+1
        STR      R0,[R7, #+0]
//  209         SCCB_DELAY();
        MOV      R0,#+400
        BL       SCCB_delay
//  210 
//  211         if(SDA_IN())
        LDR.N    R0,??DataTable8_4  ;; 0x43fe0234
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_ReceiveByte_0
//  212         {
//  213             ReceiveByte |= 0x01;
        ORRS     R6,R6,#0x1
//  214         }
//  215 
//  216 
//  217     }
??SCCB_ReceiveByte_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SCCB_ReceiveByte_1
//  218     SDA_DDR_OUT();
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//  219     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_2  ;; 0x43fe0030
        STR      R0,[R1, #+0]
//  220     return ReceiveByte;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        POP      {R1,R4-R7,PC}    ;; return
//  221 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DATA32
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DATA32
        DC32     0x43fe0034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DATA32
        DC32     0x43fe0030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DATA32
        DC32     0x43fe02b4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DATA32
        DC32     0x43fe0234
//  222 
//  223 /*****************************************************************************************
//  224 * 函数名：SCCB_WriteByte
//  225 * 描述  ：写一字节数据
//  226 * 输入  ：- WriteAddress: 待写入地址    - SendByte: 待写入数据  - DeviceAddress: 器件类型
//  227 * 输出  ：返回为:=1成功写入,=0失败
//  228 * 注意  ：无
//  229 *****************************************************************************************/
//  230 static int SCCB_WriteByte_one( uint16 WriteAddress , uint8 SendByte );
//  231 
//  232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 int SCCB_WriteByte( uint16 WriteAddress , uint8 SendByte )            //考虑到用sccb的管脚模拟，比较容易失败，因此多试几次
//  234 {
SCCB_WriteByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  235     uint8 i = 0;
        MOVS     R6,#+0
//  236     while( 0 == SCCB_WriteByte_one ( WriteAddress, SendByte ) )
??SCCB_WriteByte_0:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       SCCB_WriteByte_one
        CMP      R0,#+0
        BNE.N    ??SCCB_WriteByte_1
//  237     {
//  238         i++;
        ADDS     R6,R6,#+1
//  239         if(i == 20)
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+20
        BNE.N    ??SCCB_WriteByte_0
//  240         {
//  241             return 0 ;
        MOVS     R0,#+0
        B.N      ??SCCB_WriteByte_2
//  242         }
//  243     }
//  244     return 1;
??SCCB_WriteByte_1:
        MOVS     R0,#+1
??SCCB_WriteByte_2:
        POP      {R4-R6,PC}       ;; return
//  245 }
//  246 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 int SCCB_WriteByte_one( uint16 WriteAddress , uint8 SendByte )
//  248 {
SCCB_WriteByte_one:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  249     if(!SCCB_Start())
        BL       SCCB_Start
        CMP      R0,#+0
        BNE.N    ??SCCB_WriteByte_one_0
//  250     {
//  251         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WriteByte_one_1
//  252     }
//  253     SCCB_SendByte( DEV_ADR );                    /* 器件地址 */
??SCCB_WriteByte_one_0:
        MOVS     R0,#+66
        BL       SCCB_SendByte
//  254     if( !SCCB_WaitAck() )
        BL       SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??SCCB_WriteByte_one_2
//  255     {
//  256         SCCB_Stop();
        BL       SCCB_Stop
//  257         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WriteByte_one_1
//  258     }
//  259     SCCB_SendByte((uint8)(WriteAddress & 0x00FF));   /* 设置低起始地址 */
??SCCB_WriteByte_one_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SCCB_SendByte
//  260     SCCB_WaitAck();
        BL       SCCB_WaitAck
//  261     SCCB_SendByte(SendByte);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SCCB_SendByte
//  262     SCCB_WaitAck();
        BL       SCCB_WaitAck
//  263     SCCB_Stop();
        BL       SCCB_Stop
//  264     return 1;
        MOVS     R0,#+1
??SCCB_WriteByte_one_1:
        POP      {R1,R4,R5,PC}    ;; return
//  265 }
//  266 
//  267 
//  268 
//  269 
//  270 /******************************************************************************************************************
//  271  * 函数名：SCCB_ReadByte
//  272  * 描述  ：读取一串数据
//  273  * 输入  ：- pBuffer: 存放读出数据  - length: 待读出长度    - ReadAddress: 待读出地址        - DeviceAddress: 器件类型
//  274  * 输出  ：返回为:=1成功读入,=0失败
//  275  * 注意  ：无
//  276  **********************************************************************************************************************/
//  277 static int SCCB_ReadByte_one(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress);
//  278 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  279 int SCCB_ReadByte(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress)
//  280 {
SCCB_ReadByte:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  281     uint8 i = 0;
        MOVS     R7,#+0
//  282     while( 0 == SCCB_ReadByte_one(pBuffer, length, ReadAddress) )
??SCCB_ReadByte_0:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       SCCB_ReadByte_one
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_1
//  283     {
//  284         i++;
        ADDS     R7,R7,#+1
//  285         if(i == 30)
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+30
        BNE.N    ??SCCB_ReadByte_0
//  286         {
//  287             return 0 ;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_2
//  288         }
//  289     }
//  290     return 1;
??SCCB_ReadByte_1:
        MOVS     R0,#+1
??SCCB_ReadByte_2:
        POP      {R1,R4-R7,PC}    ;; return
//  291 }
//  292 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 int SCCB_ReadByte_one(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress)
//  294 {
SCCB_ReadByte_one:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  295     if(!SCCB_Start())
        BL       SCCB_Start
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_0
//  296     {
//  297         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  298     }
//  299     SCCB_SendByte( DEV_ADR );         /* 器件地址 */
??SCCB_ReadByte_one_0:
        MOVS     R0,#+66
        BL       SCCB_SendByte
//  300     if( !SCCB_WaitAck() )
        BL       SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_2
//  301     {
//  302         SCCB_Stop();
        BL       SCCB_Stop
//  303         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  304     }
//  305     SCCB_SendByte( ReadAddress );           /* 设置低起始地址 */
??SCCB_ReadByte_one_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SCCB_SendByte
//  306     SCCB_WaitAck();
        BL       SCCB_WaitAck
//  307     SCCB_Stop();
        BL       SCCB_Stop
//  308 
//  309     if(!SCCB_Start())
        BL       SCCB_Start
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_3
//  310     {
//  311         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  312     }
//  313     SCCB_SendByte( DEV_ADR + 1 );               /* 器件地址 */
??SCCB_ReadByte_one_3:
        MOVS     R0,#+67
        BL       SCCB_SendByte
//  314 
//  315     if(!SCCB_WaitAck())
        BL       SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_4
//  316     {
//  317         SCCB_Stop();
        BL       SCCB_Stop
//  318         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  319     }
//  320     while(length)
//  321     {
//  322         *pBuffer = SCCB_ReceiveByte();
//  323         if(length == 1)
//  324         {
//  325             SCCB_NoAck();
//  326         }
//  327         else
//  328         {
//  329             SCCB_Ack();
??SCCB_ReadByte_one_5:
        BL       SCCB_Ack
        B.N      ??SCCB_ReadByte_one_6
//  330         }
??SCCB_ReadByte_one_7:
        BL       SCCB_ReceiveByte
        STRB     R0,[R4, #+0]
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.N    ??SCCB_ReadByte_one_5
        BL       SCCB_NoAck
//  331         pBuffer++;
??SCCB_ReadByte_one_6:
        ADDS     R4,R4,#+1
//  332         length--;
        SUBS     R5,R5,#+1
//  333     }
??SCCB_ReadByte_one_4:
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_7
//  334     SCCB_Stop();
??SCCB_ReadByte_one_8:
        BL       SCCB_Stop
//  335     return 1;
        MOVS     R0,#+1
??SCCB_ReadByte_one_1:
        POP      {R4-R6,PC}       ;; return
//  336 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  337 
//  338 
//  339 
//  340 
// 
// 848 bytes in section .text
// 
// 848 bytes of CODE memory
//
//Errors: none
//Warnings: none
