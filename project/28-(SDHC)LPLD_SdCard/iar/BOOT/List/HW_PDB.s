///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:47
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\LPLD\HW\HW_PDB.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW3A2E.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\LPLD\HW\HW_PDB.c -D LPLD_K60
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\HW_PDB.s
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

// G:\AIcar\@@\k60_144\smartcar\lib\LPLD\HW\HW_PDB.c
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
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾����
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�������ܡ�ʵ�ַ�����
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
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
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
        DC8 47H, 3AH, 5CH, 41H, 49H, 63H, 61H, 72H
        DC8 5CH, 0E4H, 0BFH, 0A1H, 0E6H, 0A0H, 87H, 5CH
        DC8 6BH, 36H, 30H, 5FH, 31H, 34H, 34H, 5CH
        DC8 73H, 6DH, 61H, 72H, 74H, 63H, 61H, 72H
        DC8 5CH, 6CH, 69H, 62H, 5CH, 4CH, 50H, 4CH
        DC8 44H, 5CH, 48H, 57H, 5CH, 48H, 57H, 5FH
        DC8 50H, 44H, 42H, 2EH, 63H, 0
        DATA16
        DC8 0, 0
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
        PUSH     {R3-R11,LR}
//   47   uint32 us = pdb_init_struct.PDB_CounterPeriodUs
//   48             + pdb_init_struct.PDB_CounterPeriodMs*1000
//   49             + pdb_init_struct.PDB_CounterPeriodS*1000000;
        LDR.W    R0,??DataTable5_1  ;; 0xf4240
        MOV      R1,#+1000
        LDR      R2,[SP, #+40]
        LDR      R3,[SP, #+44]
        MLA      R2,R1,R3,R2
        LDR      R4,[SP, #+48]
        MLA      R4,R0,R4,R2
//   50   uint32 delayus = pdb_init_struct.PDB_DelayUs
//   51             + pdb_init_struct.PDB_DelayMs*1000
//   52             + pdb_init_struct.PDB_DelayS*1000000;
        LDR      R2,[SP, #+60]
        LDR      R3,[SP, #+64]
        MLA      R1,R1,R3,R2
        LDR      R5,[SP, #+68]
        MLA      R5,R0,R5,R1
//   53   uint8 loadmode = pdb_init_struct.PDB_LoadModeSel;
        LDRB     R6,[SP, #+52]
//   54   uint8 trriger = pdb_init_struct.PDB_TriggerInputSourceSel;
        LDRB     R7,[SP, #+53]
//   55   uint32 bus_clk = g_bus_clock/1000000;
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_1  ;; 0xf4240
        UDIV     R8,R0,R1
//   56   uint8 prescaler, mult;
//   57   uint32 mod;
//   58   float32 temp;
//   59   
//   60   //�������
//   61   ASSERT( loadmode <= LOADMODE_3 );       //����ģʽѡ��
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??LPLD_PDB_Init_0
        MOVS     R1,#+61
        LDR.W    R0,??DataTable5_3
        BL       assert_failed
//   62   ASSERT( trriger <= TRIGGER_SOFTWARE );  //��������Դѡ��
??LPLD_PDB_Init_0:
        MOVS     R0,R7
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
        B.N      ??LPLD_PDB_Init_2
//   76   {
//   77     mult = i;
//   78     for(uint8 j=0; j<8; j++)
//   79     {
//   80       prescaler = j;
//   81       mod = (bus_clk*us)/((1<<j)*pdb_sc_mults[i]);
//   82       if(mod <= 0xFFFFu)
//   83         break;
//   84     }
//   85     if(mod <= 0xFFFFu)
//   86       break;
//   87     else if(i == 3)
??LPLD_PDB_Init_3:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BEQ.N    ??LPLD_PDB_Init_4
??LPLD_PDB_Init_5:
        ADDS     R1,R1,#+1
??LPLD_PDB_Init_2:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BGE.N    ??LPLD_PDB_Init_6
        MOV      R10,R1
        MOVS     R2,#+0
        B.N      ??LPLD_PDB_Init_7
??LPLD_PDB_Init_8:
        ADDS     R2,R2,#+1
??LPLD_PDB_Init_7:
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BGE.N    ??LPLD_PDB_Init_9
        MOV      R9,R2
        MUL      R3,R4,R8
        MOVS     R12,#+1
        LSLS     R12,R12,R2
        LDR.N    R0,??DataTable5_4
        MOV      LR,R1
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LDRB     R0,[R0, LR]
        MUL      R12,R0,R12
        UDIV     R11,R3,R12
        CMP      R11,#+65536
        BCS.N    ??LPLD_PDB_Init_8
??LPLD_PDB_Init_9:
        CMP      R11,#+65536
        BCS.N    ??LPLD_PDB_Init_3
//   88       return 0;         //PDB�����������õĹ�С���������
//   89   }
//   90   
//   91   //ʹ��PDBʱ��
//   92   SIM->SCGC6 |= SIM_SCGC6_PDB_MASK;
??LPLD_PDB_Init_6:
        LDR.N    R0,??DataTable5_5  ;; 0x4004803c
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x400000
        STR      R1,[R0, #+0]
//   93   
//   94   //��ʼ��SC�Ĵ���
//   95   PDB0->SC = 0x00;
        LDR.W    R8,??DataTable5_6  ;; 0x40036000
        MOVS     R0,#+0
        STR      R0,[R8, #+0]
//   96   //ʹ��PDB
//   97   PDB0->SC |= PDB_SC_PDBEN_MASK;
        LDR      R0,[R8, #+0]
        ORRS     R0,R0,#0x80
        STR      R0,[R8, #+0]
//   98   PDB0->SC |= PDB_SC_MULT(mult);
        LDR      R0,[R8, #+0]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LSLS     R10,R10,#+2
        ANDS     R10,R10,#0xC
        ORRS     R10,R10,R0
        STR      R10,[R8, #+0]
//   99   PDB0->SC |= PDB_SC_PRESCALER(prescaler);
        LDR      R0,[R8, #+0]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R9,R9,#+12
        ANDS     R9,R9,#0x7000
        ORRS     R9,R9,R0
        STR      R9,[R8, #+0]
//  100   //����MOD��IDLY��CHnDLYm��INTx��POyDLY�Ĵ����ļ���ģʽ
//  101   PDB0->SC |= PDB_SC_LDMOD(loadmode); 
        LDR      R0,[R8, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+18
        ANDS     R6,R6,#0xC0000
        ORRS     R6,R6,R0
        STR      R6,[R8, #+0]
//  102   //���ô�������Դ
//  103   PDB0->SC |= PDB_SC_TRGSEL(trriger);
        LDR      R0,[R8, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R7,R7,#+8
        ANDS     R7,R7,#0xF00
        ORRS     R7,R7,R0
        STR      R7,[R8, #+0]
//  104   
//  105   //�Ƿ�ʹ������ģʽ
//  106   if(pdb_init_struct.PDB_ContinuousModeEnable == TRUE)
        LDRB     R0,[SP, #+54]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_10
//  107     PDB0->SC |= PDB_SC_CONT_MASK;
        LDR      R0,[R8, #+0]
        ORRS     R0,R0,#0x2
        STR      R0,[R8, #+0]
        B.N      ??LPLD_PDB_Init_11
??LPLD_PDB_Init_4:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_12
//  108   else
//  109     PDB0->SC &= ~(PDB_SC_CONT_MASK);
??LPLD_PDB_Init_10:
        LDR      R0,[R8, #+0]
        BICS     R0,R0,#0x2
        STR      R0,[R8, #+0]
//  110   
//  111   //�Ƿ�ʹ��DMA
//  112   if(pdb_init_struct.PDB_DmaEnable == TRUE)
??LPLD_PDB_Init_11:
        LDRB     R0,[SP, #+55]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_13
//  113     PDB0->SC |= PDB_SC_DMAEN_MASK;
        LDR      R0,[R8, #+0]
        ORRS     R0,R0,#0x8000
        STR      R0,[R8, #+0]
        B.N      ??LPLD_PDB_Init_14
//  114   else
//  115     PDB0->SC &= ~(PDB_SC_DMAEN_MASK);
??LPLD_PDB_Init_13:
        LDR      R0,[R8, #+0]
        BICS     R0,R0,#0x8000
        STR      R0,[R8, #+0]
//  116   
//  117   if(pdb_init_struct.PDB_Isr != NULL)
??LPLD_PDB_Init_14:
        LDR      R0,[SP, #+72]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_15
//  118   {
//  119     PDB_ISR[0] = pdb_init_struct.PDB_Isr;
        LDR      R0,[SP, #+72]
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+0]
//  120     //�Ƿ�ʹ��PDB�ж�
//  121     if(pdb_init_struct.PDB_IntEnable == TRUE)
        LDRB     R0,[SP, #+56]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_16
//  122       PDB0->SC |= PDB_SC_PDBIE_MASK;
        LDR      R0,[R8, #+0]
        ORRS     R0,R0,#0x20
        STR      R0,[R8, #+0]
        B.N      ??LPLD_PDB_Init_15
//  123     else
//  124       PDB0->SC &= ~(PDB_SC_PDBIE_MASK);
??LPLD_PDB_Init_16:
        LDR      R0,[R8, #+0]
        BICS     R0,R0,#0x20
        STR      R0,[R8, #+0]
//  125   }
//  126   
//  127   if(pdb_init_struct.PDB_SeqErrIsr != NULL)
??LPLD_PDB_Init_15:
        LDR      R0,[SP, #+76]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_17
//  128   {
//  129     PDB_SE_ISR[0] = pdb_init_struct.PDB_SeqErrIsr;
        LDR      R0,[SP, #+76]
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  130     //�Ƿ�ʹ��PDB���д����ж�
//  131     if(pdb_init_struct.PDB_SeqErrIntEnable == TRUE)
        LDRB     R0,[SP, #+57]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_18
//  132       PDB0->SC |= PDB_SC_PDBEIE_MASK;
        LDR      R0,[R8, #+0]
        ORRS     R0,R0,#0x20000
        STR      R0,[R8, #+0]
        B.N      ??LPLD_PDB_Init_17
//  133     else
//  134       PDB0->SC &= ~(PDB_SC_PDBEIE_MASK);
??LPLD_PDB_Init_18:
        LDR      R0,[R8, #+0]
        BICS     R0,R0,#0x20000
        STR      R0,[R8, #+0]
//  135   }
//  136   
//  137   //����PDB�ж���ʱʱ��
//  138   if( delayus <= us )
??LPLD_PDB_Init_17:
        CMP      R4,R5
        BCC.N    ??LPLD_PDB_Init_19
//  139   {
//  140     temp = (float32)mod/(float32)us;
        MOV      R0,R11
        BL       __aeabi_ui2f
        MOVS     R6,R0
        MOVS     R0,R4
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  141     PDB0->IDLY = (uint32)(delayus*temp);
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        LDR.N    R1,??DataTable5_9  ;; 0x4003600c
        STR      R0,[R1, #+0]
//  142   }
//  143   
//  144   //����ֵ
//  145   PDB0->SC |= PDB_SC_LDOK_MASK;
??LPLD_PDB_Init_19:
        LDR      R0,[R8, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R8, #+0]
//  146   
//  147   return 1;
        MOVS     R0,#+1
??LPLD_PDB_Init_12:
        POP      {R1,R4-R11}
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
        PUSH     {R4-R8,LR}
//  204   uint8 n,m;
//  205   uint8 prescaler, mult;
//  206   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R3,??DataTable5_2
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable5_1  ;; 0xf4240
        UDIV     R3,R3,R4
//  207 
//  208   if(adcx == ADC0)
        LDR.N    R4,??DataTable5_14  ;; 0x4003b000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_0
//  209     n = 0;
        MOVS     R0,#+0
//  210   else if(adcx == ADC1)
//  211     n = 1;
//  212   else
//  213     return 0;
//  214     
//  215   if(cfg & 0x01)
??LPLD_PDB_AdcTriggerCfg_1:
        LSLS     R4,R1,#+31
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_2
//  216     m = 0;
        MOVS     R4,#+0
//  217   else if(cfg & 0x02)
//  218     m = 1;
//  219   else
//  220     return 0;
//  221   
//  222   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_AdcTriggerCfg_3:
        LDR.N    R5,??DataTable5_6  ;; 0x40036000
        MOVS     R7,#+1
        LDR      R6,[R5, #+0]
        LSRS     R6,R6,#+12
        ANDS     R6,R6,#0x7
        LSLS     R6,R7,R6
//  223   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R7,??DataTable5_4
        LDR      R12,[R5, #+0]
        UBFX     R12,R12,#+2,#+2
        LDRB     R7,[R7, R12]
//  224   
//  225   PDB0->CH[n].C1 |= cfg;        //���ݲ�������BBģʽ��ѡ��Ԥ���������ʹ��Ԥ����
        MOVS     R12,#+40
        LDR.W    LR,??DataTable5_10  ;; 0x40036010
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MUL      R8,R12,R8
        LDR      R8,[LR, R8]
        ORRS     R1,R1,R8
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MUL      R8,R12,R8
        STR      R1,[LR, R8]
//  226   PDB0->CH[n].DLY[m] = (bus_clk * delay)/(prescaler * mult);    //����ADCn��m��Ԥ������ʱֵ
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MUL      R0,R12,R0
        ADD      R0,LR,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MUL      R2,R2,R3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MULS     R6,R7,R6
        UDIV     R1,R2,R6
        STR      R1,[R0, #+8]
//  227   
//  228   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R5, #+0]
//  229   
//  230   return 1;
        MOVS     R0,#+1
??LPLD_PDB_AdcTriggerCfg_4:
        POP      {R4-R8,PC}       ;; return
??LPLD_PDB_AdcTriggerCfg_0:
        LDR.N    R4,??DataTable5_15  ;; 0x400bb000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_5
        MOVS     R0,#+1
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
??LPLD_PDB_AdcTriggerCfg_5:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_4
??LPLD_PDB_AdcTriggerCfg_2:
        LSLS     R4,R1,#+30
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_6
        MOVS     R4,#+1
        B.N      ??LPLD_PDB_AdcTriggerCfg_3
??LPLD_PDB_AdcTriggerCfg_6:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_4
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
        PUSH     {R4-R7}
//  253   uint8 n;
//  254   uint8 prescaler, mult;
//  255   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R3,??DataTable5_2
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable5_1  ;; 0xf4240
        UDIV     R3,R3,R4
//  256   
//  257   if(dacx == DAC0)
        LDR.N    R4,??DataTable5_16  ;; 0x400cc000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_DacTriggerCfg_0
//  258     n = 0;
        MOVS     R5,#+0
//  259   else if(dacx == DAC1)
//  260     n = 1;
//  261   else
//  262     return 0;
//  263   
//  264   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_DacTriggerCfg_1:
        LDR.N    R0,??DataTable5_6  ;; 0x40036000
        MOVS     R6,#+1
        LDR      R4,[R0, #+0]
        LSRS     R4,R4,#+12
        ANDS     R4,R4,#0x7
        LSLS     R4,R6,R4
//  265   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R6,??DataTable5_4
        LDR      R7,[R0, #+0]
        UBFX     R7,R7,#+2,#+2
        LDRB     R6,[R6, R7]
//  266   
//  267   PDB0->DAC[n].INTC |= cfg;     //����ʹ���ⲿ���������ڲ��������
        LDR.N    R7,??DataTable5_12  ;; 0x40036150
        MOV      R12,R5
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        LDR      R12,[R7, R12, LSL #+3]
        ORRS     R1,R1,R12
        MOV      R12,R5
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        STR      R1,[R7, R12, LSL #+3]
//  268   PDB0->DAC[n].INT = (bus_clk * int_delay)/(prescaler * mult);    //����DACn�ļ������ʱ��
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MUL      R2,R2,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MULS     R4,R6,R4
        UDIV     R1,R2,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R2,R7,R5, LSL #+3
        STR      R1,[R2, #+4]
//  269   
//  270   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  271   
//  272   return 1;
        MOVS     R0,#+1
??LPLD_PDB_DacTriggerCfg_2:
        POP      {R4-R7}
        BX       LR               ;; return
??LPLD_PDB_DacTriggerCfg_0:
        LDR.N    R4,??DataTable5_17  ;; 0x400cd000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_DacTriggerCfg_3
        MOVS     R5,#+1
        B.N      ??LPLD_PDB_DacTriggerCfg_1
??LPLD_PDB_DacTriggerCfg_3:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_DacTriggerCfg_2
//  273 }
//  274 
//  275 /*
//  276  * PDB�жϴ�������
//  277  * �������ļ�startup_K60.s�е��ж�����������
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
//    60 bytes in section .rodata
// 1 086 bytes in section .text
// 
// 1 086 bytes of CODE  memory
//    60 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none