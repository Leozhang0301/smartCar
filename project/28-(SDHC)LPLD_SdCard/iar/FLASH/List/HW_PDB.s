///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        02/Jul/2019  17:59:17
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_PDB.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW5661.tmp
//        (G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_PDB.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\HW_PDB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_ui2f
        EXTERN assert_failed
        EXTERN g_bus_clock

        PUBLIC LPLD_PDB_AdcTriggerCfg
        PUBLIC LPLD_PDB_DacTriggerCfg
        PUBLIC LPLD_PDB_Deinit
        PUBLIC LPLD_PDB_Init
        PUBLIC PDB_IRQHandler
        PUBLIC PDB_ISR
        PUBLIC PDB_SE_ISR
        PUBLIC pdb_sc_mults

// G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_PDB.c
//    1 /**
//    2  * @file HW_PDB.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief PDB�ײ�ģ����غ���
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
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

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
        LDR.W    R1,??DataTable5  ;; 0xe000e180
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "HW_PDB.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 PDB_ISR_CALLBACK PDB_ISR[1];
PDB_ISR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 PDB_ISR_CALLBACK PDB_SE_ISR[1];
PDB_SE_ISR:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "G:\\AIcar\\\344\277\241\346\240\207\\xiugai\\lib\\LPLD\\HW\\HW_PDB.c"
//   28 
//   29 //PDBʱ��Ԥ��Ƶϵ������

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   30 const uint8 pdb_sc_mults[4] = {1, 10, 20, 40};
pdb_sc_mults:
        DATA8
        DC8 1, 10, 20, 40
//   31 
//   32 
//   33 /*
//   34  * LPLD_PDB_Init
//   35  * PDBxģ��ͨ�ó�ʼ����������ʼ��PDBx���������ڡ�����ģʽ������Դ���жϵ�����
//   36  * 
//   37  * ����:
//   38  *    pdb_init_struct--PDBx��ʼ���ṹ�壬
//   39  *                        ���嶨���PDB_InitTypeDef
//   40  *
//   41  * ���:
//   42  *    0--���ô���
//   43  *    1--���óɹ�
//   44  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 uint8 LPLD_PDB_Init(PDB_InitTypeDef pdb_init_struct)
//   46 {
LPLD_PDB_Init:
        PUSH     {R0-R3}
        PUSH     {R1-R11,LR}
//   47   uint32 us = pdb_init_struct.PDB_CounterPeriodUs
//   48             + pdb_init_struct.PDB_CounterPeriodMs*1000
//   49             + pdb_init_struct.PDB_CounterPeriodS*1000000;
        LDR.W    R0,??DataTable5_1  ;; 0xf4240
        MOV      R1,#+1000
        LDR      R2,[SP, #+48]
        LDR      R3,[SP, #+52]
        MLA      R2,R1,R3,R2
        LDR      R6,[SP, #+56]
        MLA      R6,R0,R6,R2
//   50   uint32 delayus = pdb_init_struct.PDB_DelayUs
//   51             + pdb_init_struct.PDB_DelayMs*1000
//   52             + pdb_init_struct.PDB_DelayS*1000000;
        LDR      R2,[SP, #+68]
        LDR      R3,[SP, #+72]
        MLA      R1,R1,R3,R2
        LDR      R7,[SP, #+76]
        MLA      R7,R0,R7,R1
//   53   uint8 loadmode = pdb_init_struct.PDB_LoadModeSel;
        LDRB     R8,[SP, #+60]
//   54   uint8 trriger = pdb_init_struct.PDB_TriggerInputSourceSel;
        LDRB     R9,[SP, #+61]
//   55   uint32 bus_clk = g_bus_clock/1000000;
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_1  ;; 0xf4240
        UDIV     R10,R0,R1
//   56   uint8 prescaler, mult;
//   57   uint32 mod;
//   58   float32 temp;
//   59   
//   60   //�������
//   61   ASSERT( loadmode <= LOADMODE_3 );       //����ģʽѡ��
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??LPLD_PDB_Init_0
        MOVS     R1,#+61
        LDR.W    R0,??DataTable5_3
        BL       assert_failed
//   62   ASSERT( trriger <= TRIGGER_SOFTWARE );  //��������Դѡ��
??LPLD_PDB_Init_0:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BLT.N    ??LPLD_PDB_Init_1
        MOVS     R1,#+62
        LDR.W    R0,??DataTable5_3
        BL       assert_failed
//   63   
//   64 /*
//   65  *************************************************
//   66   ��LPLDע�⡿PDB�ؼ�ϵ��
//   67   prescaler(����ʱ��Ԥ��Ƶϵ��): 2^n(n:0~7)
//   68   mult(prescaler�ı���): 1��10��20��40
//   69   mod(������ģ����Ӱ�����������): 0~0xFFFF
//   70   ���������� = (prescaler*mult*mod)/bus_clk
//   71  *************************************************
//   72  */
//   73   
//   74   //���������ļ����������Զ��趨prescaler��mult��mod��ֵ
//   75   for(uint8 i=0; i<4; i++)
??LPLD_PDB_Init_1:
        MOVS     R1,#+0
??LPLD_PDB_Init_2:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BGE.N    ??LPLD_PDB_Init_3
//   76   {
//   77     mult = i;
        STRB     R1,[SP, #+4]
//   78     for(uint8 j=0; j<8; j++)
        MOVS     R2,#+0
??LPLD_PDB_Init_4:
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BGE.N    ??LPLD_PDB_Init_5
//   79     {
//   80       prescaler = j;
        MOVS     R4,R2
//   81       mod = (bus_clk*us)/((1<<j)*pdb_sc_mults[i]);
        MUL      R3,R6,R10
        MOVS     R12,#+1
        LSLS     R12,R12,R2
        LDR.W    R0,??DataTable5_4
        MOV      LR,R1
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LDRB     R0,[R0, LR]
        MUL      R12,R0,R12
        UDIV     R0,R3,R12
        MOVS     R5,R0
//   82       if(mod <= 0xFFFFu)
        CMP      R5,#+65536
        BCC.N    ??LPLD_PDB_Init_5
//   83         break;
//   84     }
??LPLD_PDB_Init_6:
        ADDS     R2,R2,#+1
        B.N      ??LPLD_PDB_Init_4
//   85     if(mod <= 0xFFFFu)
??LPLD_PDB_Init_5:
        CMP      R5,#+65536
        BCC.N    ??LPLD_PDB_Init_3
//   86       break;
//   87     else if(i == 3)
??LPLD_PDB_Init_7:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_PDB_Init_8
//   88       return 0;         //PDB�����������õĹ�С���������
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_9
//   89   }
??LPLD_PDB_Init_8:
        ADDS     R1,R1,#+1
        B.N      ??LPLD_PDB_Init_2
//   90   
//   91   //ʹ��PDBʱ��
//   92   SIM->SCGC6 |= SIM_SCGC6_PDB_MASK;
??LPLD_PDB_Init_3:
        LDR.W    R0,??DataTable5_5  ;; 0x4004803c
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x400000
        STR      R1,[R0, #+0]
//   93   
//   94   //��ʼ��SC�Ĵ���
//   95   PDB0->SC = 0x00;
        LDR.W    R11,??DataTable5_6  ;; 0x40036000
        MOVS     R0,#+0
        STR      R0,[R11, #+0]
//   96   //ʹ��PDB
//   97   PDB0->SC |= PDB_SC_PDBEN_MASK;
        LDR      R0,[R11, #+0]
        ORRS     R0,R0,#0x80
        STR      R0,[R11, #+0]
//   98   PDB0->SC |= PDB_SC_MULT(mult);
        LDR      R0,[R11, #+0]
        LDRB     R1,[SP, #+4]
        LSLS     R1,R1,#+2
        ANDS     R1,R1,#0xC
        ORRS     R0,R1,R0
        STR      R0,[R11, #+0]
//   99   PDB0->SC |= PDB_SC_PRESCALER(prescaler);
        LDR      R0,[R11, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+12
        ANDS     R1,R1,#0x7000
        ORRS     R0,R1,R0
        STR      R0,[R11, #+0]
//  100   //����MOD��IDLY��CHnDLYm��INTx��POyDLY�Ĵ����ļ���ģʽ
//  101   PDB0->SC |= PDB_SC_LDMOD(loadmode); 
        LDR      R0,[R11, #+0]
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+18
        ANDS     R1,R1,#0xC0000
        ORRS     R0,R1,R0
        STR      R0,[R11, #+0]
//  102   //���ô�������Դ
//  103   PDB0->SC |= PDB_SC_TRGSEL(trriger);
        LDR      R0,[R11, #+0]
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+8
        ANDS     R1,R1,#0xF00
        ORRS     R0,R1,R0
        STR      R0,[R11, #+0]
//  104   
//  105   //�Ƿ�ʹ������ģʽ
//  106   if(pdb_init_struct.PDB_ContinuousModeEnable == TRUE)
        LDRB     R0,[SP, #+62]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_10
//  107     PDB0->SC |= PDB_SC_CONT_MASK;
        LDR      R0,[R11, #+0]
        ORRS     R0,R0,#0x2
        STR      R0,[R11, #+0]
        B.N      ??LPLD_PDB_Init_11
//  108   else
//  109     PDB0->SC &= ~(PDB_SC_CONT_MASK);
??LPLD_PDB_Init_10:
        LDR      R0,[R11, #+0]
        BICS     R0,R0,#0x2
        STR      R0,[R11, #+0]
//  110   
//  111   //�Ƿ�ʹ��DMA
//  112   if(pdb_init_struct.PDB_DmaEnable == TRUE)
??LPLD_PDB_Init_11:
        LDRB     R0,[SP, #+63]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_12
//  113     PDB0->SC |= PDB_SC_DMAEN_MASK;
        LDR      R0,[R11, #+0]
        ORRS     R0,R0,#0x8000
        STR      R0,[R11, #+0]
        B.N      ??LPLD_PDB_Init_13
//  114   else
//  115     PDB0->SC &= ~(PDB_SC_DMAEN_MASK);
??LPLD_PDB_Init_12:
        LDR      R0,[R11, #+0]
        BICS     R0,R0,#0x8000
        STR      R0,[R11, #+0]
//  116   
//  117   if(pdb_init_struct.PDB_Isr != NULL)
??LPLD_PDB_Init_13:
        LDR      R0,[SP, #+80]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_14
//  118   {
//  119     PDB_ISR[0] = pdb_init_struct.PDB_Isr;
        LDR      R0,[SP, #+80]
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+0]
//  120     //�Ƿ�ʹ��PDB�ж�
//  121     if(pdb_init_struct.PDB_IntEnable == TRUE)
        LDRB     R0,[SP, #+64]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_15
//  122       PDB0->SC |= PDB_SC_PDBIE_MASK;
        LDR      R0,[R11, #+0]
        ORRS     R0,R0,#0x20
        STR      R0,[R11, #+0]
        B.N      ??LPLD_PDB_Init_14
//  123     else
//  124       PDB0->SC &= ~(PDB_SC_PDBIE_MASK);
??LPLD_PDB_Init_15:
        LDR      R0,[R11, #+0]
        BICS     R0,R0,#0x20
        STR      R0,[R11, #+0]
//  125   }
//  126   
//  127   if(pdb_init_struct.PDB_SeqErrIsr != NULL)
??LPLD_PDB_Init_14:
        LDR      R0,[SP, #+84]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_16
//  128   {
//  129     PDB_SE_ISR[0] = pdb_init_struct.PDB_SeqErrIsr;
        LDR      R0,[SP, #+84]
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  130     //�Ƿ�ʹ��PDB���д����ж�
//  131     if(pdb_init_struct.PDB_SeqErrIntEnable == TRUE)
        LDRB     R0,[SP, #+65]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_17
//  132       PDB0->SC |= PDB_SC_PDBEIE_MASK;
        LDR      R0,[R11, #+0]
        ORRS     R0,R0,#0x20000
        STR      R0,[R11, #+0]
        B.N      ??LPLD_PDB_Init_16
//  133     else
//  134       PDB0->SC &= ~(PDB_SC_PDBEIE_MASK);
??LPLD_PDB_Init_17:
        LDR      R0,[R11, #+0]
        BICS     R0,R0,#0x20000
        STR      R0,[R11, #+0]
//  135   }
//  136   
//  137   //����PDB�ж���ʱʱ��
//  138   if( delayus <= us )
??LPLD_PDB_Init_16:
        CMP      R6,R7
        BCC.N    ??LPLD_PDB_Init_18
//  139   {
//  140     temp = (float32)mod/(float32)us;
        MOVS     R0,R5
        BL       __aeabi_ui2f
        STR      R0,[SP, #+0]
        MOVS     R0,R6
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fdiv
        STR      R0,[SP, #+8]
//  141     PDB0->IDLY = (uint32)(delayus*temp);
        MOVS     R0,R7
        BL       __aeabi_ui2f
        LDR      R1,[SP, #+8]
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        LDR.N    R1,??DataTable5_9  ;; 0x4003600c
        STR      R0,[R1, #+0]
//  142   }
//  143   
//  144   //����ֵ
//  145   PDB0->SC |= PDB_SC_LDOK_MASK;
??LPLD_PDB_Init_18:
        LDR      R0,[R11, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R11, #+0]
//  146   
//  147   return 1;
        MOVS     R0,#+1
??LPLD_PDB_Init_9:
        POP      {R1-R11}
        LDR      PC,[SP], #+20    ;; return
//  148 }
//  149 
//  150 /*
//  151  * LPLD_PDB_Deinit
//  152  * PDBxģ�鷴��ʼ������������PDBx���й���
//  153  * 
//  154  * ����:
//  155  *    ��
//  156  *
//  157  * ���:
//  158  *    ��
//  159  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void LPLD_PDB_Deinit(void)
//  161 {
LPLD_PDB_Deinit:
        PUSH     {R7,LR}
//  162  
//  163   PDB0->CH[0].C1 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_10  ;; 0x40036010
        STR      R0,[R1, #+0]
//  164   PDB0->CH[1].C1 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11  ;; 0x40036038
        STR      R0,[R1, #+0]
//  165   
//  166   PDB0->DAC[0].INTC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_12  ;; 0x40036150
        STR      R0,[R1, #+0]
//  167   PDB0->DAC[1].INTC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_13  ;; 0x40036158
        STR      R0,[R1, #+0]
//  168   
//  169   PDB0->SC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_6  ;; 0x40036000
        STR      R0,[R1, #+0]
//  170   
//  171   //����PDBʱ��
//  172   SIM->SCGC6 &= ~(SIM_SCGC6_PDB_MASK);
        LDR.N    R0,??DataTable5_5  ;; 0x4004803c
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x400000
        STR      R1,[R0, #+0]
//  173   
//  174   disable_irq(PDB0_IRQn);
        MOVS     R0,#+72
        BL       __NVIC_DisableIRQ
//  175 }
        POP      {R0,PC}          ;; return
//  176 
//  177 
//  178 /*
//  179  * LPLD_PDB_AdcTriggerCfg
//  180  * PDBx����ADCxģ�����ú���
//  181  * 
//  182  * ����:
//  183  *    adcx--ADCxģ���
//  184  *      |__ADC0          --ADC0
//  185  *      |__ADC1          --ADC1
//  186  *    cfg--ADCxԤ�����������ã��ɶ��ֵ�ϲ�����(eg. cfg=PRETRIG_EN_A|PRETRIG_DLY_A;)
//  187  *      ADCx A������
//  188  *      |__PRETRIG_EN_A  --ʹ��ADCx��A��Ԥ��������
//  189  *      |__PRETRIG_DLY_A --ʹ��ADCx��A����ʱ���Ԥ��������
//  190  *      |__PRETRIG_BB_A  --ʹ��ADCx��A�顰Back to Back��ģʽ
//  191  *      ADCx B������
//  192  *      |__PRETRIG_EN_B  --ʹ��ADCx��B��Ԥ��������
//  193  *      |__PRETRIG_DLY_B --ʹ��ADCx��B����ʱ���Ԥ��������
//  194  *      |__PRETRIG_BB_B  --ʹ��ADCx��B�顰Back to Back��ģʽ
//  195  *    delay--ADCx A��B�����ʱ���Ԥ����ʱ�䣬��λus
//  196  *      |__0~0xFFFF      --0~4095us
//  197  *
//  198  * ���:
//  199  *    0--���ô���
//  200  *    1--���óɹ�
//  201  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 uint8 LPLD_PDB_AdcTriggerCfg(ADC_Type *adcx, uint32 cfg, uint16 delay)
//  203 {
LPLD_PDB_AdcTriggerCfg:
        PUSH     {R4-R10,LR}
        MOVS     R3,R0
//  204   uint8 n,m;
//  205   uint8 prescaler, mult;
//  206   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.N    R4,??DataTable5_1  ;; 0xf4240
        UDIV     R4,R0,R4
//  207 
//  208   if(adcx == ADC0)
        LDR.N    R0,??DataTable5_14  ;; 0x4003b000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_0
//  209     n = 0;
        MOVS     R5,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
//  210   else if(adcx == ADC1)
??LPLD_PDB_AdcTriggerCfg_0:
        LDR.N    R0,??DataTable5_15  ;; 0x400bb000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_2
//  211     n = 1;
        MOVS     R5,#+1
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
//  212   else
//  213     return 0;
??LPLD_PDB_AdcTriggerCfg_2:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_3
//  214     
//  215   if(cfg & 0x01)
??LPLD_PDB_AdcTriggerCfg_1:
        LSLS     R0,R1,#+31
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_4
//  216     m = 0;
        MOVS     R6,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_5
//  217   else if(cfg & 0x02)
??LPLD_PDB_AdcTriggerCfg_4:
        LSLS     R0,R1,#+30
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_6
//  218     m = 1;
        MOVS     R6,#+1
        B.N      ??LPLD_PDB_AdcTriggerCfg_5
//  219   else
//  220     return 0;
??LPLD_PDB_AdcTriggerCfg_6:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_3
//  221   
//  222   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_AdcTriggerCfg_5:
        LDR.W    R12,??DataTable5_6  ;; 0x40036000
        MOVS     R7,#+1
        LDR      R0,[R12, #+0]
        LSRS     R0,R0,#+12
        ANDS     R0,R0,#0x7
        LSLS     R7,R7,R0
//  223   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R0,??DataTable5_4
        LDR      LR,[R12, #+0]
        UBFX     LR,LR,#+2,#+2
        LDRB     LR,[R0, LR]
//  224   
//  225   PDB0->CH[n].C1 |= cfg;        //���ݲ�������BBģʽ��ѡ��Ԥ���������ʹ��Ԥ����
        MOVS     R0,#+40
        LDR.W    R8,??DataTable5_10  ;; 0x40036010
        MOV      R9,R5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MUL      R9,R0,R9
        LDR      R9,[R8, R9]
        ORRS     R9,R1,R9
        MOV      R10,R5
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MUL      R10,R0,R10
        STR      R9,[R8, R10]
//  226   PDB0->CH[n].DLY[m] = (bus_clk * delay)/(prescaler * mult);    //����ADCn��m��Ԥ������ʱֵ
        MOV      R9,R5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MUL      R0,R0,R9
        ADD      R0,R8,R0
        MOV      R8,R6
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ADD      R8,R0,R8, LSL #+2
        MOV      R9,R2
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MUL      R9,R9,R4
        MOV      R10,R7
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R0,LR
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MUL      R10,R0,R10
        UDIV     R0,R9,R10
        STR      R0,[R8, #+8]
//  227   
//  228   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR      R0,[R12, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R12, #+0]
//  229   
//  230   return 1;
        MOVS     R0,#+1
??LPLD_PDB_AdcTriggerCfg_3:
        POP      {R4-R10,PC}      ;; return
//  231 }
//  232 
//  233 /*
//  234  * LPLD_PDB_DacTriggerCfg
//  235  * PDBx����DACxģ�����ú���
//  236  * 
//  237  * ����:
//  238  *    dacx--DACxģ���
//  239  *      |__DAC0          --DAC0
//  240  *      |__DAC1          --DAC1
//  241  *    cfg--DACx������������
//  242  *      |__EXT_TRIG_EN   --ʹ���ⲿ����
//  243  *      |__EINT_TRIG_EN  --ʹ���ڲ��������
//  244  *    int_delay--DACx�������ʱ�䣬��λus
//  245  *      |__0~0xFFFF      --0~4095us
//  246  *
//  247  * ���:
//  248  *    0--���ô���
//  249  *    1--���óɹ�
//  250  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  251 uint8 LPLD_PDB_DacTriggerCfg(DAC_Type *dacx, uint32 cfg, uint16 int_delay)
//  252 {
LPLD_PDB_DacTriggerCfg:
        PUSH     {R4-R9,LR}
        MOVS     R3,R0
//  253   uint8 n;
//  254   uint8 prescaler, mult;
//  255   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.N    R4,??DataTable5_1  ;; 0xf4240
        UDIV     R4,R0,R4
//  256   
//  257   if(dacx == DAC0)
        LDR.N    R0,??DataTable5_16  ;; 0x400cc000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_DacTriggerCfg_0
//  258     n = 0;
        MOVS     R5,#+0
        B.N      ??LPLD_PDB_DacTriggerCfg_1
//  259   else if(dacx == DAC1)
??LPLD_PDB_DacTriggerCfg_0:
        LDR.N    R0,??DataTable5_17  ;; 0x400cd000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_DacTriggerCfg_2
//  260     n = 1;
        MOVS     R5,#+1
        B.N      ??LPLD_PDB_DacTriggerCfg_1
//  261   else
//  262     return 0;
??LPLD_PDB_DacTriggerCfg_2:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_DacTriggerCfg_3
//  263   
//  264   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_DacTriggerCfg_1:
        LDR.N    R7,??DataTable5_6  ;; 0x40036000
        MOVS     R0,#+1
        LDR      R6,[R7, #+0]
        LSRS     R6,R6,#+12
        ANDS     R6,R6,#0x7
        LSLS     R6,R0,R6
//  265   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R0,??DataTable5_4
        LDR      R12,[R7, #+0]
        UBFX     R12,R12,#+2,#+2
        LDRB     R12,[R0, R12]
//  266   
//  267   PDB0->DAC[n].INTC |= cfg;     //����ʹ���ⲿ���������ڲ��������
        LDR.W    LR,??DataTable5_12  ;; 0x40036150
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R0,[LR, R0, LSL #+3]
        ORRS     R0,R1,R0
        MOV      R8,R5
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R0,[LR, R8, LSL #+3]
//  268   PDB0->DAC[n].INT = (bus_clk * int_delay)/(prescaler * mult);    //����DACn�ļ������ʱ��
        MOV      R8,R2
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        MUL      R8,R8,R4
        MOV      R9,R6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R0,R12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MUL      R9,R0,R9
        UDIV     R0,R8,R9
        MOV      R8,R5
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ADD      LR,LR,R8, LSL #+3
        STR      R0,[LR, #+4]
//  269   
//  270   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR      R0,[R7, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R7, #+0]
//  271   
//  272   return 1;
        MOVS     R0,#+1
??LPLD_PDB_DacTriggerCfg_3:
        POP      {R4-R9,PC}       ;; return
//  273 }
//  274 
//  275 /*
//  276  * PDB�жϴ�����
//  277  * �������ļ�startup_K60.s�е��ж����������
//  278  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  279  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  280 void PDB_IRQHandler(void)
//  281 {
PDB_IRQHandler:
        PUSH     {R3-R5,LR}
//  282 #if (UCOS_II > 0u)
//  283   OS_CPU_SR  cpu_sr = 0u;
//  284   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  285   OSIntEnter();
//  286   OS_EXIT_CRITICAL();
//  287 #endif
//  288   
//  289   //�Ƿ�ΪPDB�ж�
//  290   if((PDB0->SC & PDB_SC_PDBIF_MASK) && (PDB0->SC & PDB_SC_PDBIE_MASK))
        LDR.N    R4,??DataTable5_6  ;; 0x40036000
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??PDB_IRQHandler_0
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??PDB_IRQHandler_0
//  291   {
//  292     //�����û��Զ����жϷ���
//  293     PDB_ISR[0]();  
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  294     //����жϱ�־λ  
//  295     PDB0->SC &= ~PDB_SC_PDBIF_MASK;
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x40
        STR      R0,[R4, #+0]
//  296   }
//  297   
//  298   //�Ƿ�ΪPDB���д����ж� CH0
//  299   if((PDB0->CH[0].S & PDB_S_ERR(1)) && (PDB0->SC & PDB_SC_PDBEIE_MASK))
??PDB_IRQHandler_0:
        LDR.N    R5,??DataTable5_18  ;; 0x40036014
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??PDB_IRQHandler_1
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??PDB_IRQHandler_1
//  300   {
//  301     //�����û��Զ����жϷ���
//  302     PDB_SE_ISR[0]();  
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  303     PDB0->CH[0].S |= PDB_S_ERR(1);
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R5, #+0]
//  304   }
//  305   
//  306   //�Ƿ�ΪPDB���д����ж� CH1
//  307   if((PDB0->CH[1].S & PDB_S_ERR(2)) && (PDB0->SC & PDB_SC_PDBEIE_MASK))
??PDB_IRQHandler_1:
        LDR.N    R5,??DataTable5_19  ;; 0x4003603c
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??PDB_IRQHandler_2
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??PDB_IRQHandler_2
//  308   {
//  309     //�����û��Զ����жϷ���
//  310     PDB_SE_ISR[0]();  
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  311     PDB0->CH[1].S |= PDB_S_ERR(2);
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x2
        STR      R0,[R5, #+0]
//  312   }
//  313   
//  314 #if (UCOS_II > 0u)
//  315   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  316 #endif
//  317 }
??PDB_IRQHandler_2:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DATA32
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DATA32
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DATA32
        DC32     pdb_sc_mults

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DATA32
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DATA32
        DC32     0x40036000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DATA32
        DC32     PDB_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DATA32
        DC32     PDB_SE_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DATA32
        DC32     0x4003600c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DATA32
        DC32     0x40036010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DATA32
        DC32     0x40036038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DATA32
        DC32     0x40036150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DATA32
        DC32     0x40036158

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DATA32
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DATA32
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DATA32
        DC32     0x400cc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DATA32
        DC32     0x400cd000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DATA32
        DC32     0x40036014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DATA32
        DC32     0x4003603c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//     8 bytes in section .bss
//    48 bytes in section .rodata
// 1 148 bytes in section .text
// 
// 1 148 bytes of CODE  memory
//    48 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
