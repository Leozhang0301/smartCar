///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:41
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\Jay\adc.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW178A.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\Jay\adc.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\adc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_ADC_Init
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4

        PUBLIC ADC_Init
        PUBLIC IndModel
        PUBLIC MAX_IND_LEFT
        PUBLIC MAX_IND_MID
        PUBLIC MAX_IND_RIGHT
        PUBLIC MIN_IND
        PUBLIC adc2
        PUBLIC adc3
        PUBLIC adc4
        PUBLIC get_adc_val
        PUBLIC get_ind_error
        PUBLIC get_ind_range
        PUBLIC ind1_left_val
        PUBLIC ind1_right_val
        PUBLIC ind_center_val
        PUBLIC ind_error
        PUBLIC ind_sum_val
        PUBLIC isGetInd
        PUBLIC setMaxIndLeft
        PUBLIC setMaxIndMid
        PUBLIC setMaxIndRight

// G:\AIcar\@@\k60_144\smartcar\lib\Jay\adc.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include "common.h"
//    7 #include "include.h"
//    8 
//    9 
//   10 
//   11 #define MAX_IND 4095
//   12 
//   13 
//   14 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   15 int16 MAX_IND_LEFT = 4095;
MAX_IND_LEFT:
        DATA16
        DC16 4095

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   16 int16 MAX_IND_RIGHT = 4095;
MAX_IND_RIGHT:
        DATA16
        DC16 4095

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   17 int16 MAX_IND_MID = 4095;
MAX_IND_MID:
        DATA16
        DC16 4095

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   18 int16 MIN_IND = 20;
MIN_IND:
        DATA16
        DC16 20
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   20 int16 setMaxIndLeft = 0;
setMaxIndLeft:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   21 int16 setMaxIndRight = 0;
setMaxIndRight:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   22 int16 setMaxIndMid = 0;
setMaxIndMid:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   23 uint8 IndModel = 0;// 0代表限定值AD归一，1代表采集最大值归一
IndModel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   24 uint8 isGetInd = 0;
isGetInd:
        DS8 1
//   25 
//   26 
//   27 
//   28 
//   29 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   30 int16 ind1_left_val = 0;
ind1_left_val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   31 int16 ind1_right_val = 0;
ind1_right_val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   32 int16 ind_center_val = 0;
ind_center_val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   33 int16 ind_sum_val = 0;
ind_sum_val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   34 int16 ind_error = 0;
ind_error:
        DS8 2
//   35 
//   36   
//   37   
//   38 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   39 ADC_InitTypeDef adc2;//左一
adc2:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   40 ADC_InitTypeDef adc3;//中
adc3:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   41 ADC_InitTypeDef adc4;//右一
adc4:
        DS8 20
//   42 
//   43 
//   44 
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void ADC_Init(void)
//   47 {
ADC_Init:
        PUSH     {R2-R4,LR}
//   48   adc2.ADC_Adcx=ADC0;
        LDR.N    R1,??DataTable3
        LDR.N    R4,??DataTable3_1  ;; 0x4003b000
        STR      R4,[R1, #+0]
//   49   adc2.ADC_DiffMode=ADC_SE;
        MOVS     R0,#+0
        STRB     R0,[R1, #+4]
//   50   adc2.ADC_BitMode=SE_12BIT;
        MOVS     R0,#+1
        STRB     R0,[R1, #+5]
//   51   LPLD_ADC_Init(adc2);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   52   LPLD_ADC_Chn_Enable(ADC0,AD14);
        MOVS     R1,#+14
        MOVS     R0,R4
        BL       LPLD_ADC_Chn_Enable
//   53   
//   54   adc3.ADC_Adcx=ADC1;
        LDR.N    R1,??DataTable3_2
        LDR.N    R4,??DataTable3_3  ;; 0x400bb000
        STR      R4,[R1, #+0]
//   55   adc3.ADC_DiffMode=ADC_SE;
        MOVS     R0,#+0
        STRB     R0,[R1, #+4]
//   56   adc3.ADC_BitMode=SE_12BIT;
        MOVS     R0,#+1
        STRB     R0,[R1, #+5]
//   57   LPLD_ADC_Init(adc3);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   58   LPLD_ADC_Chn_Enable(ADC1,AD14);
        MOVS     R1,#+14
        MOVS     R0,R4
        BL       LPLD_ADC_Chn_Enable
//   59   
//   60   adc4.ADC_Adcx=ADC1;
        LDR.N    R1,??DataTable3_4
        STR      R4,[R1, #+0]
//   61   adc4.ADC_DiffMode=ADC_SE;
        MOVS     R0,#+0
        STRB     R0,[R1, #+4]
//   62   adc4.ADC_BitMode=SE_12BIT;
        MOVS     R0,#+1
        STRB     R0,[R1, #+5]
//   63   LPLD_ADC_Init(adc4);
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   64   LPLD_ADC_Chn_Enable(ADC1,AD15);
        MOVS     R1,#+15
        MOVS     R0,R4
        BL       LPLD_ADC_Chn_Enable
//   65 }
        POP      {R0,R1,R4,PC}    ;; return
//   66 
//   67 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void get_ind_range(void)
//   69 {
//   70   if(1 == isGetInd)
get_ind_range:
        LDR.N    R0,??DataTable3_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??get_ind_range_0
//   71   {
//   72     if(setMaxIndLeft < ind1_left_val)
        LDR.N    R0,??DataTable3_6
        LDR.N    R1,??DataTable3_7
        LDRSH    R2,[R1, #+0]
        LDRSH    R3,[R0, #+0]
        CMP      R2,R3
        BGE.N    ??get_ind_range_1
//   73     {
//   74       setMaxIndLeft = ind1_left_val;
        LDRH     R0,[R0, #+0]
        STRH     R0,[R1, #+0]
//   75     }
//   76     if(setMaxIndRight < ind1_right_val)
??get_ind_range_1:
        LDR.N    R0,??DataTable3_8
        LDR.N    R1,??DataTable3_9
        LDRSH    R2,[R1, #+0]
        LDRSH    R3,[R0, #+0]
        CMP      R2,R3
        BGE.N    ??get_ind_range_2
//   77     {
//   78       setMaxIndRight = ind1_right_val;
        LDRH     R0,[R0, #+0]
        STRH     R0,[R1, #+0]
//   79     }
//   80     if(setMaxIndMid < ind_center_val)
??get_ind_range_2:
        LDR.N    R0,??DataTable3_10
        LDR.N    R1,??DataTable3_11
        LDRSH    R2,[R1, #+0]
        LDRSH    R3,[R0, #+0]
        CMP      R2,R3
        BGE.N    ??get_ind_range_0
//   81     {
//   82       setMaxIndMid = ind_center_val;
        LDRH     R0,[R0, #+0]
        STRH     R0,[R1, #+0]
//   83     }
//   84   }
//   85 }
??get_ind_range_0:
        BX       LR               ;; return
//   86 
//   87 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void get_adc_val(void)
//   89 {
get_adc_val:
        PUSH     {R3-R9,LR}
//   90   //读值
//   91   ind1_left_val = LPLD_ADC_Get(ADC0,AD14);
        LDR.N    R4,??DataTable3_6
        MOVS     R1,#+14
        LDR.N    R0,??DataTable3_1  ;; 0x4003b000
        BL       LPLD_ADC_Get
        STRH     R0,[R4, #+0]
//   92   ind1_right_val = LPLD_ADC_Get(ADC1,AD15);
        LDR.N    R5,??DataTable3_8
        LDR.N    R7,??DataTable3_3  ;; 0x400bb000
        MOVS     R1,#+15
        MOVS     R0,R7
        BL       LPLD_ADC_Get
        STRH     R0,[R5, #+0]
//   93   ind_center_val = LPLD_ADC_Get(ADC1,AD14);
        LDR.N    R6,??DataTable3_10
        MOVS     R1,#+14
        MOVS     R0,R7
        BL       LPLD_ADC_Get
        STRH     R0,[R6, #+0]
//   94 
//   95   
//   96   if(ind1_left_val <= MIN_IND)
        LDR.N    R7,??DataTable3_12
        LDRSH    R0,[R7, #+0]
        LDRSH    R1,[R4, #+0]
        CMP      R0,R1
        BLT.N    ??get_adc_val_0
//   97   { ind1_left_val = MIN_IND; }
        LDRH     R0,[R7, #+0]
        STRH     R0,[R4, #+0]
//   98   if(ind1_right_val <= MIN_IND)
??get_adc_val_0:
        LDRSH    R0,[R7, #+0]
        LDRSH    R1,[R5, #+0]
        CMP      R0,R1
        BLT.N    ??get_adc_val_1
//   99   { ind1_right_val = MIN_IND; }
        LDRH     R0,[R7, #+0]
        STRH     R0,[R5, #+0]
//  100   if(ind_center_val <= MIN_IND)
??get_adc_val_1:
        LDRSH    R0,[R7, #+0]
        LDRSH    R1,[R6, #+0]
        CMP      R0,R1
        BLT.N    ??get_adc_val_2
//  101   { ind_center_val = MIN_IND; }
        LDRH     R0,[R7, #+0]
        STRH     R0,[R6, #+0]
//  102   if(0 == IndModel)
??get_adc_val_2:
        LDR.N    R0,??DataTable3_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_adc_val_3
//  103   {
//  104     MAX_IND_LEFT = MAX_IND;
        MOVW     R0,#+4095
        LDR.N    R1,??DataTable3_14
        STRH     R0,[R1, #+0]
//  105     MAX_IND_RIGHT = MAX_IND;
        LDR.N    R1,??DataTable3_15
        STRH     R0,[R1, #+0]
//  106     MAX_IND_MID = MAX_IND;
        LDR.N    R1,??DataTable3_16
        STRH     R0,[R1, #+0]
//  107     
//  108     //限幅
//  109     
//  110     if(ind1_left_val >= MAX_IND)
        LDRSH    R1,[R4, #+0]
        CMP      R1,R0
        BLT.N    ??get_adc_val_4
//  111     { ind1_left_val = MAX_IND; }
        STRH     R0,[R4, #+0]
//  112     
//  113     
//  114     if(ind1_right_val >= MAX_IND)
??get_adc_val_4:
        LDRSH    R1,[R5, #+0]
        CMP      R1,R0
        BLT.N    ??get_adc_val_5
//  115     { ind1_right_val = MAX_IND; }
        STRH     R0,[R5, #+0]
//  116     
//  117     
//  118     if(ind_center_val >= MAX_IND)
??get_adc_val_5:
        LDRSH    R1,[R6, #+0]
        CMP      R1,R0
        BLT.N    ??get_adc_val_6
//  119     { ind_center_val = MAX_IND;}
        STRH     R0,[R6, #+0]
        B.N      ??get_adc_val_6
//  120   }
//  121   else
//  122   {
//  123     MAX_IND_LEFT = setMaxIndLeft;
??get_adc_val_3:
        LDR.N    R0,??DataTable3_7
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_14
        STRH     R0,[R1, #+0]
//  124     MAX_IND_RIGHT = setMaxIndRight;
        LDR.N    R0,??DataTable3_9
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_15
        STRH     R0,[R1, #+0]
//  125     MAX_IND_MID = setMaxIndMid;
        LDR.N    R0,??DataTable3_11
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_16
        STRH     R0,[R1, #+0]
//  126   }
//  127   
//  128   if(0 == isGetInd)
??get_adc_val_6:
        LDR.N    R0,??DataTable3_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_adc_val_7
//  129   {
//  130     //归一
//  131     ind1_left_val = (int16)((ind1_left_val - MIN_IND) * 100.0f / (MAX_IND_LEFT - MIN_IND));
        LDR.W    R8,??DataTable3_17  ;; 0x42c80000
        LDRSH    R0,[R4, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR.N    R0,??DataTable3_14
        LDRSH    R0,[R0, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fdiv
        BL       __aeabi_f2iz
        STRH     R0,[R4, #+0]
//  132     ind1_right_val = (int16)((ind1_right_val - MIN_IND) * 100.0f / (MAX_IND_RIGHT - MIN_IND));
        LDRSH    R0,[R5, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR.N    R0,??DataTable3_15
        LDRSH    R0,[R0, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fdiv
        BL       __aeabi_f2iz
        STRH     R0,[R5, #+0]
//  133     ind_center_val = (int16)((ind_center_val - MIN_IND) * 100.0f / (MAX_IND_MID - MIN_IND));
        LDRSH    R0,[R6, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR.N    R0,??DataTable3_16
        LDRSH    R0,[R0, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fdiv
        BL       __aeabi_f2iz
        STRH     R0,[R6, #+0]
//  134     ind_sum_val = ind1_left_val + ind1_right_val;
        LDRH     R1,[R4, #+0]
        LDRH     R0,[R5, #+0]
        ADDS     R1,R0,R1
        LDR.N    R0,??DataTable3_18
        STRH     R1,[R0, #+0]
//  135   }
//  136   
//  137   
//  138 }
??get_adc_val_7:
        POP      {R0,R4-R9,PC}    ;; return
//  139 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void get_ind_error(void)
//  141 { 
get_ind_error:
        PUSH     {R4-R6,LR}
//  142   float dividend = 0;//被除数
        MOVS     R0,#+0
//  143   float divisor = 0;//除数
        MOVS     R0,#+0
//  144   float quotient = 0;//商
        MOVS     R0,#+0
//  145   
//  146   
//  147   dividend = ind1_left_val - ind1_right_val;
        LDR.N    R5,??DataTable3_8
        LDR.N    R6,??DataTable3_6
        LDRSH    R0,[R6, #+0]
        LDRSH    R1,[R5, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R4,R0
//  148   divisor = ind1_left_val + ind1_right_val;
        LDRSH    R0,[R6, #+0]
        LDRSH    R1,[R5, #+0]
        SXTAH    R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R5,R0
//  149   
//  150   if(0 == divisor)
        MOVS     R0,R5
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.N    ??get_ind_error_0
//  151   {
//  152     return;
//  153   }
//  154   quotient = (dividend * 1.0f) / divisor;
??get_ind_error_1:
        MOVS     R0,#+1065353216
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fdiv
//  155   quotient *= IMG_COL_CENTER;
        LDR.N    R4,??DataTable3_19  ;; 0x429e0000
        MOVS     R1,R4
        BL       __aeabi_fmul
//  156   
//  157   if(quotient >= IMG_COL_CENTER)
        MOVS     R1,R4
        BL       __aeabi_cfrcmple
        BHI.N    ??get_ind_error_2
//  158   { quotient = IMG_COL_CENTER;}
        MOVS     R0,R4
        B.N      ??get_ind_error_3
//  159   else if(quotient <= -IMG_COL_CENTER)
??get_ind_error_2:
        LDR.N    R1,??DataTable3_20  ;; 0xc29dffff
        BL       __aeabi_cfcmple
        BCS.N    ??get_ind_error_3
//  160   { quotient = -IMG_COL_CENTER;}
        LDR.N    R0,??DataTable3_21  ;; 0xc29e0000
//  161   
//  162   ind_error = IMG_COL_CENTER - (int16)(quotient * 0.7f);
??get_ind_error_3:
        LDR.N    R4,??DataTable3_22
        LDR.N    R1,??DataTable3_23  ;; 0x3f333333
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        RSBS     R0,R0,#+79
        STRH     R0,[R4, #+0]
//  163   
//  164   if(ind_error >= IMG_RIGHT)
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+158
        BLT.N    ??get_ind_error_4
//  165   { ind_error = IMG_RIGHT;}
        MOVS     R0,#+158
        STRH     R0,[R4, #+0]
        B.N      ??get_ind_error_5
//  166   else if(ind_error <= IMG_LEFT)
??get_ind_error_4:
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+2
        BGE.N    ??get_ind_error_5
//  167   { ind_error = IMG_LEFT;}
        MOVS     R0,#+1
        STRH     R0,[R4, #+0]
//  168 }
??get_ind_error_5:
??get_ind_error_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA32
        DC32     adc2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA32
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA32
        DC32     adc3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DATA32
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DATA32
        DC32     adc4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DATA32
        DC32     isGetInd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DATA32
        DC32     ind1_left_val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DATA32
        DC32     setMaxIndLeft

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DATA32
        DC32     ind1_right_val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DATA32
        DC32     setMaxIndRight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DATA32
        DC32     ind_center_val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DATA32
        DC32     setMaxIndMid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DATA32
        DC32     MIN_IND

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DATA32
        DC32     IndModel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DATA32
        DC32     MAX_IND_LEFT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DATA32
        DC32     MAX_IND_RIGHT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DATA32
        DC32     MAX_IND_MID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DATA32
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DATA32
        DC32     ind_sum_val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DATA32
        DC32     0x429e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DATA32
        DC32     0xc29dffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DATA32
        DC32     0xc29e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DATA32
        DC32     ind_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DATA32
        DC32     0x3f333333

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  169 
// 
//  78 bytes in section .bss
//   8 bytes in section .data
// 790 bytes in section .text
// 
// 790 bytes of CODE memory
//  86 bytes of DATA memory
//
//Errors: none
//Warnings: 2
