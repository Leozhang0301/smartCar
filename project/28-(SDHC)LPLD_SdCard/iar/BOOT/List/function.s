///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\Jay\function.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW2B59.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\Jay\function.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\function.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfrcmple

        PUBLIC AlterParam_Clear
        PUBLIC Buzzer
        PUBLIC JudgeNumInterval
        PUBLIC Max
        PUBLIC Min
        PUBLIC my_abs
        PUBLIC my_fabs
        PUBLIC nvic_init_struct

// G:\AIcar\@@\k60_144\smartcar\lib\Jay\function.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include "common.h"
//    7 #include "include.h"
//    8 
//    9 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 NVIC_InitTypeDef nvic_init_struct;
nvic_init_struct:
        DS8 20
//   11 
//   12 //取得两个数 最大值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 int16 Max(int16 a, int16 b)
//   14 {
//   15 	return a > b ? a : b;
Max:
        MOVS     R2,R1
        MOVS     R3,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R2,R3
        BLT.N    ??Max_0
??Max_1:
        MOVS     R0,R1
??Max_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   16 }
//   17 //取得两个数 最小值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 int16 Min(int16 a, int16 b)
//   19 {
//   20 	return a < b ? a : b;
Min:
        MOVS     R2,R0
        MOVS     R3,R1
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R2,R3
        BLT.N    ??Min_0
??Min_1:
        MOVS     R0,R1
??Min_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   21 }
//   22 //绝对值 整型变量

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 int16 my_abs(int16 index)
//   24 {
//   25 	return index > 0 ? index : -index;
my_abs:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BGE.N    ??my_abs_0
??my_abs_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        RSBS     R0,R0,#+0
??my_abs_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   26 }
//   27 //绝对值 浮点型变量

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 float my_fabs(float index)
//   29 {
my_fabs:
        PUSH     {R7,LR}
//   30 	return index > 0 ? index : -index;
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCC.N    ??my_fabs_0
??my_fabs_1:
        EORS     R0,R0,#0x80000000
??my_fabs_0:
        POP      {R1,PC}          ;; return
//   31 }
//   32 //直接修改数组值，用于赋予同一个值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void AlterParam_Clear(int16 begin,int16 end,int16 *pArray,int16 val)
//   34 {
AlterParam_Clear:
        PUSH     {R4,R5}
        B.N      ??AlterParam_Clear_0
//   35 	for( ;begin >= end; begin--)
//   36 	{
//   37 		*(pArray + begin) = val;
??AlterParam_Clear_1:
        MOVS     R4,R0
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRH     R3,[R2, R4, LSL #+1]
//   38 	}
        SUBS     R0,R0,#+1
??AlterParam_Clear_0:
        MOVS     R4,R0
        MOVS     R5,R1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R4,R5
        BGE.N    ??AlterParam_Clear_1
//   39 }
        POP      {R4,R5}
        BX       LR               ;; return
//   40 //判断参数是否在一个区间内

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 JudgeNumInterval(int16 Num,int16 Max,int16 Min)
//   42 {
//   43 	if (Num <= Max && Num >= Min)
JudgeNumInterval:
        MOVS     R3,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R1,R3
        BLT.N    ??JudgeNumInterval_0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BLT.N    ??JudgeNumInterval_0
//   44 	{
//   45 		return 1;
        MOVS     R0,#+1
        B.N      ??JudgeNumInterval_1
//   46 	}
//   47 	return 0;
??JudgeNumInterval_0:
        MOVS     R0,#+0
??JudgeNumInterval_1:
        BX       LR               ;; return
//   48 }
//   49 //蜂鸣器

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void Buzzer(void)
//   51 {
//   52   
//   53 }
Buzzer:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  20 bytes in section .bss
// 126 bytes in section .text
// 
// 126 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: 2
