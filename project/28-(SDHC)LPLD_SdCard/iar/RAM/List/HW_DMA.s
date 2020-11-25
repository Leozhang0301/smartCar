///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        18/May/2019  16:18:15
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_DMA.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW7A28.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_DMA.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\HW_DMA.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC DMA0_IRQHandler
        PUBLIC DMA10_IRQHandler
        PUBLIC DMA11_IRQHandler
        PUBLIC DMA12_IRQHandler
        PUBLIC DMA13_IRQHandler
        PUBLIC DMA14_IRQHandler
        PUBLIC DMA15_IRQHandler
        PUBLIC DMA1_IRQHandler
        PUBLIC DMA2_IRQHandler
        PUBLIC DMA3_IRQHandler
        PUBLIC DMA4_IRQHandler
        PUBLIC DMA5_IRQHandler
        PUBLIC DMA6_IRQHandler
        PUBLIC DMA7_IRQHandler
        PUBLIC DMA8_IRQHandler
        PUBLIC DMA9_IRQHandler
        PUBLIC DMA_ISR
        PUBLIC LPLD_DMA_DisableIrq
        PUBLIC LPLD_DMA_EnableIrq
        PUBLIC LPLD_DMA_Init
        PUBLIC LPLD_DMA_SoftwareStartService

// C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_DMA.c
//    1 /**
//    2  * @file HW_DMA.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief DMA�ײ�ģ����غ���
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
        LDR.W    R1,??DataTable19  ;; 0xe000e100
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
        LDR.W    R1,??DataTable19_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "HW_DMA.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 DMA_ISR_CALLBACK DMA_ISR[16];
DMA_ISR:
        DS8 64
//   27 
//   28 
//   29 /*
//   30  * LPLD_DMA_Init
//   31  * ��ʼ��eDMAģ��
//   32  * 
//   33  * ����:
//   34  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//   35  *                        ���嶨���DMA_InitTypeDef
//   36  *
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 LPLD_DMA_Init(DMA_InitTypeDef dma_init_struct)
//   42 {
LPLD_DMA_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
//   43   uint8 chx = dma_init_struct.DMA_CHx;
        LDRB     R5,[SP, #+56]
//   44   uint8 req = dma_init_struct.DMA_Req;
        LDRB     R6,[SP, #+57]
//   45   boolean periodic_trigg = dma_init_struct.DMA_PeriodicTriggerEnable;
        LDRB     R0,[SP, #+58]
        STRB     R0,[SP, #+0]
//   46   uint16 major_cnt = dma_init_struct.DMA_MajorLoopCnt;
        LDRH     R7,[SP, #+60]
//   47   uint32 minor_cnt = dma_init_struct.DMA_MinorByteCnt;
        LDR      R0,[SP, #+64]
        STR      R0,[SP, #+16]
//   48   uint32 src_addr = dma_init_struct.DMA_SourceAddr;
        LDR      R0,[SP, #+68]
        STR      R0,[SP, #+8]
//   49   uint8 src_dsize = dma_init_struct.DMA_SourceDataSize;
        LDRB     R8,[SP, #+72]
//   50   int16 src_addroffset = dma_init_struct.DMA_SourceAddrOffset;
        LDRSH    R0,[SP, #+74]
        STRH     R0,[SP, #+4]
//   51   int32 src_lastadj = dma_init_struct.DMA_LastSourceAddrAdj;
        LDR      R0,[SP, #+76]
        STR      R0,[SP, #+12]
//   52   uint32 dst_addr = dma_init_struct.DMA_DestAddr;
        LDR      R4,[SP, #+80]
//   53   uint8 dst_dsize = dma_init_struct.DMA_DestDataSize;
        LDRB     R9,[SP, #+84]
//   54   int16 dst_addroffset = dma_init_struct.DMA_DestAddrOffset;
        LDRSH    R0,[SP, #+86]
        STRH     R0,[SP, #+2]
//   55   int32 dst_lastadj = dma_init_struct.DMA_LastDestAddrAdj;
        LDR      R10,[SP, #+88]
//   56   boolean auto_disable = dma_init_struct.DMA_AutoDisableReq;
        LDRB     R11,[SP, #+92]
//   57   
//   58   //�������
//   59   ASSERT( chx <= DMA_CH15 );       //eDMAͨ��ѡ��
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BLT.N    ??LPLD_DMA_Init_0
        MOVS     R1,#+59
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   60   ASSERT( req <= DMA_MUX_63 );     //����Դѡ��
??LPLD_DMA_Init_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+64
        BLT.N    ??LPLD_DMA_Init_1
        MOVS     R1,#+60
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   61   ASSERT( major_cnt <= 0x7FFF );   //�������ж�
??LPLD_DMA_Init_1:
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+32768
        BLT.N    ??LPLD_DMA_Init_2
        MOVS     R1,#+61
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   62   ASSERT( src_addr != NULL );      //Դ��ַ�ж�
??LPLD_DMA_Init_2:
        LDR      R0,[SP, #+8]
        CMP      R0,#+0
        BNE.N    ??LPLD_DMA_Init_3
        MOVS     R1,#+62
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   63   ASSERT( (src_dsize <= DMA_SRC_32BIT)||(src_dsize == DMA_SRC_16BYTE) );     //Դ���ݴ����С�ж�
??LPLD_DMA_Init_3:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??LPLD_DMA_Init_4
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BEQ.N    ??LPLD_DMA_Init_4
        MOVS     R1,#+63
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   64   ASSERT( dst_addr != NULL );      //Ŀ�ĵ�ַ�ж�
??LPLD_DMA_Init_4:
        CMP      R4,#+0
        BNE.N    ??LPLD_DMA_Init_5
        MOVS     R1,#+64
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   65   ASSERT( (dst_dsize <= DMA_DST_32BIT)||(dst_dsize == DMA_DST_16BYTE) );     //Ŀ�����ݴ����С�ж�
??LPLD_DMA_Init_5:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??LPLD_DMA_Init_6
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BEQ.N    ??LPLD_DMA_Init_6
        MOVS     R1,#+65
        LDR.N    R0,??DataTable19_2
        BL       assert_failed
//   66  
//   67   SIM->SCGC6 |= SIM_SCGC6_DMAMUX_MASK;  //��DMAͨ����·������ʱ��   
??LPLD_DMA_Init_6:
        LDR.N    R0,??DataTable19_3  ;; 0x4004803c
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//   68   SIM->SCGC7 |= SIM_SCGC7_DMA_MASK;     //��DMAģ��ʱ��
        LDR.N    R0,??DataTable19_4  ;; 0x40048040
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//   69   
//   70   //�ر�ͨ��xӲ��DMA���� 
//   71   DMA0->ERQ &= ~(1<<chx);
        LDR.N    R0,??DataTable19_5  ;; 0x4000800c
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LSLS     R2,R2,R5
        BICS     R1,R1,R2
        STR      R1,[R0, #+0]
//   72   
//   73   //ѡ�� ͨ��x ���������DMAԴ������
//   74   DMAMUX->CHCFG[chx] = DMAMUX_CHCFG_SOURCE(req);
        LDR.N    R1,??DataTable19_6  ;; 0x40021000
        ANDS     R6,R6,#0x3F
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R6,[R1, R0]
//   75   //�Ƿ�ʹ�����ڴ�������
//   76   if(periodic_trigg == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_DMA_Init_7
//   77   {
//   78     DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_TRIG_MASK;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R0,[R1, R0]
        ORRS     R0,R0,#0x40
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRB     R0,[R1, R2]
        B.N      ??LPLD_DMA_Init_8
//   79   }
//   80   else
//   81   {
//   82     DMAMUX->CHCFG[chx] &= ~(DMAMUX_CHCFG_TRIG_MASK);
??LPLD_DMA_Init_7:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R0,[R1, R0]
        ANDS     R0,R0,#0xBF
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRB     R0,[R1, R2]
//   83   }
//   84   
//   85   
//   86   //����Դ��ַ   
//   87   DMA0->TCD[chx].SADDR = DMA_SADDR_SADDR(src_addr);
??LPLD_DMA_Init_8:
        LDR.N    R2,??DataTable19_7  ;; 0x40009000
        LDR      R0,[SP, #+8]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        STR      R0,[R2, R3]
//   88   //��ִ�������Դ��ַ�Ĳ���֮����Դ��ַ�Ļ���������/����ƫ�Ƶ�ַ
//   89   DMA0->TCD[chx].SOFF = DMA_SOFF_SOFF(src_addroffset);
        LDRH     R0,[SP, #+4]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STRH     R0,[R3, #+4]
//   90   //����Դ��ַ�Ĵ����С
//   91   DMA0->TCD[chx].ATTR = 0 | DMA_ATTR_SSIZE(src_dsize);
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R8,R8,#+8
        ANDS     R8,R8,#0x700
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        STRH     R8,[R0, #+6]
//   92   //���ļ���������major iteration count���ﵽ�����µ���Դ��ַ
//   93   DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(src_lastadj);
        LDR      R0,[SP, #+12]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STR      R0,[R3, #+12]
//   94   
//   95   //����Ŀ�ĵ�ַ 
//   96   DMA0->TCD[chx].DADDR = DMA_DADDR_DADDR(dst_addr);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        STR      R4,[R0, #+16]
//   97   //��ִ�������Ŀ�ĵ�ַ�Ĳ���֮����Ŀ�ĵ�ַ�Ļ���������/����ƫ�Ƶ�ַ
//   98   DMA0->TCD[chx].DOFF = DMA_DOFF_DOFF(dst_addroffset);
        LDRH     R0,[SP, #+2]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STRH     R0,[R3, #+20]
//   99   //����Ŀ�ĵ�ַ�Ĵ������
//  100   DMA0->TCD[chx].ATTR |= DMA_ATTR_DSIZE(dst_dsize);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        LDRH     R0,[R0, #+6]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ANDS     R9,R9,#0x7
        ORRS     R9,R9,R0
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        STRH     R9,[R0, #+6]
//  101   //���ļ���������major iteration count���ﵽ�����µ���Ŀ�ĵ�ַ
//  102   DMA0->TCD[chx].DLAST_SGA = DMA_DLAST_SGA_DLASTSGA(dst_lastadj);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        STR      R10,[R0, #+24]
//  103   
//  104   //Ĭ��Ϊ����ͨ�����ӹ��ܣ������������Ӵ˹���
//  105   if( 1 == 1)
//  106   {
//  107     //===============���������������ȣ�ѭ������====================================
//  108     //������ѭ�������� current major loop count
//  109     DMA0->TCD[chx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R0,R7,#+17       ;; ZeroExtS R0,R7,#+17,#+17
        LSRS     R0,R0,#+17
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STRH     R0,[R3, #+22]
//  110     //��ʼѭ��������������ѭ��������Ϊ���ʱ�򣬽�װ����ʼѭ����������ֵ
//  111     DMA0->TCD[chx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R7,R7,#+17       ;; ZeroExtS R7,R7,#+17,#+17
        LSRS     R7,R7,#+17
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        STRH     R7,[R0, #+30]
//  112   }
//  113   
//  114   //Ĭ��Ϊ���ô�ѭ����ַƫ�ƹ��ܣ������������Ӵ˹���
//  115   if( 1 == 1)
//  116   {
//  117     //��ѭ��һ�δ����ֽڵĸ���
//  118     DMA0->TCD[chx].NBYTES_MLNO = DMA_NBYTES_MLNO_NBYTES(minor_cnt);
        LDR      R0,[SP, #+16]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STR      R0,[R3, #+8]
//  119   }
//  120   
//  121   //���TCD���ƼĴ���     
//  122   DMA0->TCD[chx].CSR = 0;
        MOVS     R0,#+0
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STRH     R0,[R3, #+28]
//  123   
//  124   //����eDMA�ж�
//  125   if((dma_init_struct.DMA_Isr != NULL) && 
//  126      (dma_init_struct.DMA_MajorCompleteIntEnable == TRUE))
        LDR      R0,[SP, #+96]
        CMP      R0,#+0
        BEQ.N    ??LPLD_DMA_Init_9
        LDRB     R0,[SP, #+93]
        CMP      R0,#+1
        BNE.N    ??LPLD_DMA_Init_9
//  127   {
//  128 
//  129        DMA0->TCD[chx].CSR |= DMA_CSR_INTMAJOR_MASK; //ʹ��DMA ��ѭ�������������� �ж�
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x2
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STRH     R0,[R3, #+28]
//  130        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R0,[SP, #+96]
        LDR.N    R3,??DataTable19_8
        MOVS     R4,R5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R3, R4, LSL #+2]
//  131   }
//  132   if((dma_init_struct.DMA_Isr != NULL) && 
//  133      (dma_init_struct.DMA_MajorHalfCompleteIntEnable == TRUE))
??LPLD_DMA_Init_9:
        LDR      R0,[SP, #+96]
        CMP      R0,#+0
        BEQ.N    ??LPLD_DMA_Init_10
        LDRB     R0,[SP, #+94]
        CMP      R0,#+1
        BNE.N    ??LPLD_DMA_Init_10
//  134   {
//  135 
//  136        DMA0->TCD[chx].CSR |= DMA_CSR_INTHALF_MASK; //ʹ��DMA ��ѭ������������һ�� �ж�
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x4
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R3,R2,R3
        STRH     R0,[R3, #+28]
//  137        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R0,[SP, #+96]
        LDR.N    R3,??DataTable19_8
        MOVS     R4,R5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R3, R4, LSL #+2]
//  138   }
//  139     
//  140   if(auto_disable == TRUE)
??LPLD_DMA_Init_10:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.N    ??LPLD_DMA_Init_11
//  141   {
//  142      DMA0->TCD[chx].CSR |= DMA_CSR_DREQ_MASK; //��ѭ����������������Զ��ر�DMA 
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x8
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+5
        ADD      R2,R2,R3
        STRH     R0,[R2, #+28]
        B.N      ??LPLD_DMA_Init_12
//  143   }
//  144   else
//  145   {
//  146      DMA0->TCD[chx].CSR &= ~(DMA_CSR_DREQ_MASK); //��ѭ��������������󣬲��ر�DMA
??LPLD_DMA_Init_11:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        LDRH     R3,[R0, #+28]
        MOVW     R0,#+65527
        ANDS     R3,R0,R3
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R2,R0
        STRH     R3,[R0, #+28]
//  147   } 
//  148  
//  149   //DMAͨ��ʹ��
//  150   DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_ENBL_MASK;
??LPLD_DMA_Init_12:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R0,[R1, R0]
        ORRS     R0,R0,#0x80
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R1, R5]
//  151     
//  152   return 1;
        MOVS     R0,#+1
        ADD      SP,SP,#+20
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  153 }
//  154 
//  155 /*
//  156  * LPLD_DMA_EnableIrq
//  157  * ʹ��eDMA�ж�
//  158  * 
//  159  * ����:
//  160  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//  161  *                        ���嶨���DMA_InitTypeDef
//  162  *
//  163  * ���:
//  164  *    0--ʧ��
//  165  *    1--�ɹ�
//  166  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 uint8 LPLD_DMA_EnableIrq(DMA_InitTypeDef dma_init_struct)
//  168 {
LPLD_DMA_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  169   enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn));  
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       __NVIC_EnableIRQ
//  170   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  171 }
//  172 
//  173 /*
//  174  * LPLD_DMA_DisableIrq
//  175  * ����eDMA�ж�
//  176  * 
//  177  * ����:
//  178  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//  179  *                        ���嶨���DMA_InitTypeDef
//  180  *
//  181  * ���:
//  182  *    0--ʧ��
//  183  *    1--�ɹ�
//  184  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 uint8 LPLD_DMA_DisableIrq(DMA_InitTypeDef dma_init_struct)
//  186 {
LPLD_DMA_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  187   disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn));
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       __NVIC_DisableIRQ
//  188   return 1;
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  189 }
//  190 
//  191 /*
//  192  * LPLD_DMA_SoftwareStartService
//  193  * DMA��������������ʼ
//  194  * 
//  195  * ����:
//  196  *    dma_init_struct--eDMA��ʼ���ṹ�壬
//  197  *                        ���嶨���DMA_InitTypeDef
//  198  *
//  199  * ���:
//  200  *    ��
//  201  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 __INLINE void LPLD_DMA_SoftwareStartService(DMA_InitTypeDef dma_init_struct)
//  203 {
LPLD_DMA_SoftwareStartService:
        PUSH     {R0-R3}
//  204   DMA0->TCD[dma_init_struct.DMA_CHx].CSR |= DMA_CSR_START_MASK; 
        LDR.N    R0,??DataTable19_7  ;; 0x40009000
        LDRB     R1,[SP, #+0]
        LSLS     R1,R1,#+5
        ADD      R1,R0,R1
        LDRH     R1,[R1, #+28]
        ORRS     R1,R1,#0x1
        LDRB     R2,[SP, #+0]
        LSLS     R2,R2,#+5
        ADD      R0,R0,R2
        STRH     R1,[R0, #+28]
//  205 }
        ADD      SP,SP,#+16
        BX       LR               ;; return
//  206 
//  207 /*
//  208  * eDMA�жϴ�������
//  209  * �������ļ�startup_K60.s�е��ж�����������
//  210  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  211  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void DMA0_IRQHandler(void)
//  213 {
DMA0_IRQHandler:
        PUSH     {R7,LR}
//  214 #if (UCOS_II > 0u)
//  215   OS_CPU_SR  cpu_sr = 0u;
//  216   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  217   OSIntEnter();
//  218   OS_EXIT_CRITICAL();
//  219 #endif  
//  220   
//  221   //�����û��Զ����жϷ���
//  222   DMA_ISR[0]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  223   //����жϱ�־λ
//  224   DMA0->INT |= 0x1u<<0;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  225   
//  226 #if (UCOS_II > 0u)
//  227   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  228 #endif
//  229 }
        POP      {R0,PC}          ;; return
//  230 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 void DMA1_IRQHandler(void)
//  232 {
DMA1_IRQHandler:
        PUSH     {R7,LR}
//  233 #if (UCOS_II > 0u)
//  234   OS_CPU_SR  cpu_sr = 0u;
//  235   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  236   OSIntEnter();
//  237   OS_EXIT_CRITICAL();
//  238 #endif  
//  239   
//  240   //�����û��Զ����жϷ���
//  241   DMA_ISR[1]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+4]
        BLX      R0
//  242   //����жϱ�־λ
//  243   DMA0->INT |= 0x1u<<1;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  244   
//  245 #if (UCOS_II > 0u)
//  246   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  247 #endif
//  248 }
        POP      {R0,PC}          ;; return
//  249 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  250 void DMA2_IRQHandler(void)
//  251 {
DMA2_IRQHandler:
        PUSH     {R7,LR}
//  252 #if (UCOS_II > 0u)
//  253   OS_CPU_SR  cpu_sr = 0u;
//  254   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  255   OSIntEnter();
//  256   OS_EXIT_CRITICAL();
//  257 #endif  
//  258   
//  259   //�����û��Զ����жϷ���
//  260   DMA_ISR[2]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+8]
        BLX      R0
//  261   //����жϱ�־λ
//  262   DMA0->INT |= 0x1u<<2;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  263   
//  264 #if (UCOS_II > 0u)
//  265   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  266 #endif
//  267 }
        POP      {R0,PC}          ;; return
//  268 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  269 void DMA3_IRQHandler(void)
//  270 {
DMA3_IRQHandler:
        PUSH     {R7,LR}
//  271 #if (UCOS_II > 0u)
//  272   OS_CPU_SR  cpu_sr = 0u;
//  273   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  274   OSIntEnter();
//  275   OS_EXIT_CRITICAL();
//  276 #endif  
//  277   
//  278   //�����û��Զ����жϷ���
//  279   DMA_ISR[3]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+12]
        BLX      R0
//  280   //����жϱ�־λ
//  281   DMA0->INT |= 0x1u<<3;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x8
        STR      R1,[R0, #+0]
//  282   
//  283 #if (UCOS_II > 0u)
//  284   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  285 #endif
//  286 }
        POP      {R0,PC}          ;; return
//  287 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void DMA4_IRQHandler(void)
//  289 {
DMA4_IRQHandler:
        PUSH     {R7,LR}
//  290 #if (UCOS_II > 0u)
//  291   OS_CPU_SR  cpu_sr = 0u;
//  292   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  293   OSIntEnter();
//  294   OS_EXIT_CRITICAL();
//  295 #endif  
//  296   
//  297   //�����û��Զ����жϷ���
//  298   DMA_ISR[4]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+16]
        BLX      R0
//  299   //����жϱ�־λ
//  300   DMA0->INT |= 0x1u<<4;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10
        STR      R1,[R0, #+0]
//  301   
//  302 #if (UCOS_II > 0u)
//  303   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  304 #endif
//  305 }
        POP      {R0,PC}          ;; return
//  306 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  307 void DMA5_IRQHandler(void)
//  308 {
DMA5_IRQHandler:
        PUSH     {R7,LR}
//  309 #if (UCOS_II > 0u)
//  310   OS_CPU_SR  cpu_sr = 0u;
//  311   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  312   OSIntEnter();
//  313   OS_EXIT_CRITICAL();
//  314 #endif  
//  315   
//  316   //�����û��Զ����жϷ���
//  317   DMA_ISR[5]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+20]
        BLX      R0
//  318   //����жϱ�־λ
//  319   DMA0->INT |= 0x1u<<5;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x20
        STR      R1,[R0, #+0]
//  320   
//  321 #if (UCOS_II > 0u)
//  322   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  323 #endif
//  324 }
        POP      {R0,PC}          ;; return
//  325 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  326 void DMA6_IRQHandler(void)
//  327 {
DMA6_IRQHandler:
        PUSH     {R7,LR}
//  328 #if (UCOS_II > 0u)
//  329   OS_CPU_SR  cpu_sr = 0u;
//  330   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  331   OSIntEnter();
//  332   OS_EXIT_CRITICAL();
//  333 #endif  
//  334   
//  335   //�����û��Զ����жϷ���
//  336   DMA_ISR[6]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+24]
        BLX      R0
//  337   //����жϱ�־λ
//  338   DMA0->INT |= 0x1u<<6;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x40
        STR      R1,[R0, #+0]
//  339   
//  340 #if (UCOS_II > 0u)
//  341   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  342 #endif
//  343 }
        POP      {R0,PC}          ;; return
//  344 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 void DMA7_IRQHandler(void)
//  346 {
DMA7_IRQHandler:
        PUSH     {R7,LR}
//  347 #if (UCOS_II > 0u)
//  348   OS_CPU_SR  cpu_sr = 0u;
//  349   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  350   OSIntEnter();
//  351   OS_EXIT_CRITICAL();
//  352 #endif  
//  353   
//  354   //�����û��Զ����жϷ���
//  355   DMA_ISR[7]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+28]
        BLX      R0
//  356   //����жϱ�־λ
//  357   DMA0->INT |= 0x1u<<7;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x80
        STR      R1,[R0, #+0]
//  358   
//  359 #if (UCOS_II > 0u)
//  360   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  361 #endif
//  362 }
        POP      {R0,PC}          ;; return
//  363 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  364 void DMA8_IRQHandler(void)
//  365 {
DMA8_IRQHandler:
        PUSH     {R7,LR}
//  366 #if (UCOS_II > 0u)
//  367   OS_CPU_SR  cpu_sr = 0u;
//  368   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  369   OSIntEnter();
//  370   OS_EXIT_CRITICAL();
//  371 #endif  
//  372   
//  373   //�����û��Զ����жϷ���
//  374   DMA_ISR[8]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+32]
        BLX      R0
//  375   //����жϱ�־λ
//  376   DMA0->INT |= 0x1u<<8;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x100
        STR      R1,[R0, #+0]
//  377   
//  378 #if (UCOS_II > 0u)
//  379   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  380 #endif
//  381 }
        POP      {R0,PC}          ;; return
//  382 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 void DMA9_IRQHandler(void)
//  384 {
DMA9_IRQHandler:
        PUSH     {R7,LR}
//  385 #if (UCOS_II > 0u)
//  386   OS_CPU_SR  cpu_sr = 0u;
//  387   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  388   OSIntEnter();
//  389   OS_EXIT_CRITICAL();
//  390 #endif  
//  391   
//  392   //�����û��Զ����жϷ���
//  393   DMA_ISR[9]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+36]
        BLX      R0
//  394   //����жϱ�־λ
//  395   DMA0->INT |= 0x1u<<9;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x200
        STR      R1,[R0, #+0]
//  396   
//  397 #if (UCOS_II > 0u)
//  398   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  399 #endif
//  400 }
        POP      {R0,PC}          ;; return
//  401 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  402 void DMA10_IRQHandler(void)
//  403 {
DMA10_IRQHandler:
        PUSH     {R7,LR}
//  404 #if (UCOS_II > 0u)
//  405   OS_CPU_SR  cpu_sr = 0u;
//  406   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  407   OSIntEnter();
//  408   OS_EXIT_CRITICAL();
//  409 #endif  
//  410   
//  411   //�����û��Զ����жϷ���
//  412   DMA_ISR[10]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+40]
        BLX      R0
//  413   //����жϱ�־λ
//  414   DMA0->INT |= 0x1u<10;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  415   
//  416 #if (UCOS_II > 0u)
//  417   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  418 #endif
//  419 }
        POP      {R0,PC}          ;; return
//  420 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  421 void DMA11_IRQHandler(void)
//  422 {
DMA11_IRQHandler:
        PUSH     {R7,LR}
//  423 #if (UCOS_II > 0u)
//  424   OS_CPU_SR  cpu_sr = 0u;
//  425   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  426   OSIntEnter();
//  427   OS_EXIT_CRITICAL();
//  428 #endif  
//  429   
//  430   //�����û��Զ����жϷ���
//  431   DMA_ISR[11]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+44]
        BLX      R0
//  432   //����жϱ�־λ
//  433   DMA0->INT |= 0x1u<<11;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x800
        STR      R1,[R0, #+0]
//  434   
//  435 #if (UCOS_II > 0u)
//  436   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  437 #endif
//  438 }
        POP      {R0,PC}          ;; return
//  439 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  440 void DMA12_IRQHandler(void)
//  441 {
DMA12_IRQHandler:
        PUSH     {R7,LR}
//  442 #if (UCOS_II > 0u)
//  443   OS_CPU_SR  cpu_sr = 0u;
//  444   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  445   OSIntEnter();
//  446   OS_EXIT_CRITICAL();
//  447 #endif  
//  448   
//  449   //�����û��Զ����жϷ���
//  450   DMA_ISR[12]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+48]
        BLX      R0
//  451   //����жϱ�־λ
//  452   DMA0->INT |= 0x1u<<12;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1000
        STR      R1,[R0, #+0]
//  453   
//  454 #if (UCOS_II > 0u)
//  455   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  456 #endif
//  457 }
        POP      {R0,PC}          ;; return
//  458 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  459 void DMA13_IRQHandler(void)
//  460 {
DMA13_IRQHandler:
        PUSH     {R7,LR}
//  461 #if (UCOS_II > 0u)
//  462   OS_CPU_SR  cpu_sr = 0u;
//  463   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  464   OSIntEnter();
//  465   OS_EXIT_CRITICAL();
//  466 #endif  
//  467   
//  468   //�����û��Զ����жϷ���
//  469   DMA_ISR[13]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+52]
        BLX      R0
//  470   //����жϱ�־λ
//  471   DMA0->INT |= 0x1u<<13;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2000
        STR      R1,[R0, #+0]
//  472   
//  473 #if (UCOS_II > 0u)
//  474   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  475 #endif
//  476 }
        POP      {R0,PC}          ;; return
//  477 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  478 void DMA14_IRQHandler(void)
//  479 {
DMA14_IRQHandler:
        PUSH     {R7,LR}
//  480 #if (UCOS_II > 0u)
//  481   OS_CPU_SR  cpu_sr = 0u;
//  482   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  483   OSIntEnter();
//  484   OS_EXIT_CRITICAL();
//  485 #endif  
//  486   
//  487   //�����û��Զ����жϷ���
//  488   DMA_ISR[14]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+56]
        BLX      R0
//  489   //����жϱ�־λ
//  490   DMA0->INT |= 0x1u<<14;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4000
        STR      R1,[R0, #+0]
//  491   
//  492 #if (UCOS_II > 0u)
//  493   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  494 #endif
//  495 }
        POP      {R0,PC}          ;; return
//  496 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  497 void DMA15_IRQHandler(void)
//  498 {
DMA15_IRQHandler:
        PUSH     {R7,LR}
//  499 #if (UCOS_II > 0u)
//  500   OS_CPU_SR  cpu_sr = 0u;
//  501   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  502   OSIntEnter();
//  503   OS_EXIT_CRITICAL();
//  504 #endif  
//  505   
//  506   //�����û��Զ����жϷ���
//  507   DMA_ISR[15]();
        LDR.N    R0,??DataTable19_8
        LDR      R0,[R0, #+60]
        BLX      R0
//  508   //����жϱ�־λ
//  509   DMA0->INT |= 0x1u<<15;
        LDR.N    R0,??DataTable19_9  ;; 0x40008024
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x8000
        STR      R1,[R0, #+0]
//  510   
//  511 #if (UCOS_II > 0u)
//  512   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  513 #endif
//  514 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DATA32
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DATA32
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DATA32
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DATA32
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DATA32
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DATA32
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DATA32
        DC32     DMA_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DATA32
        DC32     0x40008024

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 71H, 75H, 65H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 41H, 41H, 41H
        DC8 5FH, 78H, 69H, 6EH, 62H, 69H, 61H, 6FH
        DC8 5CH, 73H, 6DH, 61H, 72H, 74H, 63H, 61H
        DC8 72H, 5CH, 6CH, 69H, 62H, 5CH, 4CH, 50H
        DC8 4CH, 44H, 5CH, 48H, 57H, 5CH, 48H, 57H
        DC8 5FH, 44H, 4DH, 41H, 2EH, 63H, 0
        DATA8
        DC8 0

        END
//  515 
//  516 
//  517 
//  518 
//  519 
//  520 
//  521 
//  522 
//  523 
//  524 
//  525 
//  526 
//  527 
//  528 
//  529 
//  530 
// 
//    64 bytes in section .bss
//    64 bytes in section .rodata
// 1 172 bytes in section .text
// 
// 1 172 bytes of CODE  memory
//    64 bytes of CONST memory
//    64 bytes of DATA  memory
//
//Errors: none
//Warnings: none