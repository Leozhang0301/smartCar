///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        18/May/2019  16:18:21
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_UART.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW9206.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_UART.c -D
//        LPLD_K60 -lCN
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List"
//        -lB
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List"
//        -o
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\Obj"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\@@\605110 IAR for
//        ARM 8.30\arm\inc\c\DLib_Config_Normal.h" -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\driver\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\class\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Me\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Jay\"
//        -Ol -I "D:\@@\605110 IAR for ARM 8.30\arm\CMSIS\Core\Include\" -I
//        "D:\@@\605110 IAR for ARM 8.30\arm\CMSIS\DSP\Include\" -D
//        ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\HW_UART.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock
        EXTERN g_core_clock

        PUBLIC LPLD_UART_DisableIrq
        PUBLIC LPLD_UART_EnableIrq
        PUBLIC LPLD_UART_GetChar
        PUBLIC LPLD_UART_GetChar_Present
        PUBLIC LPLD_UART_Init
        PUBLIC LPLD_UART_PutChar
        PUBLIC LPLD_UART_PutCharArr
        PUBLIC UART0_IRQHandler
        PUBLIC UART1_IRQHandler
        PUBLIC UART2_IRQHandler
        PUBLIC UART3_IRQHandler
        PUBLIC UART4_IRQHandler
        PUBLIC UART5_IRQHandler
        PUBLIC UART_R_ISR
        PUBLIC UART_T_ISR

// C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_UART.c
//    1 /**
//    2  * @file HW_UART.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief UART�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾����
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�������ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

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
        LDR.W    R1,??DataTable10  ;; 0xe000e100
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
        LDR.W    R1,??DataTable10_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "HW_UART.h"
//   24 
//   25 //�û������жϺ�����ڵ�ַ����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 UART_ISR_CALLBACK UART_R_ISR[6];
UART_R_ISR:
        DS8 24
//   27 //�û������жϺ�����ڵ�ַ����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 UART_ISR_CALLBACK UART_T_ISR[6];  
UART_T_ISR:
        DS8 24
//   29 
//   30 
//   31 /*
//   32  * LPLD_UART_Init
//   33  * ��ʼ��UARTͨ���������ʡ����ͽ�������
//   34  * 
//   35  * ����:
//   36  *    uart_init_structure--UART��ʼ���ṹ�壬
//   37  *                        ���嶨���UART_InitTypeDef
//   38  *
//   39  * ���:
//   40  *    ��
//   41  *
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void LPLD_UART_Init(UART_InitTypeDef uart_init_structure)
//   44 {
LPLD_UART_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R7,LR}
//   45   register uint16 sbr, brfa;
//   46   uint32 sysclk;
//   47   uint8 temp, x;
//   48   UART_Type *uartx = uart_init_structure.UART_Uartx;
        LDR      R2,[SP, #+20]
//   49   uint32 baud = uart_init_structure.UART_BaudRate;
        LDR      R0,[SP, #+24]
//   50   PortPinsEnum_Type tx_pin = uart_init_structure.UART_TxPin;
        LDRB     R1,[SP, #+28]
//   51   PortPinsEnum_Type rx_pin = uart_init_structure.UART_RxPin;
        LDRB     R7,[SP, #+29]
//   52   UART_ISR_CALLBACK rx_isr = uart_init_structure.UART_RxIsr;
        LDR      R3,[SP, #+32]
//   53   UART_ISR_CALLBACK tx_isr = uart_init_structure.UART_TxIsr;
        LDR      R4,[SP, #+36]
//   54   
//   55   if(baud == NULL)
        CMP      R0,#+0
        BNE.N    ??LPLD_UART_Init_0
//   56   {
//   57     baud = 9600;
        MOV      R0,#+9600
//   58   }
//   59   
//   60   //ʹ��ѡ�е�UART����ͨ��ʱ�ӣ���ӦGPIO��UART���ù���   
//   61   if(uartx == UART0)
??LPLD_UART_Init_0:
        LDR.W    R5,??DataTable10_2  ;; 0x4006a000
        CMP      R2,R5
        BNE.N    ??LPLD_UART_Init_1
//   62   {
//   63     x = 0;
        MOVS     R5,#+0
//   64     sysclk = g_core_clock;
        LDR.W    R6,??DataTable10_3
        LDR      R6,[R6, #+0]
//   65     SIM->SCGC4 |= SIM_SCGC4_UART0_MASK;
        LDR.W    R12,??DataTable10_4  ;; 0x40048034
        LDR      LR,[R12, #+0]
        ORRS     LR,LR,#0x400
        STR      LR,[R12, #+0]
//   66     
//   67     if(tx_pin == PTA2)
        MOV      R12,R1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+2
        BNE.N    ??LPLD_UART_Init_2
//   68       PORTA->PCR[2] = PORT_PCR_MUX(2); 
        MOV      R1,#+512
        LDR.W    R12,??DataTable10_5  ;; 0x40049008
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_3
//   69     else if(tx_pin == PTA14)
??LPLD_UART_Init_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+14
        BNE.N    ??LPLD_UART_Init_4
//   70       PORTA->PCR[14] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_6  ;; 0x40049038
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_3
//   71     else
//   72       PORTB->PCR[17] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_4:
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_7  ;; 0x4004a044
        STR      R1,[R12, #+0]
//   73     
//   74     if(rx_pin == PTA1)
??LPLD_UART_Init_3:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_UART_Init_5
//   75       PORTA->PCR[1] = PORT_PCR_MUX(2); 
        MOV      R1,#+512
        LDR.W    R7,??DataTable10_8  ;; 0x40049004
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   76     else if(rx_pin == PTA15)
??LPLD_UART_Init_5:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+15
        BNE.N    ??LPLD_UART_Init_7
//   77       PORTA->PCR[15] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_9  ;; 0x4004903c
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   78     else
//   79       PORTB->PCR[16] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_7:
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_10  ;; 0x4004a040
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   80   }
//   81   else
//   82   {
//   83     if (uartx == UART1)
??LPLD_UART_Init_1:
        LDR.W    R5,??DataTable10_11  ;; 0x4006b000
        CMP      R2,R5
        BNE.N    ??LPLD_UART_Init_8
//   84     {
//   85       x = 1;
        MOVS     R5,#+1
//   86       sysclk = g_core_clock;
        LDR.W    R6,??DataTable10_3
        LDR      R6,[R6, #+0]
//   87       SIM->SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.W    R12,??DataTable10_4  ;; 0x40048034
        LDR      LR,[R12, #+0]
        ORRS     LR,LR,#0x800
        STR      LR,[R12, #+0]
//   88       
//   89       if(tx_pin == PTE0)   
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+124
        BNE.N    ??LPLD_UART_Init_9
//   90         PORTE->PCR[0] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_12  ;; 0x4004d000
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_10
//   91       else
//   92         PORTC->PCR[4] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_9:
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_13  ;; 0x4004b010
        STR      R1,[R12, #+0]
//   93       
//   94       if(rx_pin == PTE1)
??LPLD_UART_Init_10:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+125
        BNE.N    ??LPLD_UART_Init_11
//   95         PORTE->PCR[1] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_14  ;; 0x4004d004
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   96       else
//   97         PORTC->PCR[3] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_11:
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_15  ;; 0x4004b00c
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//   98     }
//   99     else
//  100     {
//  101       sysclk = g_bus_clock;
??LPLD_UART_Init_8:
        LDR.W    R5,??DataTable10_16
        LDR      R6,[R5, #+0]
//  102       if (uartx == UART2)
        LDR.W    R5,??DataTable10_17  ;; 0x4006c000
        CMP      R2,R5
        BNE.N    ??LPLD_UART_Init_12
//  103       {
//  104         x = 2;
        MOVS     R5,#+2
//  105         SIM->SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.W    R1,??DataTable10_4  ;; 0x40048034
        LDR      R7,[R1, #+0]
        ORRS     R7,R7,#0x1000
        STR      R7,[R1, #+0]
//  106         
//  107         PORTD->PCR[3] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_18  ;; 0x4004c00c
        STR      R1,[R7, #+0]
//  108         PORTD->PCR[2] = PORT_PCR_MUX(3);
        LDR.W    R7,??DataTable10_19  ;; 0x4004c008
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  109       }
//  110       else
//  111       {
//  112         if(uartx == UART3)
??LPLD_UART_Init_12:
        LDR.W    R5,??DataTable10_20  ;; 0x4006d000
        CMP      R2,R5
        BNE.N    ??LPLD_UART_Init_13
//  113         {
//  114           x = 3;
        MOVS     R5,#+3
//  115           SIM->SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.W    R12,??DataTable10_4  ;; 0x40048034
        LDR      LR,[R12, #+0]
        ORRS     LR,LR,#0x2000
        STR      LR,[R12, #+0]
//  116           
//  117           if(tx_pin == PTE4)
        MOV      R12,R1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+128
        BNE.N    ??LPLD_UART_Init_14
//  118             PORTE->PCR[4] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_21  ;; 0x4004d010
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_15
//  119           else if(tx_pin == PTB11)
??LPLD_UART_Init_14:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+43
        BNE.N    ??LPLD_UART_Init_16
//  120             PORTB->PCR[11] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_22  ;; 0x4004a02c
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_15
//  121           else 
//  122             PORTC->PCR[17] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_16:
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_23  ;; 0x4004b044
        STR      R1,[R12, #+0]
//  123           
//  124           if(rx_pin == PTE5)
??LPLD_UART_Init_15:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+129
        BNE.N    ??LPLD_UART_Init_17
//  125             PORTE->PCR[5] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_24  ;; 0x4004d014
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  126           else if(rx_pin == PTB10)
??LPLD_UART_Init_17:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+42
        BNE.N    ??LPLD_UART_Init_18
//  127             PORTB->PCR[10] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_25  ;; 0x4004a028
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  128           else
//  129             PORTC->PCR[16] = PORT_PCR_MUX(3);
??LPLD_UART_Init_18:
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_26  ;; 0x4004b040
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  130         }
//  131         else
//  132         {
//  133           if(uartx == UART4)
??LPLD_UART_Init_13:
        LDR.W    R5,??DataTable10_27  ;; 0x400ea000
        CMP      R2,R5
        BNE.N    ??LPLD_UART_Init_19
//  134           {
//  135             x = 4;
        MOVS     R5,#+4
//  136             SIM->SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.W    R12,??DataTable10_28  ;; 0x40048028
        LDR      LR,[R12, #+0]
        ORRS     LR,LR,#0x400
        STR      LR,[R12, #+0]
//  137             
//  138             if(tx_pin == PTE24)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+148
        BNE.N    ??LPLD_UART_Init_20
//  139               PORTE->PCR[24] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_29  ;; 0x4004d060
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_21
//  140             else
//  141               PORTC->PCR[15] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_20:
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_30  ;; 0x4004b03c
        STR      R1,[R12, #+0]
//  142             
//  143             if(rx_pin == PTE25)
??LPLD_UART_Init_21:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+149
        BNE.N    ??LPLD_UART_Init_22
//  144               PORTE->PCR[25] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_31  ;; 0x4004d064
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  145             else
//  146               PORTC->PCR[14] = PORT_PCR_MUX(3);
??LPLD_UART_Init_22:
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_32  ;; 0x4004b038
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  147           }
//  148           else
//  149           {
//  150             x = 5;
??LPLD_UART_Init_19:
        MOVS     R5,#+5
//  151             uartx = UART5;
        LDR.W    R2,??DataTable10_33  ;; 0x400eb000
//  152             SIM->SCGC1 |= SIM_SCGC1_UART5_MASK;
        LDR.W    R12,??DataTable10_28  ;; 0x40048028
        LDR      LR,[R12, #+0]
        ORRS     LR,LR,#0x800
        STR      LR,[R12, #+0]
//  153             
//  154             if(tx_pin == PTD9)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+101
        BNE.N    ??LPLD_UART_Init_23
//  155               PORTD->PCR[9] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_34  ;; 0x4004c024
        STR      R1,[R12, #+0]
        B.N      ??LPLD_UART_Init_24
//  156             else
//  157               PORTE->PCR[8] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_23:
        MOV      R1,#+768
        LDR.W    R12,??DataTable10_35  ;; 0x4004d020
        STR      R1,[R12, #+0]
//  158             
//  159             if(rx_pin == PTD8)
??LPLD_UART_Init_24:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+100
        BNE.N    ??LPLD_UART_Init_25
//  160               PORTD->PCR[8] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_36  ;; 0x4004c020
        STR      R1,[R7, #+0]
        B.N      ??LPLD_UART_Init_6
//  161             else
//  162               PORTE->PCR[9] = PORT_PCR_MUX(3); 
??LPLD_UART_Init_25:
        MOV      R1,#+768
        LDR.W    R7,??DataTable10_37  ;; 0x4004d024
        STR      R1,[R7, #+0]
//  163           }
//  164         }
//  165       }
//  166     }
//  167   }
//  168   
//  169   //�����ú������Ĵ���ǰ���ȹرշ������ͽ�����
//  170   uartx->C2 &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK );
??LPLD_UART_Init_6:
        LDRB     R1,[R2, #+3]
        ANDS     R1,R1,#0xF3
        STRB     R1,[R2, #+3]
//  171   
//  172   //����UARTΪ 8λ, ����żУ�� */
//  173   uartx->C1 = 0;	
        MOVS     R1,#+0
        STRB     R1,[R2, #+2]
//  174   
//  175   //���㲨����
//  176   sbr = (uint16)((sysclk)/(baud * 16));
        LSLS     R1,R0,#+4
        UDIV     R7,R6,R1
//  177   
//  178   //����UARTx_BDH�Ĵ����г���SBR��ֵ
//  179   temp = uartx->BDH & ~(UART_BDH_SBR(0x1F));
        LDRB     R12,[R2, #+0]
        ANDS     R12,R12,#0xE0
//  180   
//  181   uartx->BDH = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UBFX     R1,R7,#+8,#+5
        ORRS     R12,R1,R12
        STRB     R12,[R2, #+0]
//  182   uartx->BDL = (uint8)(sbr & UART_BDL_SBR_MASK);
        STRB     R7,[R2, #+1]
//  183   
//  184   //���ò����ʵ�΢������
//  185   brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
        LSLS     R1,R6,#+5
        LSLS     R0,R0,#+4
        UDIV     R0,R1,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        SUBS     R0,R0,R7, LSL #+5
//  186   
//  187   //����UARTx_C4�Ĵ����г���BRFA��ֵ
//  188   temp = uartx->C4 & ~(UART_C4_BRFA(0x1F));
        LDRB     R1,[R2, #+10]
        ANDS     R1,R1,#0xE0
//  189   
//  190   uartx->C4 = temp |  UART_C4_BRFA(brfa);    
        ANDS     R0,R0,#0x1F
        ORRS     R0,R0,R1
        STRB     R0,[R2, #+10]
//  191   
//  192   //���÷��ͽ����ж�
//  193   if(uart_init_structure.UART_RxIntEnable == TRUE && rx_isr != NULL)
        LDRB     R0,[SP, #+30]
        CMP      R0,#+1
        BNE.N    ??LPLD_UART_Init_26
        MOVS     R0,R3
        CMP      R0,#+0
        BEQ.N    ??LPLD_UART_Init_26
//  194   {
//  195     uartx->C2 |= UART_C2_RIE_MASK; 
        LDRB     R0,[R2, #+3]
        ORRS     R0,R0,#0x20
        STRB     R0,[R2, #+3]
//  196     UART_R_ISR[x] = rx_isr;
        LDR.W    R0,??DataTable10_38
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R3,[R0, R1, LSL #+2]
        B.N      ??LPLD_UART_Init_27
//  197   } 
//  198   else
//  199   {
//  200     uartx->C2 &= ~(UART_C2_RIE_MASK); 
??LPLD_UART_Init_26:
        LDRB     R0,[R2, #+3]
        ANDS     R0,R0,#0xDF
        STRB     R0,[R2, #+3]
//  201   }
//  202   if(uart_init_structure.UART_TxIntEnable == TRUE && tx_isr != NULL)
??LPLD_UART_Init_27:
        LDRB     R0,[SP, #+31]
        CMP      R0,#+1
        BNE.N    ??LPLD_UART_Init_28
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??LPLD_UART_Init_28
//  203   {
//  204     uartx->C2 |= UART_C2_TIE_MASK; 
        LDRB     R0,[R2, #+3]
        ORRS     R0,R0,#0x80
        STRB     R0,[R2, #+3]
//  205     UART_T_ISR[x] = tx_isr;
        LDR.W    R0,??DataTable10_39
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R4,[R0, R5, LSL #+2]
        B.N      ??LPLD_UART_Init_29
//  206   } 
//  207   else
//  208   {
//  209     uartx->C2 &= ~(UART_C2_TIE_MASK); 
??LPLD_UART_Init_28:
        LDRB     R0,[R2, #+3]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R2, #+3]
//  210   }
//  211   
//  212   //ʹ�ܷ������ͽ�����
//  213   uartx->C2 |= (UART_C2_TE_MASK | UART_C2_RE_MASK );    
??LPLD_UART_Init_29:
        LDRB     R0,[R2, #+3]
        ORRS     R0,R0,#0xC
        STRB     R0,[R2, #+3]
//  214 }
        POP      {R4-R7}
        LDR      PC,[SP], #+20    ;; return
//  215 
//  216 /*
//  217  * LPLD_UART_GetChar
//  218  * ���ڲ�ѯ��ʽ��ȡһ���ֽ�
//  219  * 
//  220  * ����:
//  221  *    uartx--UARTģ���
//  222  *      |__UART0          --UART0
//  223  *      |__UART1          --UART1
//  224  *      |__UART2          --UART2
//  225  *      |__UART3          --UART3
//  226  *      |__UART4          --UART4
//  227  *      |__UART5          --UART5
//  228  *
//  229  * ���:
//  230  *    ���ڽ��յ�1���ֽ�
//  231  *
//  232  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 uint8 LPLD_UART_GetChar(UART_Type *uartx)
//  234 {
//  235   //�ȴ����ݽ���
//  236   while (!(uartx->S1 & UART_S1_RDRF_MASK));
LPLD_UART_GetChar:
??LPLD_UART_GetChar_0:
        LDRB     R1,[R0, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??LPLD_UART_GetChar_0
//  237   
//  238   //���ؽ��յ�1���ֽ�����
//  239   return uartx->D;
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  240 }
//  241 
//  242 /********************************************************************/
//  243 /*
//  244  * LPLD_UART_GetChar_Present
//  245  * ����Ƿ���յ��ַ�
//  246  * 
//  247  * ����:
//  248  *    uartx--UARTģ���
//  249  *      |__UART0          --UART0
//  250  *      |__UART1          --UART1
//  251  *      |__UART2          --UART2
//  252  *      |__UART3          --UART3
//  253  *      |__UART4          --UART4
//  254  *      |__UART5          --UART5
//  255  *
//  256  * ���:
//  257  *  0       û�н��յ��ַ�
//  258  *  1       �Ѿ����յ��ַ�
//  259  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  260 int32 LPLD_UART_GetChar_Present(UART_Type *uartx)
//  261 {
//  262     return (uartx->S1 & UART_S1_RDRF_MASK);
LPLD_UART_GetChar_Present:
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,#0x20
        BX       LR               ;; return
//  263 }
//  264 
//  265 /*
//  266  * LPLD_UART_PutChar
//  267  * ���ڲ�ѯ��ʽ����һ���ֽ�
//  268  * 
//  269  * ����:
//  270  *    uartx--UARTģ���
//  271  *      |__UART0          --UART0
//  272  *      |__UART1          --UART1
//  273  *      |__UART2          --UART2
//  274  *      |__UART3          --UART3
//  275  *      |__UART4          --UART4
//  276  *      |__UART5          --UART5
//  277  *    ch--�����͵�1���ֽ�
//  278  *
//  279  * ���:
//  280  *    ��
//  281  *
//  282  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  283 void LPLD_UART_PutChar(UART_Type *uartx, int8 ch)
//  284 {
//  285   //�ȴ�FIFO׼������
//  286   while(!(uartx->S1 & UART_S1_TDRE_MASK));
LPLD_UART_PutChar:
??LPLD_UART_PutChar_0:
        LDRB     R2,[R0, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_UART_PutChar_0
//  287   
//  288   //��Ҫ���͵�1���ֽڷ���UART���ݼĴ���
//  289   uartx->D = (uint8)ch;
        STRB     R1,[R0, #+7]
//  290 }
        BX       LR               ;; return
//  291 
//  292 
//  293 /*
//  294  * LPLD_UART_PutCharArr
//  295  * ���ڲ�ѯ��ʽ�����ֽ�������
//  296  * 
//  297  * ����:
//  298  *    uartx--UARTģ���
//  299  *      |__UART0          --UART0
//  300  *      |__UART1          --UART1
//  301  *      |__UART2          --UART2
//  302  *      |__UART3          --UART3
//  303  *      |__UART4          --UART4
//  304  *      |__UART5          --UART5
//  305  *    *ch--�����͵��ֽ�����ͷ��ַ
//  306  *    len--�ֽ����鳤��
//  307  *
//  308  * ���:
//  309  *    ��
//  310  *
//  311  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  312 void LPLD_UART_PutCharArr(UART_Type *uartx, int8 *ch, int32 len)
//  313 {
LPLD_UART_PutCharArr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        B.N      ??LPLD_UART_PutCharArr_0
//  314   while(len--)
//  315   {
//  316     LPLD_UART_PutChar(uartx, *(ch++));
??LPLD_UART_PutCharArr_1:
        LDRSB    R1,[R5, #+0]
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
        ADDS     R5,R5,#+1
//  317   }
??LPLD_UART_PutCharArr_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        CMP      R0,#+0
        BNE.N    ??LPLD_UART_PutCharArr_1
//  318 }
        POP      {R4-R6,PC}       ;; return
//  319 
//  320 /*
//  321  * LPLD_UART_EnableIrq
//  322  * ʹ�ܴ������ݽ����ж�
//  323  * 
//  324  * ����:
//  325  *    uart_init_structure--UART��ʼ���ṹ�壬
//  326  *                        ���嶨���UART_InitTypeDef
//  327  *
//  328  * ���:
//  329  *    ��
//  330  *
//  331  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void LPLD_UART_EnableIrq(UART_InitTypeDef uart_init_structure)
//  333 {
LPLD_UART_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  334   if(uart_init_structure.UART_Uartx == UART0)
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_2  ;; 0x4006a000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_0
//  335   {
//  336     enable_irq(UART0_RX_TX_IRQn);
        MOVS     R0,#+45
        BL       __NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  337   }
//  338   else if(uart_init_structure.UART_Uartx == UART1)
??LPLD_UART_EnableIrq_0:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_11  ;; 0x4006b000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_2
//  339   {
//  340     enable_irq(UART1_RX_TX_IRQn);
        MOVS     R0,#+47
        BL       __NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  341   }
//  342   else if(uart_init_structure.UART_Uartx == UART2)
??LPLD_UART_EnableIrq_2:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_17  ;; 0x4006c000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_3
//  343   {
//  344     enable_irq(UART2_RX_TX_IRQn);
        MOVS     R0,#+49
        BL       __NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  345   }
//  346   else if(uart_init_structure.UART_Uartx == UART3)
??LPLD_UART_EnableIrq_3:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_20  ;; 0x4006d000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_4
//  347   {
//  348     enable_irq(UART3_RX_TX_IRQn);
        MOVS     R0,#+51
        BL       __NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  349   }
//  350   else if(uart_init_structure.UART_Uartx == UART4)
??LPLD_UART_EnableIrq_4:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_27  ;; 0x400ea000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_5
//  351   {
//  352     enable_irq(UART4_RX_TX_IRQn);
        MOVS     R0,#+53
        BL       __NVIC_EnableIRQ
        B.N      ??LPLD_UART_EnableIrq_1
//  353   }
//  354   else if(uart_init_structure.UART_Uartx == UART5)
??LPLD_UART_EnableIrq_5:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_33  ;; 0x400eb000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_EnableIrq_1
//  355   {
//  356     enable_irq(UART5_RX_TX_IRQn);
        MOVS     R0,#+55
        BL       __NVIC_EnableIRQ
//  357   }
//  358 }
??LPLD_UART_EnableIrq_1:
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  359 
//  360 /*
//  361  * LPLD_UART_DisableIrq
//  362  * ���ô������ݽ����ж�
//  363  * 
//  364  * ����:
//  365  *    uart_init_structure--UART��ʼ���ṹ�壬
//  366  *                        ���嶨���UART_InitTypeDef
//  367  *
//  368  * ���:
//  369  *    ��
//  370  *
//  371  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  372 void LPLD_UART_DisableIrq(UART_InitTypeDef uart_init_structure)
//  373 {
LPLD_UART_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  374   //�����ж������ʹ����Ӧ�ж�
//  375   if(uart_init_structure.UART_Uartx == UART0)
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_2  ;; 0x4006a000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_0
//  376     disable_irq(UART0_RX_TX_IRQn);
        MOVS     R0,#+45
        BL       __NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  377   else if(uart_init_structure.UART_Uartx == UART1)
??LPLD_UART_DisableIrq_0:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_11  ;; 0x4006b000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_2
//  378     disable_irq(UART1_RX_TX_IRQn);
        MOVS     R0,#+47
        BL       __NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  379   else if(uart_init_structure.UART_Uartx == UART2)
??LPLD_UART_DisableIrq_2:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_17  ;; 0x4006c000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_3
//  380     disable_irq(UART2_RX_TX_IRQn);
        MOVS     R0,#+49
        BL       __NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  381   else if(uart_init_structure.UART_Uartx == UART3)
??LPLD_UART_DisableIrq_3:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_20  ;; 0x4006d000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_4
//  382     disable_irq(UART3_RX_TX_IRQn);
        MOVS     R0,#+51
        BL       __NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  383   else if(uart_init_structure.UART_Uartx == UART4)
??LPLD_UART_DisableIrq_4:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_27  ;; 0x400ea000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_5
//  384     disable_irq(UART4_RX_TX_IRQn);
        MOVS     R0,#+53
        BL       __NVIC_DisableIRQ
        B.N      ??LPLD_UART_DisableIrq_1
//  385   else if(uart_init_structure.UART_Uartx == UART5)
??LPLD_UART_DisableIrq_5:
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable10_33  ;; 0x400eb000
        CMP      R0,R1
        BNE.N    ??LPLD_UART_DisableIrq_1
//  386     disable_irq(UART5_RX_TX_IRQn);
        MOVS     R0,#+55
        BL       __NVIC_DisableIRQ
//  387 }
??LPLD_UART_DisableIrq_1:
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  388 
//  389 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  390 void UART0_IRQHandler(void)
//  391 {
UART0_IRQHandler:
        PUSH     {R4,LR}
//  392 #if (UCOS_II > 0u)
//  393   OS_CPU_SR  cpu_sr = 0u;
//  394   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  395   OSIntEnter();
//  396   OS_EXIT_CRITICAL();
//  397 #endif
//  398   
//  399   //��������жϺ���
//  400   if((UART0->S1 & UART_S1_RDRF_MASK) && (UART0->C2 & UART_C2_RIE_MASK))
        LDR.N    R4,??DataTable10_40  ;; 0x4006a004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART0_IRQHandler_0
        LDR.N    R0,??DataTable10_41  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART0_IRQHandler_0
//  401   {
//  402     UART_R_ISR[0]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+0]
        BLX      R0
//  403   }
//  404   //���뷢���жϺ���
//  405   if((UART0->S1 & UART_S1_TDRE_MASK) && (UART0->C2 & UART_C2_TIE_MASK))
??UART0_IRQHandler_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART0_IRQHandler_1
        LDR.N    R0,??DataTable10_41  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART0_IRQHandler_1
//  406   {
//  407     UART_T_ISR[0]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+0]
        BLX      R0
//  408   }
//  409   
//  410 #if (UCOS_II > 0u)
//  411   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  412 #endif
//  413 }
??UART0_IRQHandler_1:
        POP      {R4,PC}          ;; return
//  414 
//  415 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  416 void UART1_IRQHandler(void)
//  417 {
UART1_IRQHandler:
        PUSH     {R4,LR}
//  418 #if (UCOS_II > 0u)
//  419   OS_CPU_SR  cpu_sr = 0u;
//  420   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  421   OSIntEnter();
//  422   OS_EXIT_CRITICAL();
//  423 #endif
//  424   
//  425   //��������жϺ���
//  426   if((UART1->S1 & UART_S1_RDRF_MASK) && (UART1->C2 & UART_C2_RIE_MASK))
        LDR.N    R4,??DataTable10_42  ;; 0x4006b004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART1_IRQHandler_0
        LDR.N    R0,??DataTable10_43  ;; 0x4006b003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART1_IRQHandler_0
//  427   {
//  428     UART_R_ISR[1]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+4]
        BLX      R0
//  429   }
//  430   //���뷢���жϺ���
//  431   if((UART1->S1 & UART_S1_TDRE_MASK) && (UART1->C2 & UART_C2_TIE_MASK))
??UART1_IRQHandler_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART1_IRQHandler_1
        LDR.N    R0,??DataTable10_43  ;; 0x4006b003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART1_IRQHandler_1
//  432   {
//  433     UART_T_ISR[1]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+4]
        BLX      R0
//  434   }
//  435   
//  436 #if (UCOS_II > 0u)
//  437   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  438 #endif
//  439 }
??UART1_IRQHandler_1:
        POP      {R4,PC}          ;; return
//  440 
//  441 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  442 void UART2_IRQHandler(void)
//  443 {
UART2_IRQHandler:
        PUSH     {R4,LR}
//  444 #if (UCOS_II > 0u)
//  445   OS_CPU_SR  cpu_sr = 0u;
//  446   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  447   OSIntEnter();
//  448   OS_EXIT_CRITICAL();
//  449 #endif
//  450   
//  451   //��������жϺ���
//  452   if((UART2->S1 & UART_S1_RDRF_MASK) && (UART2->C2 & UART_C2_RIE_MASK))
        LDR.N    R4,??DataTable10_44  ;; 0x4006c004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART2_IRQHandler_0
        LDR.N    R0,??DataTable10_45  ;; 0x4006c003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART2_IRQHandler_0
//  453   {
//  454     UART_R_ISR[2]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+8]
        BLX      R0
//  455   }
//  456   //���뷢���жϺ���
//  457   if((UART2->S1 & UART_S1_TDRE_MASK) && (UART2->C2 & UART_C2_TIE_MASK))
??UART2_IRQHandler_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART2_IRQHandler_1
        LDR.N    R0,??DataTable10_45  ;; 0x4006c003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART2_IRQHandler_1
//  458   {
//  459     UART_T_ISR[2]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+8]
        BLX      R0
//  460   }
//  461   
//  462 #if (UCOS_II > 0u)
//  463   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  464 #endif
//  465 }
??UART2_IRQHandler_1:
        POP      {R4,PC}          ;; return
//  466 
//  467 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  468 void UART3_IRQHandler(void)
//  469 {
UART3_IRQHandler:
        PUSH     {R4,LR}
//  470 #if (UCOS_II > 0u)
//  471   OS_CPU_SR  cpu_sr = 0u;
//  472   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  473   OSIntEnter();
//  474   OS_EXIT_CRITICAL();
//  475 #endif
//  476   
//  477   //��������жϺ���
//  478   if((UART3->S1 & UART_S1_RDRF_MASK) && (UART3->C2 & UART_C2_RIE_MASK))
        LDR.N    R4,??DataTable10_46  ;; 0x4006d004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART3_IRQHandler_0
        LDR.N    R0,??DataTable10_47  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART3_IRQHandler_0
//  479   {
//  480     UART_R_ISR[3]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+12]
        BLX      R0
//  481   }
//  482   //���뷢���жϺ���
//  483   if((UART3->S1 & UART_S1_TDRE_MASK) && (UART3->C2 & UART_C2_TIE_MASK))
??UART3_IRQHandler_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART3_IRQHandler_1
        LDR.N    R0,??DataTable10_47  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART3_IRQHandler_1
//  484   {
//  485     UART_T_ISR[3]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+12]
        BLX      R0
//  486   }
//  487   
//  488 #if (UCOS_II > 0u)
//  489   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  490 #endif
//  491 }
??UART3_IRQHandler_1:
        POP      {R4,PC}          ;; return
//  492 
//  493 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  494 void UART4_IRQHandler(void)
//  495 {
UART4_IRQHandler:
        PUSH     {R4,LR}
//  496 #if (UCOS_II > 0u)
//  497   OS_CPU_SR  cpu_sr = 0u;
//  498   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  499   OSIntEnter();
//  500   OS_EXIT_CRITICAL();
//  501 #endif
//  502   
//  503   //��������жϺ���
//  504   if((UART4->S1 & UART_S1_RDRF_MASK) && (UART4->C2 & UART_C2_RIE_MASK))
        LDR.N    R4,??DataTable10_48  ;; 0x400ea004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART4_IRQHandler_0
        LDR.N    R0,??DataTable10_49  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART4_IRQHandler_0
//  505   {
//  506     UART_R_ISR[4]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+16]
        BLX      R0
//  507   }
//  508   //���뷢���жϺ���
//  509   if((UART4->S1 & UART_S1_TDRE_MASK) && (UART4->C2 & UART_C2_TIE_MASK))
??UART4_IRQHandler_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART4_IRQHandler_1
        LDR.N    R0,??DataTable10_49  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART4_IRQHandler_1
//  510   {
//  511     UART_T_ISR[4]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+16]
        BLX      R0
//  512   }
//  513   
//  514 #if (UCOS_II > 0u)
//  515   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  516 #endif
//  517 }
??UART4_IRQHandler_1:
        POP      {R4,PC}          ;; return
//  518 
//  519 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  520 void UART5_IRQHandler(void)
//  521 {
UART5_IRQHandler:
        PUSH     {R4,LR}
//  522 #if (UCOS_II > 0u)
//  523   OS_CPU_SR  cpu_sr = 0u;
//  524   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  525   OSIntEnter();
//  526   OS_EXIT_CRITICAL();
//  527 #endif
//  528   
//  529   //��������жϺ���
//  530   if((UART5->S1 & UART_S1_RDRF_MASK) && (UART5->C2 & UART_C2_RIE_MASK))
        LDR.N    R4,??DataTable10_50  ;; 0x400eb004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART5_IRQHandler_0
        LDR.N    R0,??DataTable10_51  ;; 0x400eb003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART5_IRQHandler_0
//  531   {
//  532     UART_R_ISR[5]();
        LDR.N    R0,??DataTable10_38
        LDR      R0,[R0, #+20]
        BLX      R0
//  533   }
//  534   //���뷢���жϺ���
//  535   if((UART5->S1 & UART_S1_TDRE_MASK) && (UART5->C2 & UART_C2_TIE_MASK))
??UART5_IRQHandler_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART5_IRQHandler_1
        LDR.N    R0,??DataTable10_51  ;; 0x400eb003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART5_IRQHandler_1
//  536   {
//  537     UART_T_ISR[5]();
        LDR.N    R0,??DataTable10_39
        LDR      R0,[R0, #+20]
        BLX      R0
//  538   }
//  539   
//  540 #if (UCOS_II > 0u)
//  541   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  542 #endif
//  543 }
??UART5_IRQHandler_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DATA32
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DATA32
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DATA32
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DATA32
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DATA32
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DATA32
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DATA32
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DATA32
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DATA32
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DATA32
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DATA32
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DATA32
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DATA32
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DATA32
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DATA32
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DATA32
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DATA32
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DATA32
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DATA32
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DATA32
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DATA32
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DATA32
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DATA32
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DATA32
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DATA32
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DATA32
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DATA32
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DATA32
        DC32     0x40048028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_29:
        DATA32
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_30:
        DATA32
        DC32     0x4004b03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_31:
        DATA32
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_32:
        DATA32
        DC32     0x4004b038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_33:
        DATA32
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_34:
        DATA32
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_35:
        DATA32
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_36:
        DATA32
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_37:
        DATA32
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_38:
        DATA32
        DC32     UART_R_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_39:
        DATA32
        DC32     UART_T_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_40:
        DATA32
        DC32     0x4006a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_41:
        DATA32
        DC32     0x4006a003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_42:
        DATA32
        DC32     0x4006b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_43:
        DATA32
        DC32     0x4006b003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_44:
        DATA32
        DC32     0x4006c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_45:
        DATA32
        DC32     0x4006c003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_46:
        DATA32
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_47:
        DATA32
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_48:
        DATA32
        DC32     0x400ea004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_49:
        DATA32
        DC32     0x400ea003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_50:
        DATA32
        DC32     0x400eb004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_51:
        DATA32
        DC32     0x400eb003

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    48 bytes in section .bss
// 1 600 bytes in section .text
// 
// 1 600 bytes of CODE memory
//    48 bytes of DATA memory
//
//Errors: none
//Warnings: none