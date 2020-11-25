///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        18/May/2019  16:18:22
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_WDOG.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW9506.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_WDOG.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\HW_WDOG.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock

        PUBLIC LPLD_WDOG_Disable
        PUBLIC LPLD_WDOG_Enable
        PUBLIC LPLD_WDOG_Feed
        PUBLIC LPLD_WDOG_Init

// C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_WDOG.c
//    1 /**
//    2  * @file HW_WDOG.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief WDOG�ײ�ģ����غ���
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
//   23 #include "HW_WDOG.h"
//   24 
//   25 static void LPLD_WDOG_Unlock(void);
//   26 
//   27 /*
//   28  * LPLD_WDOG_Init
//   29  * ���Ź���ʼ��
//   30  * 
//   31  * ����:
//   32  *    period_ms--���Ź���λ����
//   33  *      |__��λΪ����
//   34  *
//   35  * ���:
//   36  *    0--���ô���
//   37  *    1--���óɹ�
//   38  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 uint8 LPLD_WDOG_Init(uint32 period_ms)
//   40 {
LPLD_WDOG_Init:
        PUSH     {R3-R5,LR}
//   41   uint8 presc = 3;
        MOVS     R4,#+3
//   42   uint32 bus_khz = g_bus_clock / 1000;
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+0]
        MOV      R2,#+1000
        UDIV     R1,R1,R2
//   43   uint32 value;
//   44   
//   45   if(period_ms==0)
        CMP      R0,#+0
        BNE.N    ??LPLD_WDOG_Init_0
//   46   {
//   47     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_WDOG_Init_1
//   48   }
//   49     
//   50   value=(period_ms*bus_khz)/(presc+1);
??LPLD_WDOG_Init_0:
        MULS     R0,R1,R0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R1,R1,#+1
        UDIV     R5,R0,R1
//   51     
//   52   //�Ƚ����Ĵ���
//   53   LPLD_WDOG_Unlock();
        BL       LPLD_WDOG_Unlock
//   54   //���÷�Ƶ
//   55   WDOG->PRESC = WDOG_PRESC_PRESCVAL(presc);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R4,R4,#+8
        ANDS     R4,R4,#0x700
        LDR.N    R0,??DataTable4_1  ;; 0x40052016
        STRH     R4,[R0, #+0]
//   56   //���ü�ʱ���ֵ
//   57   WDOG->TOVALH = (value&0xFFFF0000)>>16;
        MOVS     R0,R5
        LSRS     R0,R0,#+16
        LDR.N    R1,??DataTable4_2  ;; 0x40052004
        STRH     R0,[R1, #+0]
//   58   WDOG->TOVALL = (value&0x0000FFFF)>>0;  
        LDR.N    R0,??DataTable4_3  ;; 0x40052006
        STRH     R5,[R0, #+0]
//   59   //ʹ��WDOG
//   60   WDOG->STCTRLH |= WDOG_STCTRLH_WDOGEN_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40052000
        LDRH     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRH     R1,[R0, #+0]
//   61   
//   62   return 1;
        MOVS     R0,#+1
??LPLD_WDOG_Init_1:
        POP      {R1,R4,R5,PC}    ;; return
//   63 }
//   64 
//   65 /*
//   66  * LPLD_WDOG_Enable
//   67  * ���Ź�ʹ��
//   68  * 
//   69  * ����:
//   70  *    ��
//   71  *
//   72  * ���:
//   73  *    ��
//   74  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void LPLD_WDOG_Enable(void)
//   76 {
LPLD_WDOG_Enable:
        PUSH     {R7,LR}
//   77   //�Ƚ����Ĵ���
//   78   LPLD_WDOG_Unlock();
        BL       LPLD_WDOG_Unlock
//   79   //ʹ��WDOG
//   80   WDOG->STCTRLH |= WDOG_STCTRLH_WDOGEN_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40052000
        LDRH     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRH     R1,[R0, #+0]
//   81 }
        POP      {R0,PC}          ;; return
//   82 
//   83 /*
//   84  * LPLD_WDOG_Disable
//   85  * ���Ź�����
//   86  * 
//   87  * ����:
//   88  *    ��
//   89  *
//   90  * ���:
//   91  *    ��
//   92  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void LPLD_WDOG_Disable(void)
//   94 {
LPLD_WDOG_Disable:
        PUSH     {R7,LR}
//   95   //�Ƚ����Ĵ���
//   96   LPLD_WDOG_Unlock();
        BL       LPLD_WDOG_Unlock
//   97   //����WDOG
//   98   WDOG->STCTRLH &= ~(WDOG_STCTRLH_WDOGEN_MASK);
        LDR.N    R1,??DataTable4_4  ;; 0x40052000
        LDRH     R2,[R1, #+0]
        MOVW     R0,#+65534
        ANDS     R2,R0,R2
        STRH     R2,[R1, #+0]
//   99 }
        POP      {R0,PC}          ;; return
//  100 
//  101 /*
//  102  * LPLD_WDOG_Feed
//  103  * ι��
//  104  * 
//  105  * ����:
//  106  *    ��
//  107  *
//  108  * ���:
//  109  *    ��
//  110  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void LPLD_WDOG_Feed(void)
//  112 {
//  113   WDOG->REFRESH = 0xA602;
LPLD_WDOG_Feed:
        LDR.N    R0,??DataTable4_5  ;; 0x4005200c
        MOVW     R1,#+42498
        STRH     R1,[R0, #+0]
//  114   WDOG->REFRESH = 0xB480;
        MOVW     R1,#+46208
        STRH     R1,[R0, #+0]
//  115 }
        BX       LR               ;; return
//  116 
//  117 /*
//  118  * LPLD_WDOG_Unlock
//  119  * WDOG�����������ڲ�����
//  120  * 
//  121  * ����:
//  122  *    ��
//  123  *
//  124  * ���:
//  125  *    ��
//  126  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 static void LPLD_WDOG_Unlock(void)
//  128 {
//  129   //���´��������20��ʱ����������ɣ�����Ḵλ
//  130   DisableInterrupts;
LPLD_WDOG_Unlock:
        CPSID    I
//  131   
//  132   //д0xC520�������Ĵ���
//  133   WDOG->UNLOCK = 0xC520;
        LDR.N    R0,??DataTable4_6  ;; 0x4005200e
        MOVW     R1,#+50464
        STRH     R1,[R0, #+0]
//  134   
//  135   //������д0xD928��ɽ���
//  136   WDOG->UNLOCK = 0xD928;
        MOVW     R1,#+55592
        STRH     R1,[R0, #+0]
//  137   	
//  138   EnableInterrupts;
        CPSIE    I
//  139 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DATA32
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DATA32
        DC32     0x40052016

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DATA32
        DC32     0x40052004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DATA32
        DC32     0x40052006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DATA32
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DATA32
        DC32     0x4005200c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DATA32
        DC32     0x4005200e

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 180 bytes in section .text
// 
// 180 bytes of CODE memory
//
//Errors: none
//Warnings: none