///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        02/Jul/2019  17:59:17
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_NVIC.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW54E9.tmp
//        (G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_NVIC.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\HW_NVIC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC LPLD_NVIC_Init

// G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_NVIC.c
//    1 /**
//    2  * @file HW_NVIC.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-29
//    5  * @brief �ں�NVICģ����غ���
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
//   22 #include "HW_NVIC.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_SetPriorityGrouping(uint32_t)
__NVIC_SetPriorityGrouping:
        PUSH     {R4}
        ANDS     R3,R0,#0x7
        LDR.N    R4,??DataTable4  ;; 0xe000ed0c
        LDR      R2,[R4, #+0]
        MOVW     R1,#+63743
        ANDS     R2,R1,R2
        LDR.N    R1,??DataTable4_1  ;; 0x5fa0000
        ORRS     R1,R1,R3, LSL #+8
        ORRS     R2,R1,R2
        STR      R2,[R4, #+0]
        POP      {R4}
        BX       LR               ;; return

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
        LDR.N    R1,??DataTable4_2  ;; 0xe000e100
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
        LDR.N    R1,??DataTable4_3  ;; 0xe000e180
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_SetPriority(IRQn_Type, uint32_t)
__NVIC_SetPriority:
        PUSH     {R4}
        MOVS     R2,R0
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BMI.N    ??__NVIC_SetPriority_0
        LSLS     R2,R1,#+4
        LDR.N    R3,??DataTable4_4  ;; 0xe000e400
        MOVS     R4,R0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STRB     R2,[R3, R4]
        B.N      ??__NVIC_SetPriority_1
??__NVIC_SetPriority_0:
        LSLS     R2,R1,#+4
        LDR.N    R3,??DataTable4_5  ;; 0xe000ed18
        MOVS     R4,R0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ANDS     R4,R4,#0xF
        ADD      R3,R3,R4
        STRB     R2,[R3, #-4]
??__NVIC_SetPriority_1:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp uint32_t NVIC_EncodePriority(uint32_t, uint32_t, uint32_t)
NVIC_EncodePriority:
        PUSH     {R4-R6}
        MOVS     R3,R0
        ANDS     R4,R3,#0x7
        RSBS     R0,R4,#+7
        CMP      R0,#+5
        BCC.N    ??NVIC_EncodePriority_0
        MOVS     R0,#+4
        B.N      ??NVIC_EncodePriority_1
??NVIC_EncodePriority_0:
        RSBS     R0,R4,#+7
??NVIC_EncodePriority_1:
        ADDS     R5,R4,#+4
        CMP      R5,#+7
        BCS.N    ??NVIC_EncodePriority_2
        MOVS     R5,#+0
        B.N      ??NVIC_EncodePriority_3
??NVIC_EncodePriority_2:
        SUBS     R5,R4,#+3
??NVIC_EncodePriority_3:
        MOVS     R6,#+1
        LSLS     R0,R6,R0
        SUBS     R0,R0,#+1
        ANDS     R1,R0,R1
        LSLS     R1,R1,R5
        LSLS     R5,R6,R5
        SUBS     R5,R5,#+1
        ANDS     R2,R5,R2
        ORRS     R1,R2,R1
        MOVS     R0,R1
        POP      {R4-R6}
        BX       LR               ;; return
//   23 
//   24 /*
//   25  * LPLD_NVIC_Init
//   26  *
//   27  * �ڸú���������IRQn_Typeͨ�����ȼ�����������Ҫ��NVIC��ʹ��IRQn_Type
//   28  * �ں����е�����core_m4.h�е�NVIC��������M4�ں˵�16���ж����ȼ�
//   29  * 16���ж����ȼ�ͨ���������ʽ���й�����NVIC�е����ȼ���Ϊ5�飬NVIC_PriorityGroup_0 -- 5
//   30  * ÿ�������ռʽ���ȼ���NVIC_IRQChannelPreemptionPriority������Ӧʽ���ȼ���NVIC_IRQChannelSubPriority��
//   31  *
//   32  * ���ȼ��ٲ�:
//   33  * >1 PreemptionPriority���ȼ��ߵĲ�����ռPreemptionPriority���ȼ��͵��ж��쳣;
//   34  * (��NVIC_IRQChannelPreemptionPriorityֵԽС���ȼ�Խ��);
//   35  * >2 PreemptionPriority���ȼ���ͬ���ж��쳣֮�䲻���໥��ռ;
//   36  * >3 ���PreemptionPriority���ȼ���ȣ��ٱȽ�SubPriority��Ӧ���ȼ���SubPriority��Ӧ���ȼ�ֵԽС�ж����ȼ�Խ��;
//   37  *
//   38  * NVIC�е����ȼ����黮�ּ�NVIC_InitTypeDef�е�NVIC �жϷ���
//   39  * 
//   40  * ����:
//   41  *    NVIC_InitStructure--NVIC��ʼ���ṹ�壬
//   42  *                        ���嶨���NVIC_InitTypeDef
//   43  * ���:
//   44  *    0:����ʧ��
//   45  *    1:���óɹ�
//   46  *
//   47 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 LPLD_NVIC_Init(NVIC_InitTypeDef NVIC_InitStructure)
//   49 {
LPLD_NVIC_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R10,LR}
//   50   uint8  request = 1;
        MOVS     R6,#+1
//   51   IRQn_Type int_id = NVIC_InitStructure.NVIC_IRQChannel;
        LDRSB    R7,[SP, #+32]
//   52   uint32 nvic_priority_group = NVIC_InitStructure.NVIC_IRQChannelGroupPriority; 
        LDR      R8,[SP, #+36]
//   53   uint32 nvic_preemption_priority = NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority;
        LDR      R4,[SP, #+40]
//   54   uint32 nvic_sub_priority = NVIC_InitStructure.NVIC_IRQChannelSubPriority;
        LDR      R5,[SP, #+44]
//   55   boolean status = NVIC_InitStructure.NVIC_IRQChannelEnable;
        LDRB     R9,[SP, #+48]
//   56   uint32 temp;
//   57   //�������
//   58   ASSERT(IS_NVIC_PRIORITY_GROUP(nvic_priority_group));
        CMP      R8,#+7
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R8,#+6
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R8,#+5
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R8,#+4
        BEQ.N    ??LPLD_NVIC_Init_0
        CMP      R8,#+3
        BEQ.N    ??LPLD_NVIC_Init_0
        MOVS     R1,#+58
        LDR.N    R0,??DataTable4_6
        BL       assert_failed
//   59   ASSERT(IS_NVIC_PREEMPTION_PRIORITY(nvic_preemption_priority));
??LPLD_NVIC_Init_0:
        CMP      R4,#+16
        BCC.N    ??LPLD_NVIC_Init_1
        MOVS     R1,#+59
        LDR.N    R0,??DataTable4_6
        BL       assert_failed
//   60   ASSERT(IS_NVIC_SUB_PRIORITY(nvic_sub_priority));
??LPLD_NVIC_Init_1:
        CMP      R5,#+16
        BCC.N    ??LPLD_NVIC_Init_2
        MOVS     R1,#+60
        LDR.N    R0,??DataTable4_6
        BL       assert_failed
//   61   //���� NVIC�жϷ��� ������ռ���ȼ�
//   62   switch(nvic_priority_group)
??LPLD_NVIC_Init_2:
        CMP      R8,#+3
        BEQ.N    ??LPLD_NVIC_Init_3
        BCC.N    ??LPLD_NVIC_Init_4
        CMP      R8,#+5
        BEQ.N    ??LPLD_NVIC_Init_5
        BCC.N    ??LPLD_NVIC_Init_6
        CMP      R8,#+7
        BEQ.N    ??LPLD_NVIC_Init_7
        BCC.N    ??LPLD_NVIC_Init_8
        B.N      ??LPLD_NVIC_Init_4
//   63   {
//   64       case NVIC_PriorityGroup_0: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_0);
??LPLD_NVIC_Init_7:
        MOVS     R0,#+7
        BL       __NVIC_SetPriorityGrouping
//   65               if(nvic_preemption_priority > 0 || nvic_sub_priority >15)
        CMP      R4,#+0
        BNE.N    ??LPLD_NVIC_Init_9
        CMP      R5,#+16
        BCC.N    ??LPLD_NVIC_Init_10
//   66                 request = 0;
??LPLD_NVIC_Init_9:
        MOVS     R0,#+0
        MOVS     R6,R0
//   67               break;
??LPLD_NVIC_Init_10:
        B.N      ??LPLD_NVIC_Init_11
//   68       case NVIC_PriorityGroup_1: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_1);
??LPLD_NVIC_Init_8:
        MOVS     R0,#+6
        BL       __NVIC_SetPriorityGrouping
//   69               if(nvic_preemption_priority > 1 || nvic_sub_priority >7)
        CMP      R4,#+2
        BCS.N    ??LPLD_NVIC_Init_12
        CMP      R5,#+8
        BCC.N    ??LPLD_NVIC_Init_13
//   70                 request = 0;
??LPLD_NVIC_Init_12:
        MOVS     R0,#+0
        MOVS     R6,R0
//   71               break;
??LPLD_NVIC_Init_13:
        B.N      ??LPLD_NVIC_Init_11
//   72       case NVIC_PriorityGroup_2: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);
??LPLD_NVIC_Init_5:
        MOVS     R0,#+5
        BL       __NVIC_SetPriorityGrouping
//   73               if(nvic_preemption_priority > 3 || nvic_sub_priority >3)
        CMP      R4,#+4
        BCS.N    ??LPLD_NVIC_Init_14
        CMP      R5,#+4
        BCC.N    ??LPLD_NVIC_Init_15
//   74                 request = 0;
??LPLD_NVIC_Init_14:
        MOVS     R0,#+0
        MOVS     R6,R0
//   75               break;
??LPLD_NVIC_Init_15:
        B.N      ??LPLD_NVIC_Init_11
//   76       case NVIC_PriorityGroup_3: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_3);
??LPLD_NVIC_Init_6:
        MOVS     R0,#+4
        BL       __NVIC_SetPriorityGrouping
//   77               if(nvic_preemption_priority > 7 || nvic_sub_priority >1)
        CMP      R4,#+8
        BCS.N    ??LPLD_NVIC_Init_16
        CMP      R5,#+2
        BCC.N    ??LPLD_NVIC_Init_17
//   78                 request = 0;
??LPLD_NVIC_Init_16:
        MOVS     R0,#+0
        MOVS     R6,R0
//   79               break;
??LPLD_NVIC_Init_17:
        B.N      ??LPLD_NVIC_Init_11
//   80       case NVIC_PriorityGroup_4: NVIC_SetPriorityGrouping(NVIC_PriorityGroup_4);
??LPLD_NVIC_Init_3:
        MOVS     R0,#+3
        BL       __NVIC_SetPriorityGrouping
//   81               if(nvic_preemption_priority > 15 || nvic_sub_priority >0)
        CMP      R4,#+16
        BCS.N    ??LPLD_NVIC_Init_18
        CMP      R5,#+0
        BEQ.N    ??LPLD_NVIC_Init_19
//   82                 request = 0;
??LPLD_NVIC_Init_18:
        MOVS     R0,#+0
        MOVS     R6,R0
//   83               break;
??LPLD_NVIC_Init_19:
        B.N      ??LPLD_NVIC_Init_11
//   84       default:return 0;
??LPLD_NVIC_Init_4:
        MOVS     R0,#+0
        B.N      ??LPLD_NVIC_Init_20
//   85   }
//   86   //�����жϷ���ռ�����ж���ռ���ȼ�
//   87   //�����жϷ���ռ�����ж���Ӧ���ȼ�
//   88   temp = NVIC_EncodePriority(nvic_priority_group,\ 
//   89                              nvic_preemption_priority,\ 
//   90                              nvic_sub_priority);
??LPLD_NVIC_Init_11:
        MOVS     R2,R5
        MOVS     R1,R4
        MOV      R0,R8
        BL       NVIC_EncodePriority
        MOV      R10,R0
//   91   //�����ж�������,����M4�ں�������NVIC���ȼ�
//   92   NVIC_SetPriority(int_id,temp);
        MOV      R1,R10
        MOVS     R0,R7
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       __NVIC_SetPriority
//   93   
//   94   if(status == TRUE)
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_NVIC_Init_21
//   95   {
//   96     NVIC_EnableIRQ(int_id);
        MOVS     R0,R7
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       __NVIC_EnableIRQ
        B.N      ??LPLD_NVIC_Init_22
//   97   }
//   98   else
//   99   {
//  100     NVIC_DisableIRQ(int_id);
??LPLD_NVIC_Init_21:
        MOVS     R0,R7
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       __NVIC_DisableIRQ
//  101   }
//  102   return request;
??LPLD_NVIC_Init_22:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_NVIC_Init_20:
        POP      {R4-R10}
        LDR      PC,[SP], #+20    ;; return
//  103 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DATA32
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DATA32
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DATA32
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DATA32
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DATA32
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DATA32
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "G:\\AIcar\\\344\277\241\346\240\207\\xiugai\\lib\\LPLD\\HW\\HW_NVIC.c"
        DC8 0, 0, 0

        END
// 
//  48 bytes in section .rodata
// 510 bytes in section .text
// 
// 510 bytes of CODE  memory
//  48 bytes of CONST memory
//
//Errors: none
//Warnings: none
