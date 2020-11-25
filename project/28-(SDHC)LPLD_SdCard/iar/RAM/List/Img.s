///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:17
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\Img.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW3308.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\Img.c -D LPLD_K60
//        -lCN
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\Img.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AlterParam_Clear
        EXTERN JudgeNumInterval
        EXTERN Max
        EXTERN Min
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN imgbuff
        EXTERN my_abs

        PUBLIC AlterParam_Line
        PUBLIC CAR_JOIN_templ
        PUBLIC CarJoinArea_Flag
        PUBLIC CenterFilter
        PUBLIC EdgeFilter
        PUBLIC EdgeInit
        PUBLIC EdgeIrregular
        PUBLIC FWD_Compensate
        PUBLIC FastVal
        PUBLIC FirstCarRun
        PUBLIC GetEdgeInflex
        PUBLIC GetFirstCenter
        PUBLIC GetTanAlpha
        PUBLIC ImageParamInit
        PUBLIC InCarJoinArea
        PUBLIC InRing
        PUBLIC JudgeCrossroad
        PUBLIC JudgeFast
        PUBLIC JudgePreInRing
        PUBLIC OffSetEdgeSub
        PUBLIC Ramp_Flag
        PUBLIC ReSearchLeftEdge
        PUBLIC ReSearchRightEdge
        PUBLIC ResetEdge
        PUBLIC SearchLeftEdgeByHeight
        PUBLIC SearchLeftEdgebyRightSide
        PUBLIC SearchLeftTendency
        PUBLIC SearchRightEdgeByHeight
        PUBLIC SearchRightEdgebyLeftSide
        PUBLIC SearchRightTendency
        PUBLIC downSearch
        PUBLIC fstpoint
        PUBLIC get_height
        PUBLIC get_img_center
        PUBLIC get_img_error
        PUBLIC get_left
        PUBLIC get_pointFold
        PUBLIC get_right
        PUBLIC img_centers
        PUBLIC img_negedge
        PUBLIC img_posedge
        PUBLIC isEdgeStraight
        PUBLIC isRamp
        PUBLIC leftEdge
        PUBLIC leftFold
        PUBLIC left_templ
        PUBLIC preInRing
        PUBLIC ramp_width
        PUBLIC rightEdge
        PUBLIC rightFold
        PUBLIC right_templ
        PUBLIC ring_flag
        PUBLIC row_end_center
        PUBLIC row_left_begin
        PUBLIC row_left_end
        PUBLIC row_right_begin
        PUBLIC row_right_end
        PUBLIC width_templ
        PUBLIC zebra_Flag

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\Img.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 
//    9 
//   10 //===========================================参数定义===========================================//
//   11 
//   12 //图像

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   13 int16 fstpoint = IMG_COL_CENTER;
fstpoint:
        DATA16
        DC16 79

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   14 int16 row_end_center = IMG_TOP;
row_end_center:
        DATA16
        DC16 10

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   15 int16 leftFold = 0x00;
leftFold:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   16 int16 rightFold = 0x00;
rightFold:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 int16 leftEdge[IMG_ROWS];
leftEdge:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 int16 rightEdge[IMG_ROWS];
rightEdge:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 int16 img_centers[IMG_ROWS];
img_centers:
        DS8 120

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   20 int16 row_left_begin = IMG_BOTTOM;
row_left_begin:
        DATA16
        DC16 69

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   21 int16 row_right_begin = IMG_BOTTOM;
row_right_begin:
        DATA16
        DC16 69

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   22 int16 row_left_end = IMG_TOP;
row_left_end:
        DATA16
        DC16 10

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   23 int16 row_right_end = IMG_TOP;
row_right_end:
        DATA16
        DC16 10
//   24 
//   25 //标志位
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   27 int16 FastVal = 0;
FastVal:
        DS8 2

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DATA16
        DC16 59, 99, 39, 119, 19, 139, 1, 158
//   28 
//   29 
//   30 
//   31 
//   32 //===========================================定义结束===========================================//
//   33 
//   34 
//   35 
//   36 
//   37 
//   38 
//   39 
//   40 //===========================================创建模板===========================================//

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   41 const int16 CAR_JOIN_templ[] =
CAR_JOIN_templ:
        DATA16
        DC16 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
        DC16 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5
        DC16 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6
        DC16 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7
        DC16 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
        DC16 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
//   42 {
//   43   3,3,3,3,3,3,3,3,3,3,// 0 - 9
//   44   3,3,3,3,3,3,3,3,3,3,//10 - 19
//   45   3,3,3,3,3,3,3,3,3,3,//20 - 29
//   46   4,4,4,4,4,4,4,4,4,4,//30 - 39
//   47   5,5,5,5,5,5,5,5,5,5,//40 - 49
//   48   5,5,5,5,5,5,5,5,5,5,//50 - 59
//   49   6,6,6,6,6,6,6,6,6,6,//60 - 69
//   50   7,7,7,7,7,7,7,7,7,7,//70 - 79
//   51   7,7,7,7,7,7,7,7,7,7,//80 - 89
//   52   8,8,8,8,8,8,8,8,8,8,//90 - 99
//   53   8,8,8,8,8,8,8,8,8,8,//100 -109
//   54   8,8,8,8,8,8,8,8,8,8 //110 -119
//   55     
//   56 };
//   57 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   58 const int16 width_templ[] =
width_templ:
        DATA16
        DC16 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 29, 32, 35
        DC16 37, 41, 44, 47, 49, 53, 55, 59, 61, 65, 67, 71, 73, 77, 79, 82, 85
        DC16 88, 91, 94, 97, 99, 103, 105, 108, 111, 113, 115, 119, 121, 123
        DC16 126, 129, 131, 134, 136, 138, 140, 143, 145, 148, 150, 152, 154
        DC16 155, 156, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157
        DC16 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157
        DC16 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157
        DC16 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157, 157
        DC16 157, 157, 157, 157, 157, 157, 157
//   59 {
//   60   26,26,26,26,26,26,26,26,26,26,26,26,26,
//   61   26,29,32,35,37,41,44,47,49,53,
//   62   55,59,61,65,67,71,73,77,79,82,
//   63   85,88,91,94,97,99,103,105,108,
//   64   111,113,115,119,121,123,126,129,
//   65   131,134,136,138,140,143,145,148,
//   66   150,152,154,155,156,157,157,157,
//   67   157,157,157,157,157,157,157,157,157,157,157,157,
//   68   157,157,157,157,157,157,157,157,157,157,157,157,
//   69   157,157,157,157,157,157,157,157,157,157,157,157,
//   70   157,157,157,157,157,157,157,157,157,157,157,157,
//   71   157,157,157,157,157,157
//   72 };
//   73 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   74 const int16 ramp_width[] =
ramp_width:
        DATA16
        DC16 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 72, 73, 74, 75, 77, 77
        DC16 79, 81, 81, 83, 84, 85, 87, 88, 89, 91, 92, 93, 95, 96, 97, 98
        DC16 100, 102, 102, 104, 104, 106, 108, 109, 110, 112, 113, 115, 117
        DC16 119, 121, 124, 126, 128, 130, 134, 136, 138, 140, 142, 143, 145
        DC16 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 156, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158
//   75 {
//   76   71,71,71,71,71,71,71,71,71,71,71,72,
//   77   73,74,75,77,77,79,81,81,83,84,85,87,
//   78   88,89,91,92,93,95,96,97,98,
//   79   100,102,102,104,104,106,108,109,110,
//   80   112,113,115,117,119,121,124,126,128,
//   81   130,134,136,138,140,142,143,145,146,
//   82   147,148,149,150,151,152,153,154,155,
//   83   156,156,158,158,158,158,158,158,158,
//   84   158,158,158,158,158,158,158,158,158,
//   85   158,158,158,158,158,158,158,158,158,
//   86   158,158,158,158,158,158,158,158,158,
//   87   158,158,158,158,158,158,158,158,158,
//   88   158,158,158,158,158,158
//   89 };

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   90 const int16 left_templ[] = 
left_templ:
        DATA16
        DC16 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 64, 63, 61
        DC16 60, 58, 57, 55, 54, 52, 51, 49, 48, 46, 45, 43, 42, 40, 39, 37, 36
        DC16 34, 33, 31, 30, 29, 27, 26, 24, 23, 22, 21, 19, 18, 17, 15, 14, 13
        DC16 11, 10, 9, 8, 7, 5, 4, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        DC16 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        DC16 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        DC16 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
//   91 {
//   92   66,66,66,66,66,66,66,66,66,66,66,66,66,
//   93   66,64,63,61,60,58,57,55,54,
//   94   52,51,49,48,46,45,43,42,40,
//   95   39,37,36,34,33,31,30,29,27,
//   96   26,24,23,22,21,19,18,17,15,
//   97   14,13,11,10,9,8,7,5,4,3,2,
//   98   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
//   99   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
//  100   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
//  101   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
//  102 };
//  103 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  104 const int16 right_templ[] = 
right_templ:
        DATA16
        DC16 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 93, 95, 96
        DC16 97, 99, 101, 102, 103, 105, 106, 108, 109, 111, 112, 114, 115, 117
        DC16 118, 119, 121, 122, 124, 125, 127, 128, 130, 131, 132, 134, 135
        DC16 136, 138, 139, 140, 141, 143, 144, 145, 146, 147, 148, 150, 150
        DC16 152, 153, 154, 155, 156, 157, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158, 158
        DC16 158, 158, 158, 158, 158, 158, 158, 158, 158
//  105 {
//  106   92,92,92,92,92,92,92,92,92,92,92,92,92,
//  107   92,93,95,96,97,99,101,102,103,105,
//  108   106,108,109,111,112,114,115,117,118,
//  109   119,121,122,124,125,127,128,130,131,
//  110   132,134,135,136,138,139,140,141,143,
//  111   144,145,146,147,148,150,150,152,153,
//  112   154,155,156,157,158,158,158,158,158,
//  113   158,158,158,158,158,158,158,158,158,158,
//  114   158,158,158,158,158,158,158,158,158,158,
//  115   158,158,158,158,158,158,158,158,158,158,
//  116   158,158,158,158,158,158,158,158,158,158,
//  117   158,158,158,158,158,158,158,158,158,158
//  118 };
//  119 
//  120 //===========================================创建结束===========================================//
//  121 
//  122 /*
//  123  * 图像模板用于 模板匹配识别
//  124  */
//  125 
//  126 
//  127 
//  128 //======================================================================================定义函数======================================================================================//
//  129 
//  130 //标志位初始化

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void ImageParamInit(void)
//  132 {
//  133         FastVal = FWD_45CM;
ImageParamInit:
        MOVS     R0,#+26
        LDR.W    R1,??DataTable10
        STRH     R0,[R1, #+0]
//  134         fstpoint = IMG_COL_CENTER;
        MOVS     R0,#+79
        LDR.W    R1,??DataTable10_1
        STRH     R0,[R1, #+0]
//  135         leftFold = 0x00;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_2
        STRH     R0,[R1, #+0]
//  136         rightFold = 0x00;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STRH     R0,[R1, #+0]
//  137 	row_end_center = IMG_TOP;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable11_1
        STRH     R0,[R1, #+0]
//  138 	row_left_begin = IMG_BOTTOM;
        MOVS     R0,#+69
        LDR.W    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  139 	row_left_end = IMG_TOP;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+0]
//  140 	row_right_begin = IMG_BOTTOM;
        MOVS     R0,#+69
        LDR.W    R1,??DataTable11_4
        STRH     R0,[R1, #+0]
//  141 	row_right_end = IMG_TOP;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable11_5
        STRH     R0,[R1, #+0]
//  142 }
        BX       LR               ;; return
//  143 /*
//  144  * 计算两点斜率
//  145  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 float GetTanAlpha(int16 row1, int16 col1, int16 row2, int16 col2)
//  147 {
GetTanAlpha:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  148 	if (row1 == row2)
        MOVS     R0,R4
        MOVS     R2,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BNE.N    ??GetTanAlpha_0
//  149 	{
//  150 		return 0;
        MOVS     R0,#+0
        B.N      ??GetTanAlpha_1
//  151 	}
//  152 	else if (col1 == col2)
??GetTanAlpha_0:
        MOVS     R0,R1
        MOVS     R2,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BNE.N    ??GetTanAlpha_2
//  153 	{
//  154 		return 0;
        MOVS     R0,#+0
        B.N      ??GetTanAlpha_1
//  155 	}
//  156 	return (col1 - col2) * 1.0f / (row1 - row2);
??GetTanAlpha_2:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SUBS     R1,R1,R3
        MOVS     R0,R1
        BL       __aeabi_i2f
        MOVS     R1,#+1065353216
        BL       __aeabi_fmul
        MOVS     R6,R0
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SUBS     R4,R4,R5
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fdiv
??GetTanAlpha_1:
        POP      {R4-R6,PC}       ;; return
//  157 }
//  158 /*
//  159  * 拟合直线
//  160  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 void AlterParam_Line(int16 beginrow, int16 endrow, int16 row1, int16 col1, int16 row2, int16 col2, int16 *p)
//  162 {
AlterParam_Line:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRSH    R2,[SP, #+32]
        LDRSH    R3,[SP, #+36]
        LDR      R8,[SP, #+40]
//  163 	float k = GetTanAlpha(row1, col1, row2, col2);
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       GetTanAlpha
        MOV      R9,R0
        B.N      ??AlterParam_Line_0
//  164 	for (; beginrow >= endrow; beginrow--)
//  165 	{
//  166 		*(p + beginrow) = (int16)((beginrow - row1) * k + col1);
//  167 		if (*(p + beginrow) >= IMG_RIGHT)
//  168                 {
//  169                     *(p + beginrow) = IMG_RIGHT;
//  170                 }
//  171                 else if (*(p + beginrow) <= IMG_LEFT)
??AlterParam_Line_1:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R8, R0, LSL #+1]
        CMP      R0,#+2
        BGE.N    ??AlterParam_Line_2
//  172                 {
//  173                     *(p + beginrow) = IMG_LEFT;
        MOVS     R0,#+1
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
        B.N      ??AlterParam_Line_2
//  174                 }
??AlterParam_Line_3:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fmul
        MOV      R10,R0
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R10
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R8, R0, LSL #+1]
        CMP      R0,#+158
        BLT.N    ??AlterParam_Line_1
        MOVS     R0,#+158
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
//  175 	}
??AlterParam_Line_2:
        SUBS     R4,R4,#+1
??AlterParam_Line_0:
        MOVS     R0,R4
        MOVS     R1,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??AlterParam_Line_3
//  176 }
??AlterParam_Line_4:
        POP      {R4-R10,PC}      ;; return
//  177 
//  178 //图像上升沿

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 uint8 img_posedge(int16 beginrow,int16 endrow,int16 begincol,int16 endcol)//上升沿
//  180 {
img_posedge:
        PUSH     {R4,R5}
        MOVS     R4,R0
//  181 	if(beginrow == endrow && begincol == endcol)//检测一个点的亮度值
        MOVS     R0,R4
        MOVS     R5,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??img_posedge_0
        MOVS     R0,R2
        MOVS     R5,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??img_posedge_0
//  182 	{
//  183 		if(imgbuff[beginrow][begincol]) { return 1;}
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BEQ.N    ??img_posedge_1
        MOVS     R0,#+1
        B.N      ??img_posedge_2
//  184 		return 0;
??img_posedge_1:
        MOVS     R0,#+0
        B.N      ??img_posedge_2
//  185 	}
//  186 	else if(beginrow == endrow)//检测纵向行坐标亮度
??img_posedge_0:
        MOVS     R0,R4
        MOVS     R5,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??img_posedge_3
//  187 	{
//  188 		if(begincol > endcol)
        MOVS     R0,R3
        MOVS     R1,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??img_posedge_4
        B.N      ??img_posedge_5
//  189 		{
//  190 			for( ;endcol <= begincol; endcol++)
??img_posedge_6:
        ADDS     R3,R3,#+1
??img_posedge_5:
        MOVS     R0,R2
        MOVS     R1,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??img_posedge_7
//  191 			{
//  192 				if(!imgbuff[beginrow][endcol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??img_posedge_6
        MOVS     R0,#+0
        B.N      ??img_posedge_2
//  193 			}
//  194 			return 1;
??img_posedge_7:
        MOVS     R0,#+1
        B.N      ??img_posedge_2
//  195 		}
//  196 		else
//  197 		{
//  198 			for( ;begincol <= endcol ; begincol++)
??img_posedge_8:
        ADDS     R2,R2,#+1
??img_posedge_4:
        MOVS     R0,R3
        MOVS     R1,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??img_posedge_9
//  199 			{
//  200 				if(!imgbuff[beginrow][begincol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??img_posedge_8
        MOVS     R0,#+0
        B.N      ??img_posedge_2
//  201 			}
//  202 			return 1;
??img_posedge_9:
        MOVS     R0,#+1
        B.N      ??img_posedge_2
//  203 		}
//  204 	}
//  205 	else if(begincol == endcol)//检测横向列坐标亮度
??img_posedge_3:
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BNE.N    ??img_posedge_10
//  206 	{
//  207 		if(beginrow > endrow)
        MOVS     R0,R1
        MOVS     R3,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BGE.N    ??img_posedge_11
        B.N      ??img_posedge_12
//  208 		{
//  209 			for( ;beginrow >= endrow;beginrow--)
??img_posedge_13:
        SUBS     R4,R4,#+1
??img_posedge_12:
        MOVS     R0,R4
        MOVS     R3,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BLT.N    ??img_posedge_14
//  210 			{
//  211 				if(!imgbuff[beginrow][begincol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R3,#+80
        SMULBB   R3,R4,R3
        ADD      R0,R0,R3
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRB     R0,[R0, R3]
        CMP      R0,#+0
        BNE.N    ??img_posedge_13
        MOVS     R0,#+0
        B.N      ??img_posedge_2
//  212 			}
//  213 			return 1;
??img_posedge_14:
        MOVS     R0,#+1
        B.N      ??img_posedge_2
//  214 		}
//  215 		else
//  216 		{
//  217 			for( ;endrow >= beginrow;endrow--)
??img_posedge_15:
        SUBS     R1,R1,#+1
??img_posedge_11:
        MOVS     R0,R1
        MOVS     R3,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BLT.N    ??img_posedge_16
//  218 			{
//  219 				if(!imgbuff[endrow][begincol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R3,#+80
        SMULBB   R3,R1,R3
        ADD      R0,R0,R3
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRB     R0,[R0, R3]
        CMP      R0,#+0
        BNE.N    ??img_posedge_15
        MOVS     R0,#+0
        B.N      ??img_posedge_2
//  220 			}
//  221 			return 1;
??img_posedge_16:
        MOVS     R0,#+1
        B.N      ??img_posedge_2
//  222 		}
//  223 	}
//  224 	return 0;
??img_posedge_10:
        MOVS     R0,#+0
??img_posedge_2:
        POP      {R4,R5}
        BX       LR               ;; return
//  225 }
//  226 //图像下降沿

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 uint8 img_negedge(int16 beginrow,int16 endrow,int16 begincol,int16 endcol)//下降沿
//  228 {
img_negedge:
        PUSH     {R4,R5}
        MOVS     R4,R0
//  229 	if(beginrow == endrow && begincol == endcol)//检测一个点的亮度值
        MOVS     R0,R4
        MOVS     R5,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??img_negedge_0
        MOVS     R0,R2
        MOVS     R5,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??img_negedge_0
//  230 	{
//  231 		if(!imgbuff[beginrow][begincol]) { return 1; } 
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??img_negedge_1
        MOVS     R0,#+1
        B.N      ??img_negedge_2
//  232 		return 0;
??img_negedge_1:
        MOVS     R0,#+0
        B.N      ??img_negedge_2
//  233 	}
//  234 	else if(beginrow == endrow)//检测纵向行坐标亮度
??img_negedge_0:
        MOVS     R0,R4
        MOVS     R5,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??img_negedge_3
//  235 	{
//  236 		if(begincol > endcol)
        MOVS     R0,R3
        MOVS     R1,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??img_negedge_4
        B.N      ??img_negedge_5
//  237 		{
//  238 			for( ;endcol <= begincol; endcol++)
??img_negedge_6:
        ADDS     R3,R3,#+1
??img_negedge_5:
        MOVS     R0,R2
        MOVS     R1,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??img_negedge_7
//  239 			{
//  240 				if(imgbuff[beginrow][endcol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BEQ.N    ??img_negedge_6
        MOVS     R0,#+0
        B.N      ??img_negedge_2
//  241 			}
//  242 			return 1;
??img_negedge_7:
        MOVS     R0,#+1
        B.N      ??img_negedge_2
//  243 		}
//  244 		else
//  245 		{
//  246 			for( ;begincol <= endcol ; begincol++)
??img_negedge_8:
        ADDS     R2,R2,#+1
??img_negedge_4:
        MOVS     R0,R3
        MOVS     R1,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??img_negedge_9
//  247 			{
//  248 				if(imgbuff[beginrow][begincol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R2
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BEQ.N    ??img_negedge_8
        MOVS     R0,#+0
        B.N      ??img_negedge_2
//  249 			}
//  250 			return 1;
??img_negedge_9:
        MOVS     R0,#+1
        B.N      ??img_negedge_2
//  251 		}
//  252 	}
//  253 	else if(begincol == endcol)//检测横向列坐标亮度
??img_negedge_3:
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BNE.N    ??img_negedge_10
//  254 	{
//  255 		if(beginrow > endrow)
        MOVS     R0,R1
        MOVS     R3,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BGE.N    ??img_negedge_11
        B.N      ??img_negedge_12
//  256 		{
//  257 			for( ;beginrow >= endrow;beginrow--)
??img_negedge_13:
        SUBS     R4,R4,#+1
??img_negedge_12:
        MOVS     R0,R4
        MOVS     R3,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BLT.N    ??img_negedge_14
//  258 			{
//  259 				if(imgbuff[beginrow][begincol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R3,#+80
        SMULBB   R3,R4,R3
        ADD      R0,R0,R3
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRB     R0,[R0, R3]
        CMP      R0,#+0
        BEQ.N    ??img_negedge_13
        MOVS     R0,#+0
        B.N      ??img_negedge_2
//  260 			}
//  261 			return 1;
??img_negedge_14:
        MOVS     R0,#+1
        B.N      ??img_negedge_2
//  262 		}
//  263 		else
//  264 		{
//  265 			for( ;endrow >= beginrow;endrow--)
??img_negedge_15:
        SUBS     R1,R1,#+1
??img_negedge_11:
        MOVS     R0,R1
        MOVS     R3,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BLT.N    ??img_negedge_16
//  266 			{
//  267 				if(imgbuff[endrow][begincol]) { return 0;}
        LDR.W    R0,??DataTable11_6
        MOVS     R3,#+80
        SMULBB   R3,R1,R3
        ADD      R0,R0,R3
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRB     R0,[R0, R3]
        CMP      R0,#+0
        BEQ.N    ??img_negedge_15
        MOVS     R0,#+0
        B.N      ??img_negedge_2
//  268 			}
//  269 			return 1;
??img_negedge_16:
        MOVS     R0,#+1
        B.N      ??img_negedge_2
//  270 		}
//  271 	}
//  272 	return 0;
??img_negedge_10:
        MOVS     R0,#+0
??img_negedge_2:
        POP      {R4,R5}
        BX       LR               ;; return
//  273 }
//  274 /*  
//  275  *  初始行中点定位  返回值 非负数 定位成功
//  276  *         -1 ：定位失败，底行丢线
//  277  *         -2 ：确认为斑马线则从两边搜索初始点
//  278  */    

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  279 int16 GetFirstCenter()
//  280 {
GetFirstCenter:
        PUSH     {R0-R6,LR}
//  281 	int16 i,j;
//  282 	int16 edge = 0;
        MOVS     R1,#+0
//  283 	//首行检测斑马线
//  284 	for (i = IMG_BOTTOM; i >= IMG_BOTTOM - 3; i--)
        MOVS     R2,#+69
        B.N      ??GetFirstCenter_0
//  285 	{
//  286 		for (j = IMG_LEFT; j < IMG_RIGHT; j++)
//  287 		{
//  288 			if ((WHITE == imgbuff[i][j] && BLACK == imgbuff[i][j + 1]) || (BLACK == imgbuff[i][j] && WHITE == imgbuff[i][j + 1]))
??GetFirstCenter_1:
        MOVS     R4,#+80
        LDR.W    R5,??DataTable11_6
        SMULBB   R0,R2,R4
        ADD      R0,R5,R0
        MOVS     R6,R3
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRB     R0,[R0, R6]
        CMP      R0,#+255
        BNE.N    ??GetFirstCenter_2
        SMULBB   R0,R2,R4
        ADD      R0,R5,R0
        MOVS     R6,R3
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ADD      R0,R0,R6
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??GetFirstCenter_3
??GetFirstCenter_2:
        SMULBB   R0,R2,R4
        ADD      R0,R5,R0
        MOVS     R6,R3
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRB     R0,[R0, R6]
        CMP      R0,#+0
        BNE.N    ??GetFirstCenter_4
        SMULBB   R0,R2,R4
        ADD      R0,R5,R0
        MOVS     R4,R3
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADD      R0,R0,R4
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BNE.N    ??GetFirstCenter_4
//  289 			{
//  290 				edge++;
??GetFirstCenter_3:
        ADDS     R1,R1,#+1
//  291 			}
//  292 		}
??GetFirstCenter_4:
        ADDS     R3,R3,#+1
??GetFirstCenter_5:
        MOVS     R0,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+158
        BLT.N    ??GetFirstCenter_1
        SUBS     R2,R2,#+1
??GetFirstCenter_0:
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+66
        BLT.N    ??GetFirstCenter_6
        MOVS     R3,#+1
        B.N      ??GetFirstCenter_5
//  293 	}
//  294 
//  295 	if (edge >= 25)
??GetFirstCenter_6:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+25
        BLT.N    ??GetFirstCenter_7
//  296 	{
//  297 		return -2;
        MVNS     R0,#+1
        B.N      ??GetFirstCenter_8
//  298 	}
//  299 
//  300 	const int16 sub[] = {59,99,39,119,19,139,IMG_LEFT,IMG_RIGHT};
??GetFirstCenter_7:
        MOV      R0,SP
        LDR.W    R1,??DataTable13
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
//  301         
//  302 	for (i = IMG_BOTTOM; i >= IMG_BOTTOM - 3; i--)
        MOVS     R0,#+69
        B.N      ??GetFirstCenter_9
??GetFirstCenter_10:
        SUBS     R0,R0,#+1
??GetFirstCenter_9:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+66
        BLT.N    ??GetFirstCenter_11
//  303 	{
//  304 		if (WHITE == imgbuff[IMG_BOTTOM][IMG_COL_CENTER])
        LDR.W    R2,??DataTable11_6
        MOVW     R1,#+5599
        LDRB     R1,[R2, R1]
        CMP      R1,#+255
        BEQ.N    ??GetFirstCenter_12
//  305 		{ return IMG_COL_CENTER; }
//  306 		else
//  307 		{
//  308 			for (j = 0; j < 8; j++)
??GetFirstCenter_13:
        MOVS     R1,#+0
        B.N      ??GetFirstCenter_14
??GetFirstCenter_12:
        MOVS     R0,#+79
        B.N      ??GetFirstCenter_8
??GetFirstCenter_15:
        ADDS     R1,R1,#+1
??GetFirstCenter_14:
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,#+8
        BGE.N    ??GetFirstCenter_10
//  309 			{
//  310 				if (WHITE == imgbuff[i][sub[j]])
        MOV      R3,SP
        MOVS     R4,#+80
        SMULBB   R4,R0,R4
        ADD      R4,R2,R4
        MOVS     R5,R1
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LDRSH    R5,[R3, R5, LSL #+1]
        LDRB     R4,[R4, R5]
        CMP      R4,#+255
        BNE.N    ??GetFirstCenter_15
//  311 				{ return sub[j]; }
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R0,[R3, R1, LSL #+1]
        B.N      ??GetFirstCenter_8
//  312 			}
//  313 		}
//  314 	}
//  315 	
//  316 	return -1;
??GetFirstCenter_11:
        MOVS     R0,#-1
??GetFirstCenter_8:
        ADD      SP,SP,#+16
        POP      {R4-R6,PC}       ;; return
//  317 }
//  318 
//  319 
//  320 //横向扫描，得到列值，方向：左

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  321 int16 get_left(int16 row, int16 col, int16 range)
//  322 {
get_left:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
//  323 	const int16 SearchPixels = 2;
        MOVS     R6,#+2
//  324 	if (WHITE == imgbuff[row][col])//寻找下降沿
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+255
        BNE.N    ??get_left_0
        B.N      ??get_left_1
//  325 	{
//  326 		for (; col >= IMG_LEFT; col--)
??get_left_2:
        SUBS     R5,R5,#+1
??get_left_1:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BLT.N    ??get_left_3
//  327 		{
//  328 			if (1 == img_negedge(row, row, Max(col - 1, IMG_LEFT), Max(col - SearchPixels, IMG_LEFT)))
        MOVS     R1,#+1
        SUBS     R0,R5,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOVS     R7,R0
        MOVS     R1,#+1
        SUBS     R0,R5,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOVS     R3,R7
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       img_negedge
        CMP      R0,#+1
        BNE.N    ??get_left_2
//  329 			{ return col; }
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??get_left_4
//  330 		}
//  331 		return IMG_LEFT;
??get_left_3:
        MOVS     R0,#+1
        B.N      ??get_left_4
//  332 	}
//  333 	else//寻找上升沿
//  334 	{
//  335 		for (; col <= Min(range, IMG_RIGHT); col++)
??get_left_5:
        ADDS     R5,R5,#+1
??get_left_0:
        MOVS     R1,#+158
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??get_left_6
//  336 		{
//  337 			if (1 == img_posedge(row, row, Min(col + 1, IMG_RIGHT), Min(col + SearchPixels, IMG_RIGHT)))
        MOVS     R1,#+158
        ADDS     R0,R6,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOV      R8,R0
        MOVS     R1,#+158
        ADDS     R0,R5,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOV      R3,R8
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       img_posedge
        CMP      R0,#+1
        BNE.N    ??get_left_5
//  338 			{ return Min(col + 1, IMG_RIGHT); }
        MOVS     R1,#+158
        ADDS     R5,R5,#+1
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        B.N      ??get_left_4
//  339 		}
//  340 	}
//  341 	return -1;
??get_left_6:
        MOVS     R0,#-1
??get_left_4:
        POP      {R4-R8,PC}       ;; return
//  342 }
//  343 
//  344 //横向扫描，得到列值，方向：右

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 int16 get_right(int16 row, int16 col, int16 range)
//  346 {
get_right:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
//  347 	const int16 SearchPixels = 2;
        MOVS     R6,#+2
//  348 	if (WHITE == imgbuff[row][col])//寻找下降沿
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+255
        BNE.N    ??get_right_0
        B.N      ??get_right_1
//  349 	{
//  350 		for (; col <= IMG_RIGHT; col++)
??get_right_2:
        ADDS     R5,R5,#+1
??get_right_1:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+159
        BGE.N    ??get_right_3
//  351 		{
//  352 			if (1 == img_negedge(row, row, Min(col + 1, IMG_RIGHT), Min(col + SearchPixels, IMG_RIGHT)))
        MOVS     R1,#+158
        ADDS     R0,R6,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOVS     R7,R0
        MOVS     R1,#+158
        ADDS     R0,R5,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOVS     R3,R7
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       img_negedge
        CMP      R0,#+1
        BNE.N    ??get_right_2
//  353 			{ return col; }
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??get_right_4
//  354 		}
//  355 		return IMG_RIGHT;
??get_right_3:
        MOVS     R0,#+158
        B.N      ??get_right_4
//  356 	}
//  357 	else//寻找上升沿
//  358 	{
//  359 		for (; col >= Max(range, IMG_LEFT); col--)
??get_right_5:
        SUBS     R5,R5,#+1
??get_right_0:
        MOVS     R1,#+1
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??get_right_6
//  360 		{
//  361 			if (1 == img_posedge(row, row, Max(col - 1, IMG_LEFT), Max(col - SearchPixels, IMG_LEFT)))
        MOVS     R1,#+1
        SUBS     R0,R5,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R8,R0
        MOVS     R1,#+1
        SUBS     R0,R5,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R3,R8
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       img_posedge
        CMP      R0,#+1
        BNE.N    ??get_right_5
//  362 			{ return Max(col - 1, IMG_LEFT); }
        MOVS     R1,#+1
        SUBS     R0,R5,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        B.N      ??get_right_4
//  363 		}
//  364 	}
//  365 	return -1;
??get_right_6:
        MOVS     R0,#-1
??get_right_4:
        POP      {R4-R8,PC}       ;; return
//  366 }
//  367 
//  368 //纵向扫描，得到行值，方向：向上

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  369 int16 get_height(int16 row, int16 col, int16 range)
//  370 {
get_height:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  371 	int16 SearchPixels;
//  372 	//滤除噪点
//  373 	if (col == IMG_LEFT || col == IMG_RIGHT || col == IMG_COL_CENTER)
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BEQ.N    ??get_height_0
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+158
        BEQ.N    ??get_height_0
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+79
        BNE.N    ??get_height_1
//  374 	{ SearchPixels = 3; }
??get_height_0:
        MOVS     R7,#+3
        B.N      ??get_height_2
//  375 	else
//  376 	{ SearchPixels = 1; }
??get_height_1:
        MOVS     R7,#+1
//  377 	if (WHITE == imgbuff[row][col])//寻找下降沿
??get_height_2:
        LDR.W    R0,??DataTable11_6
        MOVS     R1,#+80
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRB     R0,[R0, R1]
        CMP      R0,#+255
        BNE.N    ??get_height_3
        B.N      ??get_height_4
//  378 	{
//  379 		for (; row >= range; row--)
??get_height_5:
        SUBS     R4,R4,#+1
??get_height_4:
        MOVS     R0,R4
        MOVS     R1,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??get_height_6
//  380 		{
//  381 			if (1 == img_negedge(Max(row - 1, range), Max(row - SearchPixels, range), col, col))//下降沿
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R0,R4,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R8,R0
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R0,R4,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOVS     R3,R5
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOVS     R2,R5
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOV      R1,R8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       img_negedge
        CMP      R0,#+1
        BNE.N    ??get_height_5
//  382 			{ return row; }
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??get_height_7
//  383 		}
//  384 		return range;
??get_height_6:
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??get_height_7
//  385 	}
//  386 	else//寻找上升沿
//  387 	{
//  388 		for (; row <= IMG_BOTTOM; row++)
??get_height_8:
        ADDS     R4,R4,#+1
??get_height_3:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+70
        BGE.N    ??get_height_9
//  389 		{
//  390 			if (1 == img_posedge(Min(row + 1, IMG_BOTTOM), Min(row + SearchPixels, IMG_BOTTOM), col, col))//上升沿
        MOVS     R1,#+69
        ADDS     R0,R7,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOVS     R6,R0
        MOVS     R1,#+69
        ADDS     R0,R4,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        MOVS     R3,R5
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOVS     R2,R5
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       img_posedge
        CMP      R0,#+1
        BNE.N    ??get_height_8
//  391 			{ return Min(row + 1, IMG_BOTTOM); }
        MOVS     R1,#+69
        ADDS     R4,R4,#+1
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Min
        B.N      ??get_height_7
//  392 		}
//  393 	}
//  394 	return IMG_BOTTOM;
??get_height_9:
        MOVS     R0,#+69
??get_height_7:
        POP      {R4-R8,PC}       ;; return
//  395 }
//  396 
//  397 
//  398 /*
//  399  *  通过宽度横向搜索左边缘
//  400  *  如果搜索到图像最顶端、底端则判定失败
//  401  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  402 int16 SearchLeftEdgeByHeight(int16 row, int16 col)
//  403 {
SearchLeftEdgeByHeight:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  404 	if (IMG_TOP == row)
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BNE.N    ??SearchLeftEdgeByHeight_0
//  405 	{ return -1; }
        MOVS     R0,#-1
        B.N      ??SearchLeftEdgeByHeight_1
//  406 	int16 temp_row = row;
??SearchLeftEdgeByHeight_0:
        MOVS     R0,R4
        B.N      ??SearchLeftEdgeByHeight_2
//  407 	for (; col <= IMG_RIGHT; col++)
//  408 	{
//  409 		temp_row = get_height(temp_row, col, IMG_TOP);
//  410 		if (temp_row <= row)
//  411 		{ return col; }
//  412 		if (IMG_TOP == temp_row)
??SearchLeftEdgeByHeight_3:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+10
        BEQ.N    ??SearchLeftEdgeByHeight_4
//  413 		{ return -1; }
//  414 		if (IMG_BOTTOM == temp_row)
??SearchLeftEdgeByHeight_5:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+69
        BEQ.N    ??SearchLeftEdgeByHeight_6
??SearchLeftEdgeByHeight_7:
        ADDS     R5,R5,#+1
??SearchLeftEdgeByHeight_2:
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+159
        BGE.N    ??SearchLeftEdgeByHeight_8
        MOVS     R2,#+10
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOVS     R1,R4
        MOVS     R2,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BLT.N    ??SearchLeftEdgeByHeight_3
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??SearchLeftEdgeByHeight_1
??SearchLeftEdgeByHeight_4:
        MOVS     R0,#-1
        B.N      ??SearchLeftEdgeByHeight_1
//  415 		{ return -1; }
??SearchLeftEdgeByHeight_6:
        MOVS     R0,#-1
        B.N      ??SearchLeftEdgeByHeight_1
//  416 	}
//  417 	return -1;
??SearchLeftEdgeByHeight_8:
        MOVS     R0,#-1
??SearchLeftEdgeByHeight_1:
        POP      {R1,R4,R5,PC}    ;; return
//  418 }
//  419 /*
//  420  * 通过宽度横向搜索右边缘
//  421  * 如果搜索到图像最顶端、底端则判定失败
//  422  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  423 int16 SearchRightEdgeByHeight(int16 row, int16 col)
//  424 {
SearchRightEdgeByHeight:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  425 	if (IMG_TOP == row)
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BNE.N    ??SearchRightEdgeByHeight_0
//  426 	{ return -1; }
        MOVS     R0,#-1
        B.N      ??SearchRightEdgeByHeight_1
//  427 	int16 temp_row = row;
??SearchRightEdgeByHeight_0:
        MOVS     R0,R4
        B.N      ??SearchRightEdgeByHeight_2
//  428 	for (; col >= IMG_LEFT; col--)
//  429 	{
//  430 		temp_row = get_height(temp_row, col, IMG_TOP);
//  431 		if (temp_row <= row)
//  432 		{ return col; }
//  433 		if (IMG_TOP == temp_row)
??SearchRightEdgeByHeight_3:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+10
        BEQ.N    ??SearchRightEdgeByHeight_4
//  434 		{ return -1; }
//  435 		if (IMG_BOTTOM == temp_row)
??SearchRightEdgeByHeight_5:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+69
        BEQ.N    ??SearchRightEdgeByHeight_6
??SearchRightEdgeByHeight_7:
        SUBS     R5,R5,#+1
??SearchRightEdgeByHeight_2:
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BLT.N    ??SearchRightEdgeByHeight_8
        MOVS     R2,#+10
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOVS     R1,R4
        MOVS     R2,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BLT.N    ??SearchRightEdgeByHeight_3
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??SearchRightEdgeByHeight_1
??SearchRightEdgeByHeight_4:
        MOVS     R0,#-1
        B.N      ??SearchRightEdgeByHeight_1
//  436 		{ return -1; }
??SearchRightEdgeByHeight_6:
        MOVS     R0,#-1
        B.N      ??SearchRightEdgeByHeight_1
//  437 	}
//  438 	return -1;
??SearchRightEdgeByHeight_8:
        MOVS     R0,#-1
??SearchRightEdgeByHeight_1:
        POP      {R1,R4,R5,PC}    ;; return
//  439 }
//  440 /*
//  441  * 边缘滤波，删除交叉边缘区域
//  442  * 更变截至行
//  443  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  444 void EdgeFilter(void)
//  445 {
EdgeFilter:
        PUSH     {R4,R5}
//  446 	for (int16 i = IMG_BOTTOM; i >= IMG_TOP; i--)
        MOVS     R0,#+69
        B.N      ??EdgeFilter_0
??EdgeFilter_1:
        SUBS     R0,R0,#+1
??EdgeFilter_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+10
        BLT.N    ??EdgeFilter_2
//  447 	{
//  448 		if (i >= row_left_end && i >= row_right_end && leftEdge[i] > rightEdge[i])
        LDR.W    R1,??DataTable11_3
        MOVS     R2,R0
        LDRSH    R3,[R1, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,R3
        BLT.N    ??EdgeFilter_1
        LDR.W    R2,??DataTable11_5
        MOVS     R3,R0
        LDRSH    R4,[R2, #+0]
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R3,R4
        BLT.N    ??EdgeFilter_1
        LDR.W    R3,??DataTable14
        MOVS     R4,R0
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRSH    R3,[R3, R4, LSL #+1]
        LDR.W    R4,??DataTable15
        MOVS     R5,R0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LDRSH    R4,[R4, R5, LSL #+1]
        CMP      R3,R4
        BGE.N    ??EdgeFilter_1
//  449 		{
//  450 			row_left_end = i + 1;
        ADDS     R3,R0,#+1
        STRH     R3,[R1, #+0]
//  451 			row_right_end = i + 1;
        ADDS     R0,R0,#+1
        STRH     R0,[R2, #+0]
//  452 			break;
//  453 		}
//  454 	}
//  455 }
??EdgeFilter_2:
        POP      {R4,R5}
        BX       LR               ;; return
//  456 
//  457 /*
//  458  *  查找左边正常趋势初始位置
//  459  *  
//  460  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  461 int16 SearchLeftTendency(int16 row)
//  462 {
SearchLeftTendency:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  463 	if (IMG_BOTTOM == row)
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+69
        BNE.N    ??SearchLeftTendency_0
//  464 	{
//  465 		return -1;
        MOVS     R0,#-1
        B.N      ??SearchLeftTendency_1
//  466 	}
//  467 	for (; row > row_left_end + 2; row--)
??SearchLeftTendency_2:
        SUBS     R4,R4,#+1
??SearchLeftTendency_0:
        LDR.W    R0,??DataTable11_3
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+2
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchLeftTendency_3
//  468 	{
//  469 		if (1 == JudgeNumInterval((leftEdge[row] - leftEdge[row - 1]), -1, -5) && 1 == JudgeNumInterval((leftEdge[row - 1] - leftEdge[row - 2]), -1, -5))
        LDR.W    R5,??DataTable15
        MVNS     R6,#+4
        MOVS     R2,R6
        MOVS     R1,#-1
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R5, R0, LSL #+1]
        MOVS     R3,R4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        ADD      R3,R5,R3, LSL #+1
        LDRH     R3,[R3, #-2]
        SUBS     R0,R0,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??SearchLeftTendency_2
        MOVS     R2,R6
        MOVS     R1,#-1
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R5,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        MOVS     R3,R4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        ADD      R3,R5,R3, LSL #+1
        LDRH     R3,[R3, #-4]
        SUBS     R0,R0,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??SearchLeftTendency_2
//  470 		{
//  471 			return row;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??SearchLeftTendency_1
//  472 		}
//  473 	}
//  474 
//  475 	return -1;
??SearchLeftTendency_3:
        MOVS     R0,#-1
??SearchLeftTendency_1:
        POP      {R4-R6,PC}       ;; return
//  476 }
//  477 /*
//  478  *  查找右边正常趋势初始位置
//  479  * 
//  480  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 int16 SearchRightTendency(int16 row)
//  482 {
SearchRightTendency:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  483 	if (IMG_BOTTOM == row)
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+69
        BNE.N    ??SearchRightTendency_0
//  484 	{
//  485 		return -1;
        MOVS     R0,#-1
        B.N      ??SearchRightTendency_1
//  486 	}
//  487 	for (; row > row_right_end + 2; row--)
??SearchRightTendency_2:
        SUBS     R4,R4,#+1
??SearchRightTendency_0:
        LDR.W    R0,??DataTable11_5
        LDRSH    R0,[R0, #+0]
        ADDS     R0,R0,#+2
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchRightTendency_3
//  488 	{
//  489 		if (1 == JudgeNumInterval((rightEdge[row] - rightEdge[row - 1]), 5, 1) && 1 == JudgeNumInterval((rightEdge[row - 1] - rightEdge[row - 2]), 5, 1))
        LDR.W    R5,??DataTable15_1
        MOVS     R2,#+1
        MOVS     R1,#+5
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R5, R0, LSL #+1]
        MOVS     R3,R4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        ADD      R3,R5,R3, LSL #+1
        LDRH     R3,[R3, #-2]
        SUBS     R0,R0,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??SearchRightTendency_2
        MOVS     R2,#+1
        MOVS     R1,#+5
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R5,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        MOVS     R3,R4
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        ADD      R3,R5,R3, LSL #+1
        LDRH     R3,[R3, #-4]
        SUBS     R0,R0,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??SearchRightTendency_2
//  490 		{
//  491 			return row;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??SearchRightTendency_1
//  492 		}
//  493 	}
//  494 
//  495 	return -1;
??SearchRightTendency_3:
        MOVS     R0,#-1
??SearchRightTendency_1:
        POP      {R1,R4,R5,PC}    ;; return
//  496 }
//  497 
//  498 /*  
//  499  *  搜索范围 ：若干像素
//  500  *  初始位置 ：图像底行中心
//  501  *  通过2(x,y)个方向的扫描图像获取边缘
//  502  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  503 void EdgeInit(void)
//  504 {
EdgeInit:
        PUSH     {R4-R10,LR}
//  505 	uint8 row_finished_left = 0;
        MOVS     R4,#+0
//  506 	uint8 row_finished_right = 0;
        MOVS     R5,#+0
//  507 	int16 templeft;
//  508 	int16 tempright;
//  509 	//斑马线
//  510 	if (-2 == fstpoint)
        LDR.N    R0,??DataTable10_1
        LDRSH    R1,[R0, #+0]
        CMN      R1,#+2
        BNE.N    ??EdgeInit_0
//  511 	{
//  512 		templeft = get_left(IMG_BOTTOM, IMG_LEFT, IMG_RIGHT);
        MOVS     R2,#+158
        MOVS     R1,#+1
        MOVS     R0,#+69
        BL       get_left
        MOVS     R6,R0
//  513 		if (-1 == templeft)
        MOVS     R0,R6
        MOVS     R1,#-1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BNE.N    ??EdgeInit_1
//  514 		{
//  515 			templeft = IMG_COL_CENTER;
        MOVS     R6,#+79
//  516 		}
//  517 		tempright = get_right(IMG_BOTTOM, IMG_RIGHT, IMG_LEFT);
??EdgeInit_1:
        MOVS     R2,#+1
        MOVS     R1,#+158
        MOVS     R0,#+69
        BL       get_right
        MOVS     R7,R0
//  518 		if (-1 == tempright)
        MOVS     R0,R7
        MOVS     R1,#-1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BNE.N    ??EdgeInit_2
//  519 		{
//  520 			tempright = IMG_COL_CENTER;
        MOVS     R7,#+79
        B.N      ??EdgeInit_2
//  521 		}
//  522 	}
//  523 	else
//  524 	{
//  525 		templeft = fstpoint;
??EdgeInit_0:
        LDRSH    R6,[R0, #+0]
//  526 		tempright = fstpoint;
        LDRSH    R7,[R0, #+0]
//  527 	}
//  528 
//  529 	int16 temppreleft = templeft;
//  530 	int16 temppreright = tempright;
//  531 
//  532 	//==============================================上位机更换模块开始==============================================//
//  533 	AlterParam_Clear(IMG_BOTTOM, IMG_TOP, leftEdge, IMG_LEFT);
??EdgeInit_2:
        LDR.W    R8,??DataTable15
        MOVS     R3,#+1
        MOV      R2,R8
        MOVS     R1,#+10
        MOVS     R0,#+69
        BL       AlterParam_Clear
//  534 	AlterParam_Clear(IMG_BOTTOM, IMG_TOP, rightEdge, IMG_RIGHT);
        LDR.W    R9,??DataTable14
        MOVS     R3,#+158
        MOV      R2,R9
        MOVS     R1,#+10
        MOVS     R0,#+69
        BL       AlterParam_Clear
//  535 	AlterParam_Clear(IMG_BOTTOM, IMG_TOP, img_centers, IMG_COL_CENTER);
        MOVS     R3,#+79
        LDR.W    R2,??DataTable15_2
        MOVS     R1,#+10
        MOVS     R0,#+69
        BL       AlterParam_Clear
//  536 	//==============================================首次搜索开始==============================================//
//  537         //（向上搜边缘）
//  538 	int16 i;
//  539 	for (i = IMG_BOTTOM; i >= IMG_TOP; i--)
        MOVS     R10,#+69
        B.N      ??EdgeInit_3
//  540 	{
//  541 		if (0 == row_finished_left)
??EdgeInit_4:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??EdgeInit_5
//  542 		{
//  543 			templeft = get_left(i, temppreleft, temppreleft + (int16)(width_templ[i] / 5));
        LDR.W    R0,??DataTable15_3
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R0,[R0, R1, LSL #+1]
        MOVS     R1,#+5
        SDIV     R2,R0,R1
        ADDS     R2,R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_left
//  544 			if (-1 == templeft)
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??EdgeInit_6
//  545 			{
//  546 				templeft = SearchLeftEdgeByHeight(i, temppreleft);
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       SearchLeftEdgeByHeight
//  547 				if (-1 == templeft)//二次扫描确认丢线结论
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??EdgeInit_6
//  548 				{
//  549 					templeft = temppreleft;
        MOVS     R0,R6
//  550 					row_finished_left = 1;
        MOVS     R4,#+1
//  551 					row_left_end = i;
        LDR.N    R1,??DataTable11_3
        STRH     R10,[R1, #+0]
//  552 				}
//  553 			}
//  554 			temppreleft = templeft;
??EdgeInit_6:
        MOVS     R6,R0
//  555 			leftEdge[i] = temppreleft;
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R8, R0, LSL #+1]
//  556 		}
//  557 		if (0 == row_finished_right)
??EdgeInit_5:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??EdgeInit_7
//  558 		{
//  559 			tempright = get_right(i, temppreright, temppreright - (int16)(width_templ[i] / 5));
        LDR.W    R0,??DataTable15_3
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R0,[R0, R1, LSL #+1]
        MOVS     R1,#+5
        SDIV     R2,R0,R1
        SUBS     R2,R7,R2
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_right
//  560 			if (-1 == tempright)
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??EdgeInit_8
//  561 			{
//  562 				tempright = SearchRightEdgeByHeight(i, temppreright);
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       SearchRightEdgeByHeight
//  563 				if (-1 == tempright)//二次扫描确认丢线结论
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??EdgeInit_8
//  564 				{
//  565 					tempright = temppreright;
        MOVS     R0,R7
//  566 					row_finished_right = 1;
        MOVS     R5,#+1
//  567 					row_right_end = i;
        LDR.N    R1,??DataTable11_5
        STRH     R10,[R1, #+0]
//  568 				}
//  569 			}
//  570 			temppreright = tempright;
??EdgeInit_8:
        MOVS     R7,R0
//  571 			rightEdge[i] = temppreright;
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R7,[R9, R0, LSL #+1]
//  572 		}
//  573 	}
??EdgeInit_7:
        SUBS     R10,R10,#+1
??EdgeInit_3:
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BGE.N    ??EdgeInit_4
//  574 	//==============================================首次搜索结束==============================================//
//  575 
//  576 	EdgeFilter();
        BL       EdgeFilter
//  577 	row_left_begin = get_height(IMG_BOTTOM, leftEdge[IMG_BOTTOM], IMG_TOP);
        MOVS     R2,#+10
        LDRSH    R1,[R8, #+138]
        MOVS     R0,#+69
        BL       get_height
        LDR.N    R1,??DataTable11_2
        STRH     R0,[R1, #+0]
//  578 	row_right_begin = get_height(IMG_BOTTOM, rightEdge[IMG_BOTTOM], IMG_TOP);
        MOVS     R2,#+10
        LDRSH    R1,[R9, #+138]
        MOVS     R0,#+69
        BL       get_height
        LDR.W    R1,??DataTable15_4
        STRH     R0,[R1, #+0]
//  579         
//  580 	//==============================================上位机更换模块结束==============================================//
//  581 }
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DATA32
        DC32     FastVal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DATA32
        DC32     fstpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DATA32
        DC32     leftFold
//  582 
//  583 //向下搜索边缘

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  584 void downSearch(void)
//  585 {
downSearch:
        PUSH     {R3-R9,LR}
//  586 	int16 rowbuf = -1;
        MOVS     R4,#-1
        MOVS     R0,R4
//  587 	int16 colbuf = 0;
        MOVS     R0,#+0
//  588 	int16 precolbuf = 0;
        MOVS     R0,#+0
//  589 	int16 i;
//  590 	rowbuf = SearchLeftTendency(row_left_begin);
        LDR.N    R0,??DataTable11_2
        LDRSH    R0,[R0, #+0]
        BL       SearchLeftTendency
        MOVS     R5,R0
//  591 	if (-1 == rowbuf)
        MOVS     R0,R5
        MOVS     R1,#-1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BEQ.N    ??downSearch_0
//  592 	{
//  593 	}
//  594 	else
//  595 	{
//  596 		int16 temp_row = 0;
        MOVS     R8,#+0
//  597 		colbuf = leftEdge[rowbuf];
        LDR.W    R6,??DataTable15
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R6, R0, LSL #+1]
//  598 		precolbuf = colbuf;
        MOVS     R7,R0
//  599 		for (i = rowbuf; i <= IMG_BOTTOM; i++)
        MOV      R9,R5
        B.N      ??downSearch_1
//  600 		{
//  601 			colbuf = get_left(i, colbuf, IMG_RIGHT);
//  602 			if (-1 == colbuf)
//  603 			{
//  604 				break;
//  605 			}
//  606 			if (precolbuf - colbuf >= 5)
??downSearch_2:
        MOVS     R2,R7
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R2,R2,R1
        CMP      R2,#+5
        BGE.N    ??downSearch_3
//  607 			{
//  608 				temp_row = i;
//  609 				break;
//  610 			}
//  611 			precolbuf = colbuf;
??downSearch_4:
        MOVS     R7,R0
        ADDS     R9,R9,#+1
??downSearch_1:
        MOV      R1,R9
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+70
        BGE.N    ??downSearch_5
        MOVS     R2,#+158
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R9
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_left
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??downSearch_2
        B.N      ??downSearch_5
??downSearch_3:
        MOV      R8,R9
//  612 		}
//  613 		if (temp_row > IMG_TOP)
??downSearch_5:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+11
        BLT.N    ??downSearch_0
//  614 		{
//  615 			for (i = temp_row - 1; i <= IMG_BOTTOM; i++)
        SUBS     R0,R8,#+1
        B.N      ??downSearch_6
//  616 			{
//  617 				if (leftEdge[i] < precolbuf)
??downSearch_7:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R6, R1, LSL #+1]
        MOVS     R2,R7
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BGE.N    ??downSearch_8
//  618 				{
//  619 					leftEdge[i] = precolbuf;
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R7,[R6, R1, LSL #+1]
//  620 				}
//  621 			}
??downSearch_8:
        ADDS     R0,R0,#+1
??downSearch_6:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+70
        BLT.N    ??downSearch_7
//  622 			colbuf = precolbuf;
        MOVS     R1,R7
//  623 			for (i = temp_row - 1; i > rowbuf; i--)
        SUBS     R8,R8,#+1
        B.N      ??downSearch_9
//  624 			{
//  625 				colbuf = get_left(i, colbuf, IMG_RIGHT);
//  626 				if (-1 == colbuf)
//  627 				{
//  628 					colbuf = precolbuf;
//  629 				}
//  630 				else
//  631 				{
//  632 					leftEdge[i] = colbuf;
??downSearch_10:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R1,[R6, R0, LSL #+1]
//  633 					precolbuf = leftEdge[i];
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R7,[R6, R0, LSL #+1]
        B.N      ??downSearch_11
//  634 				}
??downSearch_12:
        MOVS     R2,#+158
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_left
        MOVS     R1,R0
        MOVS     R0,R1
        MOVS     R2,#-1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BNE.N    ??downSearch_10
        MOVS     R1,R7
//  635 			}
??downSearch_11:
        SUBS     R8,R8,#+1
??downSearch_9:
        MOVS     R0,R5
        MOV      R2,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BLT.N    ??downSearch_12
//  636 		}
//  637 	}
//  638 	rowbuf = -1;
//  639 	rowbuf = SearchRightTendency(row_right_begin);
??downSearch_0:
        LDR.N    R0,??DataTable11_4
        LDRSH    R0,[R0, #+0]
        BL       SearchRightTendency
        MOVS     R4,R0
//  640 	if (-1 == rowbuf)
        MOVS     R0,R4
        MOVS     R1,#-1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BEQ.N    ??downSearch_13
//  641 	{
//  642 	}
//  643 	else
//  644 	{
//  645 		int16 temp_row = 0;
        MOVS     R7,#+0
//  646 		colbuf = rightEdge[rowbuf];
        LDR.W    R5,??DataTable15_1
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R5, R0, LSL #+1]
//  647 		precolbuf = colbuf;
        MOVS     R6,R0
//  648 		for (i = rowbuf; i <= IMG_BOTTOM; i++)
        MOV      R8,R4
        B.N      ??downSearch_14
//  649 		{
//  650 			colbuf = get_right(i, colbuf, IMG_LEFT);
//  651 			if (-1 == colbuf)
//  652 			{
//  653 				break;
//  654 			}
//  655 			if (precolbuf - colbuf <= -5)
??downSearch_15:
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R2,R2,R1
        CMN      R2,#+4
        BLT.N    ??downSearch_16
//  656 			{
//  657 				temp_row = i;
//  658 				break;
//  659 			}
//  660 			precolbuf = colbuf;
??downSearch_17:
        MOVS     R6,R0
        ADDS     R8,R8,#+1
??downSearch_14:
        MOV      R1,R8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+70
        BGE.N    ??downSearch_18
        MOVS     R2,#+1
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_right
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??downSearch_15
        B.N      ??downSearch_18
??downSearch_16:
        MOV      R7,R8
//  661 		}
//  662 		if (temp_row > IMG_TOP)
??downSearch_18:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+11
        BLT.N    ??downSearch_13
//  663 		{
//  664 			for (i = temp_row - 1; i <= IMG_BOTTOM; i++)
        SUBS     R0,R7,#+1
        B.N      ??downSearch_19
//  665 			{
//  666 				if (rightEdge[i] > precolbuf)
??downSearch_20:
        MOVS     R1,R6
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R5, R2, LSL #+1]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BGE.N    ??downSearch_21
//  667 				{
//  668 					rightEdge[i] = precolbuf;
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R6,[R5, R1, LSL #+1]
//  669 				}
//  670 			}
??downSearch_21:
        ADDS     R0,R0,#+1
??downSearch_19:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+70
        BLT.N    ??downSearch_20
//  671 			colbuf = precolbuf;
        MOVS     R0,R6
//  672 			for (i = temp_row - 1; i > rowbuf; i--)
        SUBS     R7,R7,#+1
        B.N      ??downSearch_22
//  673 			{
//  674 				colbuf = get_right(i, colbuf, IMG_LEFT);
//  675 				if (-1 == colbuf)
//  676 				{
//  677 					colbuf = precolbuf;
//  678 				}
//  679 				else
//  680 				{
//  681 					rightEdge[i] = colbuf;
??downSearch_23:
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R5, R1, LSL #+1]
//  682 					precolbuf = rightEdge[i];
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R6,[R5, R1, LSL #+1]
        B.N      ??downSearch_24
//  683 				}
??downSearch_25:
        MOVS     R2,#+1
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_right
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??downSearch_23
        MOVS     R0,R6
//  684 			}
??downSearch_24:
        SUBS     R7,R7,#+1
??downSearch_22:
        MOVS     R1,R4
        MOVS     R2,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BLT.N    ??downSearch_25
//  685 		}
//  686 	}
//  687 }
??downSearch_13:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DATA32
        DC32     rightFold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DATA32
        DC32     row_end_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DATA32
        DC32     row_left_begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DATA32
        DC32     row_left_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DATA32
        DC32     row_right_begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DATA32
        DC32     row_right_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DATA32
        DC32     imgbuff
//  688 /*
//  689  *    col1 = n - 1 （折点查找）
//  690  *    col2 = n 
//  691  *    col3 = n + 1
//  692  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  693 int16 get_pointFold(int16 col1,int16 col2,int16 col3)
//  694 {
get_pointFold:
        PUSH     {R4,R5}
//  695 	if((col1 - col2) * (col2 - col3) <= 0 && !(0 == (col1 - col2) && 0 == (col2 - col3)))
        MOVS     R4,R0
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SUBS     R4,R4,R3
        MOVS     R5,R1
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SUBS     R5,R5,R3
        MULS     R4,R5,R4
        CMP      R4,#+1
        BGE.N    ??get_pointFold_0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SUBS     R0,R0,R3
        CMP      R0,#+0
        BNE.N    ??get_pointFold_1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SUBS     R1,R1,R2
        CMP      R1,#+0
        BEQ.N    ??get_pointFold_0
//  696 	{ return 1;}
??get_pointFold_1:
        MOVS     R0,#+1
        B.N      ??get_pointFold_2
//  697 	return -1;
??get_pointFold_0:
        MOVS     R0,#-1
??get_pointFold_2:
        POP      {R4,R5}
        BX       LR               ;; return
//  698 }
//  699 
//  700 /* 
//  701  * 赛道尖锐角函数设计思路：结合数学方法，几何方法将大大提升判断准确率
//  702  * 1.必须具有边缘斜率折点的特性；
//  703  * 2.在有折点的基础上,必须具有高度差的特性（差值根据摄像头畸变阶梯倾斜度界定）；
//  704  * 3.在有折点的基础上,必须有一定的宽度差特性（差值根据摄像头畸变阶梯倾斜度界定）；
//  705  * 综上则可视为赛道尖锐角
//  706  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  707 int16 GetEdgeInflex(int16 begin, int16 end, int16 p[],uint8 dir)
//  708 {
GetEdgeInflex:
        PUSH     {R3-R11,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  709 	int16 i = begin;
        MOV      R8,R4
//  710 	int16 col_buf[3];
//  711 	int16 width_buf[3];
//  712 	int16 tempHeight = 0;
        MOVS     R0,#+0
//  713 	int16 tempFlod = 0;
        MOVS     R0,#+0
//  714 	int16 tempcolSum = 0;
        MOVS     R0,#+0
//  715 	int16 array_len = begin - end + 1;
        SUBS     R0,R4,R5
        ADDS     R0,R0,#+1
//  716 	if (array_len < 3)
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BGE.N    ??GetEdgeInflex_0
//  717 	{ return 0; }
        MOVS     R0,#+0
        B.N      ??GetEdgeInflex_1
//  718 	for (; i >= end; i--)
//  719 	{
//  720 		if (i < end + 3)
//  721 		{ return 0; }
//  722 		col_buf[0] = p[i - 3];
//  723 		col_buf[1] = p[i - 2];
//  724 		col_buf[2] = p[i - 1];
//  725 		width_buf[0] = p[i] - col_buf[0];
//  726 		width_buf[1] = p[i] - col_buf[1];
//  727 		width_buf[2] = p[i] - col_buf[2];
//  728 		tempcolSum = width_buf[0] + width_buf[1] + width_buf[2];
//  729 		if (i < begin && i > end)
//  730 		{
//  731 			tempHeight = i + 1 - (get_height(i + 1, p[i], IMG_TOP));
//  732 			tempFlod = get_pointFold(p[i - 1], p[i], p[i + 1]);
//  733 			if (IMG_LEFT == dir)
//  734 			{
//  735 				if (1 == tempFlod && tempHeight >= 4 && tempcolSum >= 6)
//  736 				{
//  737 					if (p[i] <= IMG_LEFT || p[i] >= IMG_RIGHT)
//  738 					{ return i + 1; }
//  739 					return i;
//  740 				}
//  741 				else if (1 == tempFlod && width_buf[2] >= 16)
//  742 				{ return i; }
//  743 			}
//  744 			else if (IMG_RIGHT == dir)
//  745 			{
//  746 				if (1 == tempFlod && tempHeight >= 4 && tempcolSum <= -6)
//  747 				{
//  748 					if (p[i] <= IMG_LEFT || p[i] >= IMG_RIGHT)
//  749 					{ return i + 1; }
//  750 					return i;
//  751 				}
//  752 				else if (1 == tempFlod && width_buf[2] <= -16)
??GetEdgeInflex_2:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.N    ??GetEdgeInflex_3
        LDRSH    R0,[R9, #+4]
        CMN      R0,#+15
        BLT.W    ??GetEdgeInflex_4
??GetEdgeInflex_3:
        SUBS     R8,R8,#+1
??GetEdgeInflex_0:
        MOV      R0,R8
        MOVS     R1,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??GetEdgeInflex_5
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADDS     R1,R1,#+3
        CMP      R0,R1
        BLT.W    ??GetEdgeInflex_6
??GetEdgeInflex_7:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R6,R0, LSL #+1
        LDRSH    R0,[R0, #-6]
        STRH     R0,[SP, #+8]
        ADD      R1,SP,#+8
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R6,R0, LSL #+1
        LDRH     R0,[R0, #-4]
        STRH     R0,[R1, #+2]
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R6,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        STRH     R0,[R1, #+4]
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R2,[R6, R0, LSL #+1]
        LDRH     R0,[SP, #+8]
        SUBS     R2,R2,R0
        STRH     R2,[SP, #+0]
        MOV      R9,SP
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R2,[R6, R0, LSL #+1]
        LDRH     R0,[R1, #+2]
        SUBS     R2,R2,R0
        STRH     R2,[R9, #+2]
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R2,[R6, R0, LSL #+1]
        LDRH     R0,[R1, #+4]
        SUBS     R2,R2,R0
        STRH     R2,[R9, #+4]
        LDRH     R10,[SP, #+0]
        LDRH     R0,[R9, #+2]
        ADDS     R10,R0,R10
        LDRH     R0,[R9, #+4]
        ADDS     R10,R0,R10
        MOV      R0,R8
        MOVS     R1,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??GetEdgeInflex_3
        MOVS     R0,R5
        MOV      R1,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??GetEdgeInflex_3
        ADDS     R11,R8,#+1
        MOVS     R2,#+10
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R6, R0, LSL #+1]
        ADDS     R0,R8,#+1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        SUBS     R11,R11,R0
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R6,R0, LSL #+1
        LDRSH    R2,[R0, #+2]
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R6, R0, LSL #+1]
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R6,R0, LSL #+1
        LDRSH    R0,[R0, #-2]
        BL       get_pointFold
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??GetEdgeInflex_8
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BNE.N    ??GetEdgeInflex_9
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R11,#+4
        BLT.N    ??GetEdgeInflex_9
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R10,#+6
        BGE.N    ??GetEdgeInflex_10
??GetEdgeInflex_9:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.W    ??GetEdgeInflex_3
        LDRSH    R0,[R9, #+4]
        CMP      R0,#+16
        BLT.W    ??GetEdgeInflex_3
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??GetEdgeInflex_1
??GetEdgeInflex_6:
        MOVS     R0,#+0
        B.N      ??GetEdgeInflex_1
??GetEdgeInflex_10:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R6, R0, LSL #+1]
        SUBS     R0,R0,#+2
        CMP      R0,#+156
        BCC.N    ??GetEdgeInflex_11
        ADDS     R8,R8,#+1
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??GetEdgeInflex_1
??GetEdgeInflex_11:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??GetEdgeInflex_1
??GetEdgeInflex_8:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+158
        BNE.W    ??GetEdgeInflex_3
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BNE.W    ??GetEdgeInflex_2
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R11,#+4
        BLT.W    ??GetEdgeInflex_2
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMN      R10,#+5
        BGE.W    ??GetEdgeInflex_2
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R6, R0, LSL #+1]
        SUBS     R0,R0,#+2
        CMP      R0,#+156
        BCC.N    ??GetEdgeInflex_12
        ADDS     R8,R8,#+1
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??GetEdgeInflex_1
??GetEdgeInflex_12:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??GetEdgeInflex_1
//  753 				{ return i; }
??GetEdgeInflex_4:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??GetEdgeInflex_1
//  754 			}
//  755 		}
//  756 	}
//  757 	return 0;
??GetEdgeInflex_5:
        MOVS     R0,#+0
??GetEdgeInflex_1:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return
//  758 }
//  759 /*
//  760  * 重新搜索左边界
//  761  * 边缘处于黑色像素判定错误
//  762  * 对拟合错误处进行修正
//  763  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  764 void ReSearchLeftEdge(int16 row)
//  765 {
ReSearchLeftEdge:
        PUSH     {R4-R8,LR}
        MOVS     R5,R0
//  766 	int16 col_buf = leftEdge[row];
        LDR.W    R4,??DataTable15
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R8,[R4, R0, LSL #+1]
//  767 	int16 precol_buf = col_buf;
//  768 	const int16 search_range = 16;
        MOVS     R6,#+16
        B.N      ??ReSearchLeftEdge_0
//  769 	for (; row >= row_left_end; row--)
//  770 	{
//  771 		if (BLACK == imgbuff[row][leftEdge[row]])
//  772 		{
//  773 			col_buf = get_left(row, leftEdge[row], leftEdge[row] + search_range);
//  774 			if (-1 == col_buf)
//  775 			{
//  776 				col_buf = get_left(row, precol_buf, precol_buf + search_range);
//  777 				if (-1 == col_buf)
//  778 				{
//  779 					row_left_end = row;
//  780 					leftEdge[row] = leftEdge[row + 1];
//  781 					break;
//  782 				}
//  783 			}
//  784 			leftEdge[row] = col_buf;
??ReSearchLeftEdge_1:
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R4, R1, LSL #+1]
//  785 			precol_buf = leftEdge[row];
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R8,[R4, R0, LSL #+1]
??ReSearchLeftEdge_2:
        SUBS     R5,R5,#+1
??ReSearchLeftEdge_0:
        LDR.W    R7,??DataTable15_5
        MOVS     R0,R5
        LDRSH    R1,[R7, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.N    ??ReSearchLeftEdge_3
        LDR.W    R0,??DataTable15_6
        MOVS     R1,#+80
        SMULBB   R1,R5,R1
        ADD      R0,R0,R1
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R4, R1, LSL #+1]
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??ReSearchLeftEdge_2
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R2,[R4, R0, LSL #+1]
        ADDS     R2,R6,R2
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R4, R0, LSL #+1]
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_left
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??ReSearchLeftEdge_1
        ADDS     R2,R6,R8
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOV      R1,R8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_left
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??ReSearchLeftEdge_1
        STRH     R5,[R7, #+0]
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R4,R0, LSL #+1
        LDRH     R0,[R0, #+2]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        STRH     R0,[R4, R5, LSL #+1]
//  786 		}
//  787 	}
//  788 }
??ReSearchLeftEdge_3:
        POP      {R4-R8,PC}       ;; return
//  789 /*
//  790  * 重新搜索右边界
//  791  * 边缘处于黑色像素判定错误
//  792  * 对拟合错误处进行修正
//  793  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  794 void ReSearchRightEdge(int16 row)
//  795 {
ReSearchRightEdge:
        PUSH     {R4-R8,LR}
        MOVS     R5,R0
//  796 	int16 col_buf = rightEdge[row];
        LDR.N    R4,??DataTable14
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R8,[R4, R0, LSL #+1]
//  797 	int16 precol_buf = col_buf;
//  798 	const int16 search_range = 16;
        MOVS     R6,#+16
        B.N      ??ReSearchRightEdge_0
//  799 	for (; row >= row_right_end; row--)
//  800 	{
//  801 		if (BLACK == imgbuff[row][rightEdge[row]])
//  802 		{
//  803 			col_buf = get_right(row, rightEdge[row], rightEdge[row] - search_range);
//  804 			if (-1 == col_buf)
//  805 			{
//  806 				col_buf = get_right(row, precol_buf, precol_buf - search_range);
//  807 				if (-1 == col_buf)
//  808 				{
//  809 					row_right_end = row;
//  810 					rightEdge[row] = rightEdge[row + 1];
//  811 					break;
//  812 				}
//  813 			}
//  814 			rightEdge[row] = col_buf;
??ReSearchRightEdge_1:
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R4, R1, LSL #+1]
//  815 			precol_buf = rightEdge[row];
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R8,[R4, R0, LSL #+1]
??ReSearchRightEdge_2:
        SUBS     R5,R5,#+1
??ReSearchRightEdge_0:
        LDR.N    R7,??DataTable14_1
        MOVS     R0,R5
        LDRSH    R1,[R7, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.N    ??ReSearchRightEdge_3
        LDR.W    R0,??DataTable15_6
        MOVS     R1,#+80
        SMULBB   R1,R5,R1
        ADD      R0,R0,R1
        MOVS     R1,R5
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R4, R1, LSL #+1]
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??ReSearchRightEdge_2
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R2,[R4, R0, LSL #+1]
        SUBS     R2,R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R4, R0, LSL #+1]
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_right
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??ReSearchRightEdge_1
        SUBS     R2,R8,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOV      R1,R8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_right
        MOVS     R1,R0
        MOVS     R2,#-1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BNE.N    ??ReSearchRightEdge_1
        STRH     R5,[R7, #+0]
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R4,R0, LSL #+1
        LDRH     R0,[R0, #+2]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        STRH     R0,[R4, R5, LSL #+1]
//  816 		}
//  817 	}
//  818 }
??ReSearchRightEdge_3:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DATA32
        DC32     ?_0
//  819 
//  820 /*
//  821  * 根据左边缘以及赛道宽度模板补出右边缘
//  822  * 防止边缘跳变处理
//  823  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  824 void SearchRightEdgebyLeftSide(uint8 Type)
//  825 {
SearchRightEdgebyLeftSide:
        PUSH     {R0-R8,LR}
        MOVS     R7,R0
//  826 	int16 i;
//  827 	int16 col_buf = 0;
        MOVS     R6,#+0
//  828 	for (i = IMG_BOTTOM; i >= row_left_end; i--)
        MOVS     R0,#+69
        B.N      ??SearchRightEdgebyLeftSide_0
??SearchRightEdgebyLeftSide_1:
        SUBS     R0,R0,#+1
??SearchRightEdgebyLeftSide_0:
        LDR.W    R4,??DataTable15_5
        MOVS     R1,R0
        LDRSH    R2,[R4, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BLT.N    ??SearchRightEdgebyLeftSide_2
//  829 	{
//  830 		if (leftEdge[i] > IMG_COL_CENTER)
        LDR.W    R1,??DataTable15
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R1,[R1, R2, LSL #+1]
        CMP      R1,#+80
        BLT.N    ??SearchRightEdgebyLeftSide_1
//  831 		{
//  832 			row_left_end = i;
        STRH     R0,[R4, #+0]
//  833 			row_right_end = i;
        LDR.N    R1,??DataTable14_1
        STRH     R0,[R1, #+0]
//  834 			break;
//  835 		}
//  836 	}
//  837 	leftFold = GetEdgeInflex(row_left_begin, row_left_end, leftEdge, IMG_LEFT);
??SearchRightEdgebyLeftSide_2:
        LDR.W    R8,??DataTable15_7
        LDR.W    R5,??DataTable15
        MOVS     R3,#+1
        MOVS     R2,R5
        LDRSH    R1,[R4, #+0]
        LDR.W    R0,??DataTable15_8
        LDRSH    R0,[R0, #+0]
        BL       GetEdgeInflex
        STRH     R0,[R8, #+0]
//  838 	if (leftFold > IMG_TOP)
        LDRSH    R0,[R8, #+0]
        CMP      R0,#+11
        BLT.W    ??SearchRightEdgebyLeftSide_3
//  839 	{
//  840 		if (1 == Type)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??SearchRightEdgebyLeftSide_4
//  841 		{
//  842 			AlterParam_Line(IMG_BOTTOM, leftFold, leftFold, leftEdge[leftFold], IMG_BOTTOM, leftEdge[IMG_BOTTOM], leftEdge);
        STR      R5,[SP, #+8]
        LDRSH    R0,[R5, #+138]
        STR      R0,[SP, #+4]
        MOVS     R0,#+69
        STR      R0,[SP, #+0]
        LDRSH    R0,[R8, #+0]
        LDRSH    R3,[R5, R0, LSL #+1]
        LDRSH    R2,[R8, #+0]
        LDRSH    R1,[R8, #+0]
        MOVS     R0,#+69
        BL       AlterParam_Line
//  843 
//  844 			for (i = IMG_BOTTOM; i >= leftFold; i--)
        MOVS     R7,#+69
        B.N      ??SearchRightEdgebyLeftSide_5
//  845 			{
//  846 				if (BLACK == imgbuff[i][leftEdge[i]])
??SearchRightEdgebyLeftSide_6:
        LDR.W    R0,??DataTable15_6
        MOVS     R1,#+80
        SMULBB   R1,R7,R1
        ADD      R0,R0,R1
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R5, R1, LSL #+1]
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??SearchRightEdgebyLeftSide_7
//  847 				{
//  848 					col_buf = get_left(i, leftEdge[i], leftEdge[i] + 16);
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R2,[R5, R0, LSL #+1]
        ADDS     R2,R2,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R5, R0, LSL #+1]
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_left
        MOVS     R6,R0
//  849 					if (-1 != col_buf)
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMN      R0,#+1
        BEQ.N    ??SearchRightEdgebyLeftSide_7
//  850 					{
//  851 						leftEdge[i] = col_buf;
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R5, R0, LSL #+1]
//  852 					}
//  853 				}
//  854 			}
??SearchRightEdgebyLeftSide_7:
        SUBS     R7,R7,#+1
??SearchRightEdgebyLeftSide_5:
        MOVS     R0,R7
        LDRSH    R1,[R8, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchRightEdgebyLeftSide_6
//  855 		}
//  856 
//  857 		for (i = leftFold; i >= row_left_end; i--)
??SearchRightEdgebyLeftSide_4:
        LDRSH    R0,[R8, #+0]
        B.N      ??SearchRightEdgebyLeftSide_8
//  858 		{
//  859 			leftEdge[i] = leftEdge[leftFold];
??SearchRightEdgebyLeftSide_9:
        LDRSH    R1,[R8, #+0]
        LDRH     R1,[R5, R1, LSL #+1]
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        STRH     R1,[R5, R2, LSL #+1]
//  860 		}
        SUBS     R0,R0,#+1
??SearchRightEdgebyLeftSide_8:
        MOVS     R1,R0
        LDRSH    R2,[R4, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BGE.N    ??SearchRightEdgebyLeftSide_9
//  861 
//  862 		for (i = IMG_BOTTOM; i >= row_left_end; i--)
        MOVS     R7,#+69
??SearchRightEdgebyLeftSide_10:
        MOVS     R0,R7
        LDRSH    R1,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.W    ??SearchRightEdgebyLeftSide_11
//  863 		{
//  864 			rightEdge[i] = leftEdge[i] + width_templ[i];
        LDR.W    R8,??DataTable14
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R5, R0, LSL #+1]
        LDR.W    R0,??DataTable15_3
        MOVS     R2,R7
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRH     R0,[R0, R2, LSL #+1]
        ADDS     R1,R0,R1
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R1,[R8, R0, LSL #+1]
//  865 			rightEdge[i] = Min(rightEdge[i], IMG_RIGHT);
        MOVS     R1,#+158
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R8, R0, LSL #+1]
        BL       Min
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
//  866 			if (rightEdge[i] > col_buf && i < IMG_BOTTOM)
        MOVS     R0,R6
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R8, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchRightEdgebyLeftSide_12
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+69
        BGE.N    ??SearchRightEdgebyLeftSide_12
//  867 			{ rightEdge[i] = col_buf; }
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R8, R0, LSL #+1]
//  868 			col_buf = rightEdge[i];
??SearchRightEdgebyLeftSide_12:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R6,[R8, R0, LSL #+1]
//  869 		}
        SUBS     R7,R7,#+1
        B.N      ??SearchRightEdgebyLeftSide_10
//  870 	}
//  871 	else
//  872 	{
//  873 		for (i = IMG_BOTTOM; i >= row_left_end; i--)
??SearchRightEdgebyLeftSide_3:
        MOVS     R7,#+69
        B.N      ??SearchRightEdgebyLeftSide_13
//  874 		{
//  875 			if (leftEdge[i] > leftEdge[i + 1])
??SearchRightEdgebyLeftSide_14:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R5,R0, LSL #+1
        LDRSH    R0,[R0, #+2]
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R5, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??SearchRightEdgebyLeftSide_15
//  876 			{ leftEdge[i] = leftEdge[i + 1]; }
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R5,R0, LSL #+1
        LDRH     R0,[R0, #+2]
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R5, R1, LSL #+1]
//  877 			rightEdge[i] = leftEdge[i] + width_templ[i];
??SearchRightEdgebyLeftSide_15:
        LDR.W    R8,??DataTable14
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R5, R0, LSL #+1]
        LDR.N    R0,??DataTable15_3
        MOVS     R2,R7
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRH     R0,[R0, R2, LSL #+1]
        ADDS     R1,R0,R1
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R1,[R8, R0, LSL #+1]
//  878 			rightEdge[i] = Min(rightEdge[i], IMG_RIGHT);
        MOVS     R1,#+158
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R8, R0, LSL #+1]
        BL       Min
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
//  879 			if (rightEdge[i] > col_buf && i < IMG_BOTTOM)
        MOVS     R0,R6
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R8, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchRightEdgebyLeftSide_16
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+69
        BGE.N    ??SearchRightEdgebyLeftSide_16
//  880 			{ rightEdge[i] = col_buf; }
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R8, R0, LSL #+1]
//  881 			col_buf = rightEdge[i];
??SearchRightEdgebyLeftSide_16:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R6,[R8, R0, LSL #+1]
//  882 		}
        SUBS     R7,R7,#+1
??SearchRightEdgebyLeftSide_13:
        MOVS     R0,R7
        LDRSH    R1,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchRightEdgebyLeftSide_14
//  883 	}
//  884 	for (i = IMG_BOTTOM; i >= row_left_end; i--)
??SearchRightEdgebyLeftSide_11:
        MOVS     R1,#+69
        B.N      ??SearchRightEdgebyLeftSide_17
??SearchRightEdgebyLeftSide_18:
        SUBS     R1,R1,#+1
??SearchRightEdgebyLeftSide_17:
        MOVS     R0,R1
        LDRSH    R2,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BLT.N    ??SearchRightEdgebyLeftSide_19
//  885 	{
//  886 		if (rightEdge[i] - leftEdge[i] <= 20)
        LDR.N    R0,??DataTable14
        MOVS     R2,R1
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R0, R2, LSL #+1]
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R5, R0, LSL #+1]
        SUBS     R2,R2,R0
        CMP      R2,#+21
        BGE.N    ??SearchRightEdgebyLeftSide_18
//  887 		{
//  888 			row_left_end = i + 1;
        ADDS     R0,R1,#+1
        STRH     R0,[R4, #+0]
//  889 			row_right_end = i + 1;
        ADDS     R1,R1,#+1
        LDR.N    R0,??DataTable14_1
        STRH     R1,[R0, #+0]
//  890 			break;
//  891 		}
//  892 	}
//  893 	row_end_center = Max(row_left_end, row_right_end);
??SearchRightEdgebyLeftSide_19:
        LDR.N    R0,??DataTable14_1
        LDRSH    R1,[R0, #+0]
        LDRSH    R0,[R4, #+0]
        BL       Max
        LDR.N    R1,??DataTable15_9
        STRH     R0,[R1, #+0]
//  894 
//  895 }
        POP      {R0-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DATA32
        DC32     rightEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DATA32
        DC32     row_right_end
//  896 /*
//  897  * 根据右边缘以及赛道宽度模板补出左边缘
//  898  * 防止边缘跳变处理
//  899  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  900 void SearchLeftEdgebyRightSide(uint8 Type)
//  901 {
SearchLeftEdgebyRightSide:
        PUSH     {R0-R8,LR}
        MOVS     R7,R0
//  902 	int16 i;
//  903 	int16 col_buf = 0;
        MOVS     R6,#+0
//  904 	for (i = IMG_BOTTOM; i >= row_right_end; i--)
        MOVS     R0,#+69
        B.N      ??SearchLeftEdgebyRightSide_0
??SearchLeftEdgebyRightSide_1:
        SUBS     R0,R0,#+1
??SearchLeftEdgebyRightSide_0:
        LDR.N    R4,??DataTable15_10
        MOVS     R1,R0
        LDRSH    R2,[R4, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BLT.N    ??SearchLeftEdgebyRightSide_2
//  905 	{
//  906 		if (rightEdge[i] < IMG_COL_CENTER)
        LDR.N    R1,??DataTable15_1
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R1,[R1, R2, LSL #+1]
        CMP      R1,#+79
        BGE.N    ??SearchLeftEdgebyRightSide_1
//  907 		{
//  908 			row_left_end = i;
        LDR.N    R1,??DataTable15_5
        STRH     R0,[R1, #+0]
//  909 			row_right_end = i;
        STRH     R0,[R4, #+0]
//  910 			break;
//  911 		}
//  912 	}
//  913 	rightFold = GetEdgeInflex(row_right_begin, row_right_end, rightEdge, IMG_RIGHT);
??SearchLeftEdgebyRightSide_2:
        LDR.W    R8,??DataTable15_11
        LDR.N    R5,??DataTable15_1
        MOVS     R3,#+158
        MOVS     R2,R5
        LDRSH    R1,[R4, #+0]
        LDR.N    R0,??DataTable15_4
        LDRSH    R0,[R0, #+0]
        BL       GetEdgeInflex
        STRH     R0,[R8, #+0]
//  914 	if (rightFold > IMG_TOP)
        LDRSH    R0,[R8, #+0]
        CMP      R0,#+11
        BLT.W    ??SearchLeftEdgebyRightSide_3
//  915 	{
//  916 		if (1 == Type)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??SearchLeftEdgebyRightSide_4
//  917 		{
//  918 			AlterParam_Line(IMG_BOTTOM, rightFold, rightFold, rightEdge[rightFold], IMG_BOTTOM, rightEdge[IMG_BOTTOM], rightEdge);
        STR      R5,[SP, #+8]
        LDRSH    R0,[R5, #+138]
        STR      R0,[SP, #+4]
        MOVS     R0,#+69
        STR      R0,[SP, #+0]
        LDRSH    R0,[R8, #+0]
        LDRSH    R3,[R5, R0, LSL #+1]
        LDRSH    R2,[R8, #+0]
        LDRSH    R1,[R8, #+0]
        MOVS     R0,#+69
        BL       AlterParam_Line
//  919 
//  920 			for (i = IMG_BOTTOM; i >= rightFold; i--)
        MOVS     R7,#+69
        B.N      ??SearchLeftEdgebyRightSide_5
//  921 			{
//  922 				if (BLACK == imgbuff[i][rightEdge[i]])
??SearchLeftEdgebyRightSide_6:
        LDR.N    R0,??DataTable15_6
        MOVS     R1,#+80
        SMULBB   R1,R7,R1
        ADD      R0,R0,R1
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R5, R1, LSL #+1]
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??SearchLeftEdgebyRightSide_7
//  923 				{
//  924 					col_buf = get_right(i, rightEdge[i], rightEdge[i] - 16);
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R5, R0, LSL #+1]
        SUBS     R2,R0,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R5, R0, LSL #+1]
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_right
        MOVS     R6,R0
//  925 					if (-1 != col_buf)
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMN      R0,#+1
        BEQ.N    ??SearchLeftEdgebyRightSide_7
//  926 					{
//  927 						rightEdge[i] = col_buf;
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R5, R0, LSL #+1]
//  928 					}
//  929 				}
//  930 			}
??SearchLeftEdgebyRightSide_7:
        SUBS     R7,R7,#+1
??SearchLeftEdgebyRightSide_5:
        MOVS     R0,R7
        LDRSH    R1,[R8, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchLeftEdgebyRightSide_6
//  931 		}
//  932 
//  933 		for (i = rightFold; i >= row_right_end; i--)
??SearchLeftEdgebyRightSide_4:
        LDRSH    R0,[R8, #+0]
        B.N      ??SearchLeftEdgebyRightSide_8
//  934 		{
//  935 			rightEdge[i] = rightEdge[rightFold];
??SearchLeftEdgebyRightSide_9:
        LDRSH    R1,[R8, #+0]
        LDRH     R1,[R5, R1, LSL #+1]
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        STRH     R1,[R5, R2, LSL #+1]
//  936 		}
        SUBS     R0,R0,#+1
??SearchLeftEdgebyRightSide_8:
        MOVS     R1,R0
        LDRSH    R2,[R4, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BGE.N    ??SearchLeftEdgebyRightSide_9
//  937 
//  938 		for (i = IMG_BOTTOM; i >= row_right_end; i--)
        MOVS     R7,#+69
??SearchLeftEdgebyRightSide_10:
        MOVS     R0,R7
        LDRSH    R1,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.N    ??SearchLeftEdgebyRightSide_11
//  939 		{
//  940 			leftEdge[i] = rightEdge[i] - width_templ[i];
        LDR.W    R8,??DataTable15
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R5, R0, LSL #+1]
        LDR.N    R0,??DataTable15_3
        MOVS     R2,R7
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRH     R0,[R0, R2, LSL #+1]
        SUBS     R1,R1,R0
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R1,[R8, R0, LSL #+1]
//  941 			leftEdge[i] = Max(IMG_LEFT, leftEdge[i]);
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R8, R0, LSL #+1]
        MOVS     R0,#+1
        BL       Max
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
//  942 			if (leftEdge[i] < col_buf && i < IMG_BOTTOM)
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R8, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchLeftEdgebyRightSide_12
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+69
        BGE.N    ??SearchLeftEdgebyRightSide_12
//  943 			{ leftEdge[i] = col_buf; }
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R8, R0, LSL #+1]
//  944 			col_buf = leftEdge[i];
??SearchLeftEdgebyRightSide_12:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R6,[R8, R0, LSL #+1]
//  945 		}
        SUBS     R7,R7,#+1
        B.N      ??SearchLeftEdgebyRightSide_10
//  946 	}
//  947 	else
//  948 	{
//  949 		for (i = IMG_BOTTOM; i >= row_right_end; i--)
??SearchLeftEdgebyRightSide_3:
        MOVS     R7,#+69
        B.N      ??SearchLeftEdgebyRightSide_13
//  950 		{
//  951 			if (rightEdge[i] < rightEdge[i + 1])
??SearchLeftEdgebyRightSide_14:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R5, R0, LSL #+1]
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R5,R1, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??SearchLeftEdgebyRightSide_15
//  952 			{ rightEdge[i] = rightEdge[i + 1]; }
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R5,R0, LSL #+1
        LDRH     R0,[R0, #+2]
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R5, R1, LSL #+1]
//  953 			leftEdge[i] = rightEdge[i] - width_templ[i];
??SearchLeftEdgebyRightSide_15:
        LDR.W    R8,??DataTable15
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R5, R0, LSL #+1]
        LDR.N    R0,??DataTable15_3
        MOVS     R2,R7
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRH     R0,[R0, R2, LSL #+1]
        SUBS     R1,R1,R0
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R1,[R8, R0, LSL #+1]
//  954 			leftEdge[i] = Max(IMG_LEFT, leftEdge[i]);
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R8, R0, LSL #+1]
        MOVS     R0,#+1
        BL       Max
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRH     R0,[R8, R1, LSL #+1]
//  955 			if (leftEdge[i] < col_buf && i < IMG_BOTTOM)
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R8, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchLeftEdgebyRightSide_16
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+69
        BGE.N    ??SearchLeftEdgebyRightSide_16
//  956 			{ leftEdge[i] = col_buf; }
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRH     R6,[R8, R0, LSL #+1]
//  957 			col_buf = leftEdge[i];
??SearchLeftEdgebyRightSide_16:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R6,[R8, R0, LSL #+1]
//  958 		}
        SUBS     R7,R7,#+1
??SearchLeftEdgebyRightSide_13:
        MOVS     R0,R7
        LDRSH    R1,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BGE.N    ??SearchLeftEdgebyRightSide_14
//  959 	}
//  960 	for (i = IMG_BOTTOM; i >= row_right_end; i--)
??SearchLeftEdgebyRightSide_11:
        MOVS     R1,#+69
        B.N      ??SearchLeftEdgebyRightSide_17
??SearchLeftEdgebyRightSide_18:
        SUBS     R1,R1,#+1
??SearchLeftEdgebyRightSide_17:
        MOVS     R0,R1
        LDRSH    R2,[R4, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BLT.N    ??SearchLeftEdgebyRightSide_19
//  961 	{
//  962 		if (rightEdge[i] - leftEdge[i] <= 20)
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R2,[R5, R0, LSL #+1]
        LDR.N    R0,??DataTable15
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRSH    R0,[R0, R3, LSL #+1]
        SUBS     R2,R2,R0
        CMP      R2,#+21
        BGE.N    ??SearchLeftEdgebyRightSide_18
//  963 		{
//  964 			row_right_end = i + 1;
        ADDS     R0,R1,#+1
        STRH     R0,[R4, #+0]
//  965 			row_left_end = i + 1;
        ADDS     R1,R1,#+1
        LDR.N    R0,??DataTable15_5
        STRH     R1,[R0, #+0]
//  966 			break;
//  967 		}
//  968 	}
//  969 
//  970 	row_end_center = Max(row_left_end, row_right_end);
??SearchLeftEdgebyRightSide_19:
        LDRSH    R1,[R4, #+0]
        LDR.N    R0,??DataTable15_5
        LDRSH    R0,[R0, #+0]
        BL       Max
        LDR.N    R1,??DataTable15_9
        STRH     R0,[R1, #+0]
//  971 }
        POP      {R0-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DATA32
        DC32     leftEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DATA32
        DC32     rightEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DATA32
        DC32     img_centers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DATA32
        DC32     width_templ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DATA32
        DC32     row_right_begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DATA32
        DC32     row_left_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DATA32
        DC32     leftFold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DATA32
        DC32     row_left_begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DATA32
        DC32     row_end_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DATA32
        DC32     row_right_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DATA32
        DC32     rightFold
//  972 //计算拐点角度，拟合权重比

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  973 int16 OffSetEdgeSub(int16 beginrow,int16 endrow,int16 p[])
//  974 {
OffSetEdgeSub:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R2
//  975 	int16 upward = 0;
        MOVS     R0,#+0
//  976 	int16 len = 3;
        MOVS     R6,#+3
//  977 	int16 sum = 0;
        MOVS     R7,#+0
//  978 	int16 avg = 0;
        MOVS     R0,#+0
//  979 
//  980 	upward = beginrow - len;
        SUBS     R8,R4,R6
//  981 	if (upward < endrow)
        MOV      R0,R8
        MOVS     R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BGE.N    ??OffSetEdgeSub_0
//  982 	{
//  983 		upward = endrow;
        MOV      R8,R1
//  984 		len = beginrow - endrow;
        SUBS     R1,R4,R1
        MOVS     R6,R1
//  985 		if(len < 1)
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BGE.N    ??OffSetEdgeSub_0
//  986 		{
//  987 			len = 1;
        MOVS     R6,#+1
//  988 		}
//  989 	}
//  990 	int16 row;
//  991 	for (row = beginrow; row >= upward; row--)
??OffSetEdgeSub_0:
        MOV      R9,R4
        B.N      ??OffSetEdgeSub_1
//  992 	{
//  993 		sum += my_abs(p[row] - p[beginrow]);
??OffSetEdgeSub_2:
        MOV      R0,R9
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R5, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R5, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        ADDS     R7,R0,R7
//  994 	}
        SUBS     R9,R9,#+1
??OffSetEdgeSub_1:
        MOV      R0,R9
        MOV      R1,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??OffSetEdgeSub_2
//  995 
//  996 	avg = (int16)(sum * 1.0f/ len);
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        MOVS     R0,R7
        BL       __aeabi_i2f
        MOVS     R1,#+1065353216
        BL       __aeabi_fmul
        MOVS     R5,R0
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fdiv
        BL       __aeabi_f2iz
//  997 	if (avg < 1)
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BGE.N    ??OffSetEdgeSub_3
//  998 	{
//  999 		avg = 1;
        MOVS     R0,#+1
// 1000 	}
// 1001 
// 1002 	return beginrow + avg;
??OffSetEdgeSub_3:
        ADDS     R4,R0,R4
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4-R9,PC}    ;; return
// 1003 }
// 1004 //十字判定

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1005 void JudgeCrossroad(void)
// 1006 {
// 1007 }
JudgeCrossroad:
        BX       LR               ;; return
// 1008 //边缘是否符合直道特征

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1009 uint8 isEdgeStraight(uint8 dir)
// 1010 {
// 1011   return 0;
isEdgeStraight:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1012 }
// 1013 //坡道判定

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1014 uint8 isRamp()
// 1015 {
// 1016   return 0;
isRamp:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1017 }
// 1018 //坡道标志位

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1019 void Ramp_Flag(void)
// 1020 {
// 1021 }
Ramp_Flag:
        BX       LR               ;; return
// 1022 //圆环预判

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1023 uint8 JudgePreInRing(uint8 dir)
// 1024 {
// 1025   return 0;
JudgePreInRing:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1026 }
// 1027 //圆环预补线

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1028 void preInRing(uint8 dir)
// 1029 {
// 1030 }
preInRing:
        BX       LR               ;; return
// 1031 /*
// 1032  *  重新修改边缘
// 1033  *  根据拐点 向上矫正边缘
// 1034  *
// 1035  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1036 void ResetEdge(void)
// 1037 {
// 1038 }
ResetEdge:
        BX       LR               ;; return
// 1039 
// 1040 //圆环标志位切换

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1041 void ring_flag(void)
// 1042 {
// 1043 }
ring_flag:
        BX       LR               ;; return
// 1044 
// 1045 //圆环补线

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1046 void InRing(void)
// 1047 {
// 1048 }
InRing:
        BX       LR               ;; return
// 1049 //边缘突变比例查找内跳变，高度差查找外跳变 采用奇偶顺序查找，识别凹凸区域，返回值：权重

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1050 int16 EdgeIrregular()
// 1051 {
EdgeIrregular:
        PUSH     {R1-R11,LR}
// 1052 
// 1053 	int16 sum_left = 0;
        MOVS     R8,#+0
// 1054 	int16 sum_right = 0;
        MOVS     R4,#+0
// 1055 
// 1056 	int16 heightbuf = 0;
        MOVS     R0,#+0
// 1057 	int16 widthbuf = 0;
        MOVS     R0,#+0
// 1058 
// 1059 	int16 range_width_left = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
// 1060 	int16 range_height_left = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+2]
// 1061 
// 1062 	int16 range_width_right = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
// 1063 	int16 range_height_right = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
// 1064 
// 1065 	uint8 first_search_finished_left = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
// 1066 	uint8 first_search_finished_right = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
// 1067 
// 1068 	int16 shape_left = -1;//concave-convex
        MOVS     R7,#-1
// 1069 	int16 shape_right = -1;//0 代表凹  1代表凸
        MOVS     R5,#-1
// 1070         
// 1071         //======================滤波======================//
// 1072 	if (row_left_begin <= 40 && row_right_begin <= 40)
        LDR.W    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??EdgeIrregular_2
        LDR.W    R0,??EdgeIrregular_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??EdgeIrregular_2
// 1073 	{
// 1074 		return 0;
        MOVS     R0,#+0
        B.W      ??EdgeIrregular_3
// 1075 	}
// 1076         if(row_left_begin >= 69 && row_right_begin >= 69)
??EdgeIrregular_2:
        LDR.W    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+69
        BLT.N    ??EdgeIrregular_4
        LDR.W    R0,??EdgeIrregular_1
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+69
        BLT.N    ??EdgeIrregular_4
// 1077         {
// 1078                 return 0;
        MOVS     R0,#+0
        B.W      ??EdgeIrregular_3
// 1079         }
// 1080         
// 1081 	int16 i, j;
// 1082         
// 1083         for (i = IMG_BOTTOM; i >= FWD_45CM; i--)
??EdgeIrregular_4:
        MOVS     R1,#+69
        B.N      ??EdgeIrregular_5
??EdgeIrregular_6:
        SUBS     R1,R1,#+1
??EdgeIrregular_5:
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+26
        BLT.N    ??EdgeIrregular_7
// 1084         {
// 1085           if (i >= row_left_end && i >= row_right_end)
        MOVS     R0,R1
        LDR.W    R2,??EdgeIrregular_1+0x4
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BLT.N    ??EdgeIrregular_6
        MOVS     R0,R1
        LDR.W    R2,??EdgeIrregular_1+0x8
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BLT.N    ??EdgeIrregular_6
// 1086           {
// 1087             if (rightEdge[i] - leftEdge[i] <= width_templ[IMG_TOP])
        LDR.W    R0,??EdgeIrregular_1+0xC
        LDRSH    R2,[R0, #+20]
        LDR.W    R0,??EdgeIrregular_1+0x10
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRSH    R3,[R0, R3, LSL #+1]
        LDR.W    R0,??EdgeIrregular_1+0x14
        MOVS     R6,R1
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRSH    R0,[R0, R6, LSL #+1]
        SUBS     R3,R3,R0
        CMP      R2,R3
        BLT.N    ??EdgeIrregular_6
// 1088             {
// 1089               return 0;
        MOVS     R0,#+0
        B.W      ??EdgeIrregular_3
// 1090             }
// 1091           }
// 1092         }
// 1093         
// 1094         if (row_left_end < FWD_45CM && row_right_end < FWD_45CM)
??EdgeIrregular_7:
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+26
        BGE.N    ??EdgeIrregular_8
        LDR.W    R1,??EdgeIrregular_1+0x8
        LDRSH    R0,[R1, #+0]
        CMP      R0,#+26
        BGE.N    ??EdgeIrregular_8
// 1095         {
// 1096           for (i = FWD_45CM; i >= IMG_TOP; i--)
        MOVS     R2,#+26
        B.N      ??EdgeIrregular_9
??EdgeIrregular_10:
        SUBS     R2,R2,#+1
??EdgeIrregular_9:
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+10
        BLT.N    ??EdgeIrregular_8
// 1097           {
// 1098             if (i >= row_left_end && i >= row_right_end)
        MOVS     R0,R2
        LDR.W    R3,??EdgeIrregular_1+0x4
        LDRSH    R3,[R3, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R3
        BLT.N    ??EdgeIrregular_10
        MOVS     R0,R2
        LDRSH    R3,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R3
        BLT.N    ??EdgeIrregular_10
// 1099             {
// 1100               if (rightEdge[i] - leftEdge[i] >= 150)
        LDR.W    R0,??EdgeIrregular_1+0x10
        MOVS     R3,R2
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRSH    R3,[R0, R3, LSL #+1]
        LDR.W    R0,??EdgeIrregular_1+0x14
        MOVS     R6,R2
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRSH    R0,[R0, R6, LSL #+1]
        SUBS     R3,R3,R0
        CMP      R3,#+150
        BLT.N    ??EdgeIrregular_10
// 1101               {
// 1102                 return 0;
        MOVS     R0,#+0
        B.W      ??EdgeIrregular_3
// 1103               }
// 1104             }
// 1105           }
// 1106         }
// 1107         //======================滤波======================//
// 1108         
// 1109         
// 1110 	/**********************************************开始单边检测**********************************************/
// 1111 	for (i = IMG_BOTTOM; i >= Max(FWD_40CM,row_left_end); i--)
??EdgeIrregular_8:
        MOVS     R6,#+69
        B.N      ??EdgeIrregular_11
// 1112 	{
// 1113 		if (0 == first_search_finished_left)//距离限幅
// 1114 		{
// 1115 			if (i > row_left_end && i <= row_left_begin)
// 1116 			{
// 1117 				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
// 1118 				widthbuf = leftEdge[i] - leftEdge[i - 1];
// 1119 				if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
// 1120 				{
// 1121 					range_width_left = leftEdge[i];
// 1122 					range_height_left = i;
// 1123 					shape_left = 0;
// 1124 					first_search_finished_left = 1;
// 1125 					sum_left++;
// 1126 				}
// 1127 				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
// 1128 				{
// 1129 					for (j = i; j >= Max(i - 3, row_left_end); j--)//向上查找
// 1130 					{
// 1131 						if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
// 1132 						{
// 1133 							shape_left = 1;
// 1134 							range_width_left = leftEdge[i];
// 1135 							range_height_left = i;
// 1136 							first_search_finished_left = 1;
// 1137 							sum_left++;
// 1138 							break;
// 1139 						}
// 1140 					}
// 1141 				}//else if
// 1142 			}//if
// 1143 		}
// 1144 
// 1145 		if (1 == shape_left)//凸找凹
// 1146 		{
// 1147 			if (i > row_left_end && i <= row_left_begin)
// 1148 			{
// 1149 				widthbuf = leftEdge[i] - leftEdge[i - 1];
// 1150 				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
// 1151 				{
// 1152 					if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
// 1153 					{
// 1154 						shape_left = 0;
// 1155 						range_width_left = leftEdge[i];
// 1156 						range_height_left = i;
// 1157 						sum_left++;
// 1158 						break;
// 1159 					}
// 1160 				}
// 1161 			}
// 1162 
// 1163 		}
// 1164 		else if (0 == shape_left)//凹找凸
// 1165 		{
// 1166 			if (i > row_left_end && i <= row_left_begin)
// 1167 			{
// 1168 				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
// 1169 				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),((CAR_JOIN_templ[range_height_left] + 1) * (CAR_JOIN_templ[range_height_left] + 1)),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
// 1170 				{
// 1171 
// 1172 					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
// 1173 					{
// 1174 						for (j = i; j >= Max(i - 3, row_left_end); j--)
??EdgeIrregular_12:
        SUBS     R10,R10,#+1
??EdgeIrregular_13:
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R6,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_14
// 1175 						{
// 1176 							if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] && my_abs(leftEdge[i] - leftEdge[i + 1]) <= CAR_JOIN_templ[i])
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_12
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R11,??EdgeIrregular_1+0x18
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_12
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R9,R1, LSL #+1
        LDRH     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_12
// 1177 							{
// 1178 								shape_left = 1;
        MOVS     R7,#+1
// 1179 								range_width_left = leftEdge[i];
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
// 1180 								range_height_left = i;
        STRH     R6,[SP, #+2]
// 1181 								sum_left++;
        ADDS     R8,R8,#+1
// 1182 								break;
// 1183 							}
// 1184 						}
??EdgeIrregular_14:
        SUBS     R6,R6,#+1
??EdgeIrregular_11:
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R1,[R0, #+0]
        MOVS     R0,#+28
        BL       Max
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.W    ??EdgeIrregular_15
        LDRB     R0,[SP, #+5]
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_16
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_16
        LDR.W    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_16
        LDR.W    R9,??EdgeIrregular_1+0x14
        MOVS     R2,#+10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R9, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R10,R0
        SUBS     R10,R6,R10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R9, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R9,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        SUBS     R0,R1,R0
        LDR.W    R1,??EdgeIrregular_1+0x18
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R1,[R1, R2, LSL #+1]
        RSBS     R1,R1,#+0
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BLT.N    ??EdgeIrregular_17
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R1,??EdgeIrregular_1+0x18
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R1, R2, LSL #+1]
        MOVS     R3,R6
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRSH    R1,[R1, R3, LSL #+1]
        ADDS     R1,R1,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_17
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
        STRH     R6,[SP, #+2]
        MOVS     R7,#+0
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
        ADDS     R8,R8,#+1
        B.N      ??EdgeIrregular_16
??EdgeIrregular_17:
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BLT.N    ??EdgeIrregular_16
        LDR.W    R0,??EdgeIrregular_1+0x18
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R0,[R0, R1, LSL #+1]
        LDR.W    R1,??EdgeIrregular_1+0x18
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R1,[R1, R2, LSL #+1]
        ADDS     R0,R1,R0
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R0,R10
        BLT.N    ??EdgeIrregular_16
        MOV      R10,R6
        B.N      ??EdgeIrregular_18
??EdgeIrregular_19:
        SUBS     R10,R10,#+1
??EdgeIrregular_18:
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R6,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_16
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_19
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R1,??EdgeIrregular_1+0x18
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R1, R2, LSL #+1]
        MOVS     R3,R6
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRSH    R1,[R1, R3, LSL #+1]
        ADDS     R1,R1,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_19
        MOVS     R7,#+1
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
        STRH     R6,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
        ADDS     R8,R8,#+1
??EdgeIrregular_16:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_20
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_14
        LDR.W    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_14
        LDR.W    R9,??EdgeIrregular_1+0x14
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R9, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R9,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        SUBS     R1,R1,R0
        STRH     R1,[SP, #+10]
        LDRH     R0,[SP, #+8]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R10,??EdgeIrregular_1+0x18
        LDRSH    R1,[SP, #+2]
        LDRSH    R2,[R10, R1, LSL #+1]
        LDRSH    R1,[SP, #+2]
        LDRH     R1,[R10, R1, LSL #+1]
        LDRSH    R3,[SP, #+2]
        LDRH     R3,[R10, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_14
        LDRH     R0,[SP, #+2]
        SUBS     R0,R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+2]
        LDRSH    R2,[R10, R1, LSL #+1]
        LDRSH    R1,[SP, #+2]
        LDRH     R1,[R10, R1, LSL #+1]
        LDRSH    R3,[SP, #+2]
        LDRH     R3,[R10, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_14
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R10, R0, LSL #+1]
        RSBS     R0,R0,#+0
        LDRSH    R1,[SP, #+10]
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_14
        LDRSH    R0,[SP, #+10]
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R10, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.W    ??EdgeIrregular_14
        MOVS     R0,#+0
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        ADDS     R8,R8,#+1
// 1185 					}
// 1186 				}
// 1187 			}//if
// 1188 		}//else if
// 1189 	}
// 1190         if (sum_left >= 3 && leftEdge[Max(FWD_40CM,row_left_end)] < IMG_COL_CENTER)
??EdgeIrregular_15:
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BLT.W    ??EdgeIrregular_21
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R1,[R0, #+0]
        MOVS     R0,#+28
        BL       Max
        LDR.W    R1,??EdgeIrregular_1+0x14
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R1, R0, LSL #+1]
        CMP      R0,#+79
        BGE.W    ??EdgeIrregular_21
// 1191 	{
// 1192 		return 199;
        MOVS     R0,#+199
        B.W      ??EdgeIrregular_3
// 1193 	}
??EdgeIrregular_20:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_14
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_14
        LDR.W    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_14
        LDR.W    R9,??EdgeIrregular_1+0x14
        MOVS     R2,#+10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R9, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R10,R0
        SUBS     R10,R6,R10
        LDRH     R0,[SP, #+8]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R1,??EdgeIrregular_1+0x18
        LDRSH    R2,[SP, #+2]
        LDRSH    R2,[R1, R2, LSL #+1]
        LDR.W    R1,??EdgeIrregular_1+0x18
        LDRSH    R3,[SP, #+2]
        LDRH     R1,[R1, R3, LSL #+1]
        ADDS     R1,R1,#+1
        LDR.W    R3,??EdgeIrregular_1+0x18
        LDRSH    R12,[SP, #+2]
        LDRH     R3,[R3, R12, LSL #+1]
        ADDS     R3,R3,#+1
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_14
        LDRH     R0,[SP, #+2]
        SUBS     R0,R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R1,??EdgeIrregular_1+0x18
        LDRSH    R2,[SP, #+2]
        LDRSH    R2,[R1, R2, LSL #+1]
        LDR.W    R1,??EdgeIrregular_1+0x18
        LDRSH    R3,[SP, #+2]
        LDRH     R1,[R1, R3, LSL #+1]
        LDR.W    R3,??EdgeIrregular_1+0x18
        LDRSH    R12,[SP, #+2]
        LDRH     R3,[R3, R12, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_14
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??EdgeIrregular_1+0x18
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R1,[R1, R2, LSL #+1]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_14
        LDR.W    R0,??EdgeIrregular_1+0x18
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R0,[R0, R1, LSL #+1]
        ADDS     R0,R0,#+2
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R0,R10
        BLT.W    ??EdgeIrregular_14
        MOV      R10,R6
        B.N      ??EdgeIrregular_13
// 1194 
// 1195         heightbuf = 0;
??EdgeIrregular_21:
        MOVS     R0,#+0
// 1196         widthbuf = 0;
        MOVS     R0,#+0
// 1197         
// 1198 	for (i = IMG_BOTTOM; i >= Max(FWD_40CM,row_right_end); i--)
        MOVS     R6,#+69
        B.N      ??EdgeIrregular_22
// 1199 	{
// 1200 		if (0 == first_search_finished_right)//距离限幅
// 1201 		{
// 1202 			if (i > row_right_end && i <= row_right_begin)
// 1203 			{
// 1204 				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
// 1205 				widthbuf = rightEdge[i] - rightEdge[i - 1];
// 1206 				if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
// 1207 				{
// 1208 					range_width_right = rightEdge[i];
// 1209 					range_height_right = i;
// 1210 					shape_right = 0;
// 1211 					first_search_finished_right = 1;
// 1212 					sum_right++;
// 1213 				}
// 1214 				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
// 1215 				{
// 1216 					for (j = i; j >= Max(i - 3, row_right_end); j--)
// 1217 					{
// 1218 						if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
// 1219 						{
// 1220 							shape_right = 1;
// 1221 							range_width_right = rightEdge[i];
// 1222 							range_height_right = i;
// 1223 							first_search_finished_right = 1;
// 1224 							sum_right++;
// 1225 							break;
// 1226 						}
// 1227 					}
// 1228 				}//else if
// 1229 			}//if
// 1230 		}
// 1231 
// 1232 		if (1 == shape_right)//凸找凹
// 1233 		{
// 1234 			if (i > row_right_end && i <= row_right_begin)
// 1235 			{
// 1236 				widthbuf = rightEdge[i] - rightEdge[i - 1];
// 1237 				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
// 1238 				{
// 1239 					if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
// 1240 					{
// 1241 						shape_right = 0;
// 1242 						range_width_right = rightEdge[i];
// 1243 						range_height_right = i;
// 1244 						sum_right++;
// 1245 						break;
// 1246 					}
// 1247 				}
// 1248 			}
// 1249 		}
// 1250 		else if (0 == shape_right)//凹找凸
// 1251 		{
// 1252 			if (i > row_right_end && i <= row_right_begin)
// 1253 			{
// 1254 				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
// 1255 				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), ((CAR_JOIN_templ[range_height_right] + 1) * (CAR_JOIN_templ[range_height_right] + 1)), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
// 1256 				{
// 1257 					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
// 1258 					{
// 1259 						for (j = i; j >= Max(i - 3, row_right_end); j--)
??EdgeIrregular_23:
        SUBS     R9,R9,#+1
??EdgeIrregular_24:
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R6,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R9
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_25
// 1260 						{
// 1261 							if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] && my_abs(rightEdge[i] - rightEdge[i + 1]) <= CAR_JOIN_templ[i])
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R7, R0, LSL #+1]
        MOV      R1,R9
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R7, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_23
        MOV      R0,R9
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R7, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R7, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_23
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R7, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R7,R1, LSL #+1
        LDRH     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_23
// 1262 							{
// 1263 								shape_right = 1;
        MOVS     R5,#+1
// 1264 								range_width_right = rightEdge[i];
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R7, R0, LSL #+1]
        STRH     R0,[SP, #+6]
// 1265 								range_height_right = i;
        STRH     R6,[SP, #+0]
// 1266 								sum_right++;
        ADDS     R4,R4,#+1
// 1267 								break;
// 1268 							}
// 1269 						}
??EdgeIrregular_25:
        SUBS     R6,R6,#+1
??EdgeIrregular_22:
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R1,[R0, #+0]
        MOVS     R0,#+28
        BL       Max
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.W    ??EdgeIrregular_26
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_27
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_27
        LDR.W    R0,??EdgeIrregular_1
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_27
        LDR.W    R9,??EdgeIrregular_1+0x10
        MOVS     R2,#+10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R9, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R10,R0
        SUBS     R10,R6,R10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R9, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R9,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        SUBS     R0,R1,R0
        LDR.W    R7,??EdgeIrregular_1+0x18
        MOVS     R1,R0
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R7, R2, LSL #+1]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BLT.N    ??EdgeIrregular_28
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R7, R1, LSL #+1]
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R7, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_28
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+6]
        STRH     R6,[SP, #+0]
        MOVS     R5,#+0
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
        ADDS     R4,R4,#+1
        B.N      ??EdgeIrregular_27
??EdgeIrregular_28:
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BLT.N    ??EdgeIrregular_27
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R7, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R7, R1, LSL #+1]
        ADDS     R0,R1,R0
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R0,R10
        BLT.N    ??EdgeIrregular_27
        MOV      R10,R6
        B.N      ??EdgeIrregular_29
??EdgeIrregular_30:
        SUBS     R10,R10,#+1
??EdgeIrregular_29:
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R6,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_27
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_30
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R7, R1, LSL #+1]
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R7, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_30
        MOVS     R5,#+1
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+6]
        STRH     R6,[SP, #+0]
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
        ADDS     R4,R4,#+1
??EdgeIrregular_27:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_31
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_25
        LDR.W    R0,??EdgeIrregular_1
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_25
        LDR.W    R7,??EdgeIrregular_1+0x10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R7, R0, LSL #+1]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R7,R1, LSL #+1
        LDRH     R9,[R1, #-2]
        SUBS     R9,R0,R9
        LDRH     R0,[SP, #+6]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R7, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R10,??EdgeIrregular_1+0x18
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R10, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R10, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R10, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_25
        LDRH     R0,[SP, #+0]
        SUBS     R0,R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R10, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R10, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R10, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_25
        MOV      R0,R9
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_25
        MOV      R0,R9
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        MOVS     R2,R6
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R10, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.W    ??EdgeIrregular_25
        MOVS     R0,#+0
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R7, R0, LSL #+1]
        ADDS     R4,R4,#+1
// 1270 					}
// 1271 				}
// 1272 			}//if
// 1273 		}//else
// 1274 	}
// 1275 
// 1276         if (sum_right >= 3 && rightEdge[Max(FWD_40CM,row_right_end)] > IMG_COL_CENTER)
??EdgeIrregular_26:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BLT.W    ??EdgeIrregular_32
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R1,[R0, #+0]
        MOVS     R0,#+28
        BL       Max
        LDR.W    R1,??EdgeIrregular_1+0x10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R1, R0, LSL #+1]
        CMP      R0,#+80
        BLT.N    ??EdgeIrregular_32
// 1277 	{
// 1278 		return 100;
        MOVS     R0,#+100
        B.W      ??EdgeIrregular_3
// 1279 	}
??EdgeIrregular_31:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_25
        LDR.W    R0,??EdgeIrregular_1+0x8
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_25
        LDR.W    R0,??EdgeIrregular_1
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_25
        LDR.W    R7,??EdgeIrregular_1+0x10
        MOVS     R2,#+10
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R7, R0, LSL #+1]
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R9,R0
        SUBS     R9,R6,R9
        LDRH     R0,[SP, #+6]
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R7, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R10,??EdgeIrregular_1+0x18
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R10, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R10, R1, LSL #+1]
        ADDS     R1,R1,#+1
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R10, R3, LSL #+1]
        ADDS     R3,R3,#+1
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_25
        LDRH     R0,[SP, #+0]
        SUBS     R0,R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R10, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R10, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R10, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_25
        MOV      R0,R9
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_25
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R10, R0, LSL #+1]
        ADDS     R0,R0,#+2
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R0,R9
        BLT.W    ??EdgeIrregular_25
        MOV      R9,R6
        B.N      ??EdgeIrregular_24
// 1280         if (sum_left >= 2 && sum_right >= 2)
??EdgeIrregular_32:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+2
        BLT.N    ??EdgeIrregular_33
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BLT.N    ??EdgeIrregular_33
// 1281         {
// 1282                 return 100;
        MOVS     R0,#+100
        B.W      ??EdgeIrregular_3
// 1283         }
// 1284         
// 1285 	/**********************************************单边检测结束**********************************************/
// 1286 
// 1287 	/**********************************************开始双边检测**********************************************/
// 1288 	//清空标志位
// 1289 	shape_left = -1;
??EdgeIrregular_33:
        MOVS     R7,#-1
        MOVS     R5,R7
// 1290 	shape_right = -1;
// 1291 
// 1292 	first_search_finished_left = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
// 1293 	first_search_finished_right = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
// 1294 
// 1295 	heightbuf = 0;
        MOVS     R0,#+0
// 1296 	widthbuf = 0;
        MOVS     R0,#+0
// 1297 
// 1298 	range_width_left = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
// 1299 	range_height_left = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+2]
// 1300 
// 1301 	range_width_right = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
// 1302 	range_height_right = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
// 1303 
// 1304 	sum_left = 0;
        MOVS     R6,#+0
// 1305 	sum_right = 0;
        MOVS     R8,#+0
// 1306 	//结束清空
// 1307 	for (i = IMG_BOTTOM; i >= FWD_60CM; i--)
        MOVS     R4,#+69
        B.N      ??EdgeIrregular_34
??EdgeIrregular_35:
        SUBS     R4,R4,#+1
??EdgeIrregular_34:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+22
        BLT.W    ??EdgeIrregular_36
// 1308 	{
// 1309 		/**********************************************开始首次检测**********************************************/
// 1310 		if (0 == first_search_finished_left && i >= FWD_40CM)//距离限幅
        LDRB     R0,[SP, #+5]
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_37
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+28
        BLT.W    ??EdgeIrregular_37
// 1311 		{
// 1312 			if (i > row_left_end && i <= row_left_begin)
        LDR.W    R0,??EdgeIrregular_1+0x4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_37
        LDR.W    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_37
// 1313 			{
// 1314 				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
        LDR.W    R9,??EdgeIrregular_1+0x14
        MOVS     R2,#+10
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R9, R0, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R11,R0
        SUBS     R11,R4,R11
// 1315 				widthbuf = leftEdge[i] - leftEdge[i - 1];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R9, R0, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R9,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        SUBS     R0,R1,R0
// 1316 				if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
        LDR.W    R10,??EdgeIrregular_1+0x18
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        RSBS     R1,R1,#+0
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BLT.N    ??EdgeIrregular_38
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R10, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_38
// 1317 				{
// 1318 					range_width_left = leftEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
// 1319 					range_height_left = i;
        STRH     R4,[SP, #+2]
// 1320 					shape_left = 0;
        MOVS     R5,#+0
// 1321 					first_search_finished_left = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
// 1322 					sum_left++;
        ADDS     R6,R6,#+1
        B.N      ??EdgeIrregular_37
// 1323 				}
// 1324 				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
??EdgeIrregular_38:
        MOV      R0,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BLT.N    ??EdgeIrregular_37
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R10, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        ADDS     R0,R1,R0
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R0,R11
        BLT.N    ??EdgeIrregular_37
// 1325 				{
// 1326 					for (j = i; j >= Max(i - 3, row_left_end); j--)//向上查找
        MOV      R11,R4
        B.N      ??EdgeIrregular_39
??EdgeIrregular_40:
        SUBS     R11,R11,#+1
??EdgeIrregular_39:
        LDR.N    R0,??EdgeIrregular_1+0x4
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R4,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R11
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_37
// 1327 					{
// 1328 						if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
        MOV      R0,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_40
        MOV      R0,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R10, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_40
// 1329 						{
// 1330 							shape_left = 1;
        MOVS     R5,#+1
// 1331 							range_width_left = leftEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
// 1332 							range_height_left = i;
        STRH     R4,[SP, #+2]
// 1333 							first_search_finished_left = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
// 1334 							sum_left++;
        ADDS     R6,R6,#+1
// 1335 							break;
// 1336 						}
// 1337 					}
// 1338 				}//else if
// 1339 			}//if
// 1340 		}
// 1341 		if (0 == first_search_finished_right && i >= FWD_40CM)//距离限幅
??EdgeIrregular_37:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_41
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+28
        BLT.W    ??EdgeIrregular_41
// 1342 		{
// 1343 			if (i > row_right_end && i <= row_right_begin)
        LDR.N    R0,??EdgeIrregular_1+0x8
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_41
        LDR.N    R0,??EdgeIrregular_1
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_41
// 1344 			{
// 1345 				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
        LDR.W    R10,??EdgeIrregular_1+0x10
        MOVS     R2,#+10
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R10, R0, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R11,R0
        SUBS     R11,R4,R11
// 1346 				widthbuf = rightEdge[i] - rightEdge[i - 1];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R1,[R10, R0, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R10,R0, LSL #+1
        LDRH     R0,[R0, #-2]
        SUBS     R0,R1,R0
// 1347 				if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
        LDR.W    R9,??EdgeIrregular_1+0x18
        MOVS     R1,R0
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R9, R2, LSL #+1]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R2
        BLT.N    ??EdgeIrregular_42
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R9, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_42
// 1348 				{
// 1349 					range_width_right = rightEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R10, R0, LSL #+1]
        STRH     R0,[SP, #+6]
// 1350 					range_height_right = i;
        STRH     R4,[SP, #+0]
// 1351 					shape_right = 0;
        MOVS     R7,#+0
// 1352 					first_search_finished_right = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
// 1353 					sum_right++;
        ADDS     R8,R8,#+1
        B.N      ??EdgeIrregular_41
// 1354 				}
// 1355 				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
??EdgeIrregular_42:
        MOV      R0,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+3
        BLT.N    ??EdgeIrregular_41
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        ADDS     R0,R1,R0
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R0,R11
        BLT.N    ??EdgeIrregular_41
// 1356 				{
// 1357 					for (j = i; j >= Max(i - 3, row_right_end); j--)
        MOV      R11,R4
        B.N      ??EdgeIrregular_43
??EdgeIrregular_44:
        SUBS     R11,R11,#+1
??EdgeIrregular_43:
        LDR.N    R0,??EdgeIrregular_1+0x8
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R4,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R11
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_41
// 1358 					{
// 1359 						if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R10, R0, LSL #+1]
        MOV      R1,R11
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R10, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_44
        MOV      R0,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R10, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R10, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R9, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_44
// 1360 						{
// 1361 							shape_right = 1;
        MOVS     R7,#+1
// 1362 							range_width_right = rightEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R10, R0, LSL #+1]
        STRH     R0,[SP, #+6]
// 1363 							range_height_right = i;
        STRH     R4,[SP, #+0]
// 1364 							first_search_finished_right = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
// 1365 							sum_right++;
        ADDS     R8,R8,#+1
// 1366 							break;
// 1367 						}
// 1368 					}
// 1369 				}//else if
// 1370 			}//if
// 1371 		}
// 1372 		/**********************************************首次检测结束**********************************************/
// 1373 
// 1374 		/**********************************************开启二次检测**********************************************/
// 1375 		if (1 == shape_left)//凸找凹
??EdgeIrregular_41:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_45
// 1376 		{
// 1377 			if (i > row_left_end && i <= row_left_begin)
        LDR.N    R0,??EdgeIrregular_1+0x4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_46
        LDR.N    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_46
// 1378 			{
// 1379 				widthbuf = leftEdge[i] - leftEdge[i - 1];
        LDR.W    R9,??EdgeIrregular_1+0x14
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R9,R1, LSL #+1
        LDRH     R10,[R1, #-2]
        SUBS     R10,R0,R10
// 1380 				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
        LDRH     R0,[SP, #+8]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R11,??EdgeIrregular_1+0x18
        LDRSH    R1,[SP, #+2]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+2]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+2]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_46
        LDRH     R0,[SP, #+2]
        SUBS     R0,R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+2]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+2]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+2]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_46
// 1381 				{
// 1382 					if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R11, R0, LSL #+1]
        RSBS     R0,R0,#+0
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_46
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R11, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.W    ??EdgeIrregular_46
// 1383 					{
// 1384 						shape_left = 0;
        MOVS     R5,#+0
// 1385 						range_width_left = leftEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
// 1386 						range_height_left = i;
        STRH     R4,[SP, #+2]
// 1387 						sum_left++;
        ADDS     R6,R6,#+1
        B.N      ??EdgeIrregular_46
        DATA
??EdgeIrregular_1:
        DATA32
        DC32     row_right_begin
        DC32     row_left_end
        DC32     row_right_end
        DC32     width_templ
        DC32     rightEdge
        DC32     leftEdge
        DC32     CAR_JOIN_templ
        THUMB
// 1388 					}
// 1389 				}
// 1390 			}
// 1391 
// 1392 		}
// 1393 		else if (0 == shape_left)//凹找凸
??EdgeIrregular_45:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_46
// 1394 		{
// 1395 			if (i > row_left_end && i <= row_left_begin)
        LDR.W    R0,??DataTable21
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_46
        LDR.N    R0,??EdgeIrregular_0
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_46
// 1396 			{
// 1397 				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
        LDR.W    R9,??DataTable21_1
        B.N      ??EdgeIrregular_47
        Nop      
        DATA
??EdgeIrregular_0:
        DATA32
        DC32     row_left_begin
        THUMB
??EdgeIrregular_47:
        MOVS     R2,#+10
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R9, R0, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R10,R0
        SUBS     R10,R4,R10
// 1398 				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
        LDRH     R0,[SP, #+8]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R11,??DataTable21_2
        LDRSH    R1,[SP, #+2]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+2]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+2]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??EdgeIrregular_46
        LDRH     R0,[SP, #+2]
        SUBS     R0,R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+2]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+2]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+2]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??EdgeIrregular_46
// 1399 				{
// 1400 
// 1401 					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BLT.N    ??EdgeIrregular_46
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R11, R0, LSL #+1]
        ADDS     R0,R0,#+2
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R0,R10
        BLT.N    ??EdgeIrregular_46
// 1402 					{
// 1403 						for (j = i; j >= Max(i - 3, row_left_end); j--)
        MOV      R10,R4
        B.N      ??EdgeIrregular_48
??EdgeIrregular_49:
        SUBS     R10,R10,#+1
??EdgeIrregular_48:
        LDR.W    R0,??DataTable21
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R4,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_46
// 1404 						{
// 1405 							if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] && my_abs(leftEdge[i] - leftEdge[i + 1]) <= CAR_JOIN_templ[i])
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_49
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_49
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R9,R1, LSL #+1
        LDRH     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_49
// 1406 							{
// 1407 								shape_left = 1;
        MOVS     R5,#+1
// 1408 								range_width_left = leftEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+8]
// 1409 								range_height_left = i;
        STRH     R4,[SP, #+2]
// 1410 								sum_left++;
        ADDS     R6,R6,#+1
// 1411 								break;
// 1412 							}
// 1413 						}
// 1414 					}
// 1415 				}
// 1416 			}//if
// 1417 		}//else if
// 1418 
// 1419 		if (1 == shape_right)//凸找凹
??EdgeIrregular_46:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_50
// 1420 		{
// 1421 			if (i > row_right_end && i <= row_right_begin)
        LDR.W    R0,??DataTable21_3
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_51
        LDR.W    R0,??DataTable21_4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_51
// 1422 			{
// 1423 				widthbuf = rightEdge[i] - rightEdge[i - 1];
        LDR.W    R9,??DataTable21_5
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R9,R1, LSL #+1
        LDRH     R10,[R1, #-2]
        SUBS     R10,R0,R10
// 1424 				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
        LDRH     R0,[SP, #+6]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R11,??DataTable21_2
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_51
        LDRH     R0,[SP, #+0]
        SUBS     R0,R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.W    ??EdgeIrregular_51
// 1425 				{
// 1426 					if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
        MOV      R0,R10
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_51
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R11, R2, LSL #+1]
        ADDS     R1,R2,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.W    ??EdgeIrregular_51
// 1427 					{
// 1428 						shape_right = 0;
        MOVS     R7,#+0
// 1429 						range_width_right = rightEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+6]
// 1430 						range_height_right = i;
        STRH     R4,[SP, #+0]
// 1431 						sum_right++;
        ADDS     R8,R8,#+1
        B.N      ??EdgeIrregular_51
// 1432 					}
// 1433 				}
// 1434 			}
// 1435 		}
// 1436 		else if (0 == shape_right)//凹找凸
??EdgeIrregular_50:
        MOVS     R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.W    ??EdgeIrregular_51
// 1437 		{
// 1438 			if (i > row_right_end && i <= row_right_begin)
        LDR.W    R0,??DataTable21_3
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??EdgeIrregular_51
        LDR.W    R0,??DataTable21_4
        LDRSH    R0,[R0, #+0]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.W    ??EdgeIrregular_51
// 1439 			{
// 1440 				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
        LDR.W    R9,??DataTable21_5
        MOVS     R2,#+10
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R1,[R9, R0, LSL #+1]
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       get_height
        MOV      R10,R0
        SUBS     R10,R4,R10
// 1441 				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
        LDRH     R0,[SP, #+6]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDR.W    R11,??DataTable21_2
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??EdgeIrregular_51
        LDRH     R0,[SP, #+0]
        SUBS     R0,R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        LDRSH    R1,[SP, #+0]
        LDRSH    R2,[R11, R1, LSL #+1]
        LDRSH    R1,[SP, #+0]
        LDRH     R1,[R11, R1, LSL #+1]
        LDRSH    R3,[SP, #+0]
        LDRH     R3,[R11, R3, LSL #+1]
        SMULBB   R1,R1,R3
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       JudgeNumInterval
        CMP      R0,#+1
        BNE.N    ??EdgeIrregular_51
// 1442 				{
// 1443 					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BLT.N    ??EdgeIrregular_51
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R11, R0, LSL #+1]
        ADDS     R0,R0,#+2
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R0,R10
        BLT.N    ??EdgeIrregular_51
// 1444 					{
// 1445 						for (j = i; j >= Max(i - 3, row_right_end); j--)
        MOV      R10,R4
        B.N      ??EdgeIrregular_52
??EdgeIrregular_53:
        SUBS     R10,R10,#+1
??EdgeIrregular_52:
        LDR.N    R0,??DataTable21_3
        LDRSH    R1,[R0, #+0]
        SUBS     R0,R4,#+3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Max
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_51
// 1446 						{
// 1447 							if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] && my_abs(rightEdge[i] - rightEdge[i + 1]) <= CAR_JOIN_templ[i])
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        MOV      R1,R10
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R9, R1, LSL #+1]
        CMP      R0,R1
        BGE.N    ??EdgeIrregular_53
        MOV      R0,R10
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRH     R1,[R9, R1, LSL #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_53
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRH     R0,[R9, R0, LSL #+1]
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        ADD      R1,R9,R1, LSL #+1
        LDRH     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R1,[R11, R1, LSL #+1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BLT.N    ??EdgeIrregular_53
// 1448 							{
// 1449 								shape_right = 1;
        MOVS     R7,#+1
// 1450 								range_width_right = rightEdge[i];
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRSH    R0,[R9, R0, LSL #+1]
        STRH     R0,[SP, #+6]
// 1451 								range_height_right = i;
        STRH     R4,[SP, #+0]
// 1452 								sum_right++;
        ADDS     R8,R8,#+1
// 1453 								break;
// 1454 							}
// 1455 						}
// 1456 					}
// 1457 				}
// 1458 			}//if
// 1459 		}//else
// 1460 
// 1461 		if (sum_left >= 2 && sum_right >= 2 && i >= FWD_40CM)
??EdgeIrregular_51:
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BLT.W    ??EdgeIrregular_35
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BLT.W    ??EdgeIrregular_35
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+28
        BLT.W    ??EdgeIrregular_35
// 1462 		{
// 1463 			return 100;
        MOVS     R0,#+100
        B.N      ??EdgeIrregular_3
// 1464 		}
// 1465 		/**********************************************二次检测结束**********************************************/
// 1466 	}//for
// 1467 
// 1468 	/**********************************************双边检测结束**********************************************/
// 1469 	return (sum_left + sum_right);
??EdgeIrregular_36:
        ADDS     R6,R8,R6
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
??EdgeIrregular_3:
        POP      {R1-R11,PC}      ;; return
// 1470 }
// 1471 
// 1472 //汇车区标志位

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1473 void CarJoinArea_Flag(void)
// 1474 {
// 1475 }
CarJoinArea_Flag:
        BX       LR               ;; return
// 1476 
// 1477 //汇车区补线

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1478 void InCarJoinArea(void)
// 1479 {
// 1480 }
InCarJoinArea:
        BX       LR               ;; return
// 1481 //前瞻预判 保证前瞻不丢失信息

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1482 void FWD_Compensate(void)
// 1483 {
FWD_Compensate:
        PUSH     {R5-R7,LR}
// 1484 	if (row_end_center < FWD_45CM)
        LDR.N    R0,??DataTable21_6
        LDRSH    R1,[R0, #+0]
        CMP      R1,#+26
        BLT.N    ??FWD_Compensate_0
// 1485 	{
// 1486 		return;
// 1487 	}
// 1488 	else
// 1489 	{
// 1490 		if (row_end_center > IMG_BEGIN)
??FWD_Compensate_1:
        LDRSH    R1,[R0, #+0]
        CMP      R1,#+56
        BLT.N    ??FWD_Compensate_2
// 1491 		{
// 1492 			AlterParam_Line(row_end_center, FWD_45CM, row_end_center, img_centers[row_end_center], IMG_BEGIN, IMG_COL_CENTER, img_centers);
        LDR.N    R1,??DataTable21_7
        STR      R1,[SP, #+8]
        MOVS     R2,#+79
        STR      R2,[SP, #+4]
        MOVS     R2,#+55
        STR      R2,[SP, #+0]
        LDRSH    R2,[R0, #+0]
        LDRSH    R3,[R1, R2, LSL #+1]
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+26
        LDRSH    R0,[R0, #+0]
        BL       AlterParam_Line
        B.N      ??FWD_Compensate_3
// 1493 		}
// 1494 		else
// 1495 		{
// 1496 			AlterParam_Line(row_end_center, FWD_45CM, row_end_center, img_centers[row_end_center], IMG_BEGIN, img_centers[IMG_BEGIN], img_centers);
??FWD_Compensate_2:
        LDR.N    R1,??DataTable21_7
        STR      R1,[SP, #+8]
        LDRSH    R2,[R1, #+110]
        STR      R2,[SP, #+4]
        MOVS     R2,#+55
        STR      R2,[SP, #+0]
        LDRSH    R2,[R0, #+0]
        LDRSH    R3,[R1, R2, LSL #+1]
        LDRSH    R2,[R0, #+0]
        MOVS     R1,#+26
        LDRSH    R0,[R0, #+0]
        BL       AlterParam_Line
// 1497 		}
// 1498 	}
// 1499 }
??FWD_Compensate_3:
??FWD_Compensate_0:
        POP      {R0-R2,PC}       ;; return
// 1500 //中心线滤波

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1501 void CenterFilter(void)
// 1502 {
// 1503 	int16 i;
// 1504 	for (i = IMG_BOTTOM - 1; i >= row_end_center; i--)
CenterFilter:
        MOVS     R1,#+68
        B.N      ??CenterFilter_0
// 1505 	{
// 1506 		if (BLACK == imgbuff[i][img_centers[i]])
??CenterFilter_1:
        LDR.N    R2,??DataTable21_7
        LDR.N    R0,??DataTable21_8
        MOVS     R3,#+80
        SMULBB   R3,R1,R3
        ADD      R0,R0,R3
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        LDRSH    R3,[R2, R3, LSL #+1]
        LDRB     R0,[R0, R3]
        CMP      R0,#+0
        BNE.N    ??CenterFilter_2
// 1507 		{
// 1508 			img_centers[i] = img_centers[i + 1];
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADD      R0,R2,R0, LSL #+1
        LDRH     R0,[R0, #+2]
        MOVS     R3,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        STRH     R0,[R2, R3, LSL #+1]
// 1509 		}
// 1510 	}
??CenterFilter_2:
        SUBS     R1,R1,#+1
??CenterFilter_0:
        MOVS     R0,R1
        LDR.N    R2,??DataTable21_6
        LDRSH    R2,[R2, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R2
        BGE.N    ??CenterFilter_1
// 1511 }
        BX       LR               ;; return
// 1512 //加减速标志位

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1513 void JudgeFast(void)
// 1514 {
JudgeFast:
        PUSH     {R4,LR}
// 1515   int16 col;
// 1516 
// 1517   for(col = 75;col <= 85;col++)
        MOVS     R4,#+75
        B.N      ??JudgeFast_0
// 1518   {
// 1519     FastVal += get_height(IMG_BOTTOM,col,IMG_TOP);
??JudgeFast_1:
        MOVS     R2,#+10
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,#+69
        BL       get_height
        LDR.N    R1,??DataTable21_9
        LDRH     R2,[R1, #+0]
        ADDS     R0,R0,R2
        STRH     R0,[R1, #+0]
// 1520   }
        ADDS     R4,R4,#+1
??JudgeFast_0:
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+86
        BLT.N    ??JudgeFast_1
// 1521   
// 1522   FastVal = (int16)(FastVal / 10);
        LDR.N    R0,??DataTable21_9
        LDRSH    R1,[R0, #+0]
        MOVS     R2,#+10
        SDIV     R1,R1,R2
        STRH     R1,[R0, #+0]
// 1523   
// 1524   FastVal = FastVal - IMG_TOP;
        LDRH     R1,[R0, #+0]
        SUBS     R1,R1,#+10
        STRH     R1,[R0, #+0]
// 1525   if(FastVal <= 0)
        LDRSH    R1,[R0, #+0]
        CMP      R1,#+1
        BGE.N    ??JudgeFast_2
// 1526   { FastVal = 0;}
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1527 }
??JudgeFast_2:
        POP      {R4,PC}          ;; return
// 1528 //初始行驶双边停靠

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1529 void FirstCarRun(void)
// 1530 {
// 1531 }
FirstCarRun:
        BX       LR               ;; return
// 1532 //斑马线判定

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1533 int16 zebra_Flag()
// 1534 {
// 1535   return 0;
zebra_Flag:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1536 }
// 1537 
// 1538 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1539 void get_img_center(void)
// 1540 {
get_img_center:
        PUSH     {R4,LR}
// 1541   static int16 img_cnt = 0;
// 1542   //===========================================忽略初始五帧图像===========================================//
// 1543   if(img_cnt < 5)
        LDR.N    R4,??DataTable21_10
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+5
        BGE.N    ??get_img_center_0
// 1544   {
// 1545     if(0 == img_cnt)
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??get_img_center_1
// 1546     {
// 1547       AlterParam_Clear(IMG_ROWS - 1,0,leftEdge,IMG_LEFT);
        MOVS     R3,#+1
        LDR.N    R2,??DataTable21_1
        MOVS     R1,#+0
        MOVS     R0,#+59
        BL       AlterParam_Clear
// 1548       AlterParam_Clear(IMG_ROWS - 1,0,rightEdge,IMG_RIGHT);
        MOVS     R3,#+158
        LDR.N    R2,??DataTable21_5
        MOVS     R1,#+0
        MOVS     R0,#+59
        BL       AlterParam_Clear
// 1549       AlterParam_Clear(IMG_ROWS - 1,0,img_centers,IMG_COL_CENTER);
        MOVS     R3,#+79
        LDR.N    R2,??DataTable21_7
        MOVS     R1,#+0
        MOVS     R0,#+59
        BL       AlterParam_Clear
// 1550     }
// 1551     img_cnt++;
??get_img_center_1:
        LDRH     R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+0]
// 1552     return;
        B.N      ??get_img_center_2
// 1553   }
// 1554   //===========================================忽略初始五帧图像===========================================//
// 1555   
// 1556   //===========================================初始化边缘信息===========================================//
// 1557   
// 1558   ImageParamInit();
??get_img_center_0:
        BL       ImageParamInit
// 1559   JudgeFast();
        BL       JudgeFast
// 1560   
// 1561   fstpoint = GetFirstCenter();
        LDR.N    R4,??DataTable21_11
        BL       GetFirstCenter
        STRH     R0,[R4, #+0]
// 1562   if(-1 == fstpoint)
        LDRSH    R0,[R4, #+0]
        CMN      R0,#+1
        BEQ.N    ??get_img_center_2
// 1563   {
// 1564     return;
// 1565   }
// 1566   EdgeInit();
??get_img_center_3:
        BL       EdgeInit
// 1567   
// 1568   //===========================================初始化边缘信息===========================================//
// 1569   
// 1570   
// 1571   //===========================================标志位判断开始===========================================//
// 1572   leftFold = GetEdgeInflex(row_left_begin, row_left_end, leftEdge,IMG_LEFT);
        MOVS     R3,#+1
        LDR.N    R2,??DataTable21_1
        LDR.N    R0,??DataTable21
        LDRSH    R1,[R0, #+0]
        LDR.N    R0,??DataTable21_12
        LDRSH    R0,[R0, #+0]
        BL       GetEdgeInflex
        LDR.N    R1,??DataTable21_13
        STRH     R0,[R1, #+0]
// 1573   rightFold = GetEdgeInflex(row_right_begin, row_right_end, rightEdge,IMG_RIGHT);  
        MOVS     R3,#+158
        LDR.N    R2,??DataTable21_5
        LDR.N    R0,??DataTable21_3
        LDRSH    R1,[R0, #+0]
        LDR.N    R0,??DataTable21_4
        LDRSH    R0,[R0, #+0]
        BL       GetEdgeInflex
        LDR.N    R1,??DataTable21_14
        STRH     R0,[R1, #+0]
// 1574   
// 1575   //...省略...//
// 1576   //===========================================标志位判断结束===========================================//
// 1577   
// 1578   //...省略...//
// 1579   //===========================================矫正边缘开始===========================================//
// 1580   
// 1581   //...省略...//
// 1582   //===========================================矫正边缘结束===========================================//
// 1583 
// 1584   for(int16 i = IMG_BOTTOM;i >= IMG_TOP;i--)
        MOVS     R0,#+69
        B.N      ??get_img_center_4
// 1585   {
// 1586     if(img_centers[i] >= IMG_RIGHT)
// 1587     { img_centers[i] = IMG_RIGHT; }
// 1588     else if(img_centers[i] <= IMG_LEFT)
??get_img_center_5:
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R1, R2, LSL #+1]
        CMP      R2,#+2
        BGE.N    ??get_img_center_6
// 1589     { img_centers[i] = IMG_LEFT; }
        MOVS     R2,#+1
        MOVS     R3,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        STRH     R2,[R1, R3, LSL #+1]
        B.N      ??get_img_center_6
??get_img_center_7:
        LDR.N    R1,??DataTable21_7
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDRSH    R2,[R1, R2, LSL #+1]
        CMP      R2,#+158
        BLT.N    ??get_img_center_5
        MOVS     R2,#+158
        MOVS     R3,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        STRH     R2,[R1, R3, LSL #+1]
// 1590   }
??get_img_center_6:
        SUBS     R0,R0,#+1
??get_img_center_4:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+10
        BGE.N    ??get_img_center_7
// 1591 }
??get_img_center_8:
??get_img_center_2:
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`get_img_center::img_cnt`:
        DS8 2
// 1592 
// 1593 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1594 int16 get_img_error()
// 1595 {
get_img_error:
        PUSH     {R2-R6,LR}
// 1596   int16 FWD_BUF[3];
// 1597   int16 out_val; 
// 1598   
// 1599   FWD_BUF[0] = FWD_45CM;
        MOVS     R0,#+26
        STRH     R0,[SP, #+0]
// 1600   FWD_BUF[1] = FWD_BUF[0] + 1;
        MOV      R4,SP
        LDRH     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+2]
// 1601   FWD_BUF[2] = FWD_BUF[0] + 2;
        LDRH     R0,[SP, #+0]
        ADDS     R0,R0,#+2
        STRH     R0,[R4, #+4]
// 1602   
// 1603   out_val = (int16)(img_centers[FWD_BUF[0]] * 0.5f + img_centers[FWD_BUF[1]] *0.3f + img_centers[FWD_BUF[2]] * 0.2f);
        LDR.N    R5,??DataTable21_7
        LDRSH    R0,[SP, #+0]
        LDRSH    R0,[R5, R0, LSL #+1]
        BL       __aeabi_i2f
        MOVS     R1,#+1056964608
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDRSH    R0,[R4, #+2]
        LDRSH    R0,[R5, R0, LSL #+1]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable21_15  ;; 0x3e99999a
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R6,R0
        LDRSH    R0,[R4, #+4]
        LDRSH    R0,[R5, R0, LSL #+1]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable21_16  ;; 0x3e4ccccd
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
// 1604   
// 1605   out_val = IMG_COL_CENTER - out_val;
        RSBS     R0,R0,#+79
// 1606   if(out_val >= IMG_COL_CENTER)
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+79
        BLT.N    ??get_img_error_0
// 1607   { out_val = IMG_COL_CENTER;}
        MOVS     R0,#+79
        B.N      ??get_img_error_1
// 1608   else if(out_val <= -IMG_COL_CENTER)
??get_img_error_0:
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMN      R1,#+78
        BGE.N    ??get_img_error_1
// 1609   { out_val = -IMG_COL_CENTER;}
        MVNS     R0,#+78
// 1610   return out_val;
??get_img_error_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4-R6,PC}  ;; return
// 1611 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DATA32
        DC32     row_left_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DATA32
        DC32     leftEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DATA32
        DC32     CAR_JOIN_templ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_3:
        DATA32
        DC32     row_right_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_4:
        DATA32
        DC32     row_right_begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_5:
        DATA32
        DC32     rightEdge

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_6:
        DATA32
        DC32     row_end_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_7:
        DATA32
        DC32     img_centers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_8:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_9:
        DATA32
        DC32     FastVal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_10:
        DATA32
        DC32     `get_img_center::img_cnt`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_11:
        DATA32
        DC32     fstpoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_12:
        DATA32
        DC32     row_left_begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_13:
        DATA32
        DC32     leftFold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_14:
        DATA32
        DC32     rightFold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_15:
        DATA32
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_16:
        DATA32
        DC32     0x3e4ccccd

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1612 
// 1613 
// 
//    368 bytes in section .bss
//     12 bytes in section .data
//  1 244 bytes in section .rodata
// 10 732 bytes in section .text
// 
// 10 732 bytes of CODE  memory
//  1 244 bytes of CONST memory
//    380 bytes of DATA  memory
//
//Errors: none
//Warnings: 5
