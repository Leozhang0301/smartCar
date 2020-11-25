///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:10
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Car_control.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW1D45.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Car_control.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\Car_control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Barrier_flag
        EXTERN Speed_Conversion
        EXTERN delay_flag
        EXTERN excursion_x
        EXTERN excursion_y
        EXTERN light_flag
        EXTERN light_x
        EXTERN light_y
        EXTERN set_speed_l
        EXTERN set_speed_s

        PUBLIC Barrier_X
        PUBLIC Barrier_Y
        PUBLIC Car_Control
        PUBLIC Distance
        PUBLIC congcongcong
        PUBLIC force_left
        PUBLIC force_right

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Car_control.c
//    1 #include "Car_Control.h"
//    2 //#include "SEEKFREE_MT9V032.h"
//    3 extern s16 beacon_x;
//    4 extern s16 beacon_y;
//    5 extern u8 avoid_x;
//    6 extern u8 avoid_y;
//    7 extern u8 basic_speed;
//    8 extern u8 set_speed_l;
//    9 extern s16 set_speed_s;
//   10 extern u8 Rotate_speed;
//   11 extern s16 excursion_x;  //ÐÅ±êµÆ×ø±êÆ«ÒÆ
//   12 extern s16 excursion_y;
//   13 extern u8 No_Barrier_flag ;
//   14 extern u8 COL_2;  //98
//   15 extern u8 excursion_flag;
//   16 extern u8 state_flag;
//   17 extern u8 delay_flag;
//   18 extern u8 Barrier_flag ;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 float Distance;
Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   20 u8 force_left =0;
force_left:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   21 u8 force_right = 0;
force_right:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   22 s16 Barrier_X=0;
Barrier_X:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   23 s16 Barrier_Y=0;
Barrier_Y:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   24 int congcongcong = 0;
congcongcong:
        DS8 4
//   25 //static u16 beacon_maybe_blocked =0;

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   26 void Car_Control()
//   27 {
Car_Control:
        PUSH     {R7,LR}
//   28   delay_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0
        STRB     R0,[R1, #+0]
//   29   Barrier_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x4
        STRB     R0,[R1, #+0]
//   30   force_left =0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x8
        STRB     R0,[R1, #+0]
//   31 
//   32   if(light_flag)
        LDR.N    R0,??Car_Control_0+0xC
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Car_Control_1
//   33   {
//   34         set_speed_l = 40;
        MOVS     R0,#+40
        LDR.N    R1,??Car_Control_0+0x10
        STRB     R0,[R1, #+0]
//   35         set_speed_s = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x14
        STRH     R0,[R1, #+0]
//   36         excursion_x = light_x;   
        LDR.N    R0,??Car_Control_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Car_Control_0+0x1C
        STRH     R0,[R1, #+0]
//   37         excursion_y = light_y;
        LDR.N    R0,??Car_Control_0+0x20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??Car_Control_0+0x24
        STRH     R0,[R1, #+0]
        B.N      ??Car_Control_2
//   38         
//   39   }
//   40   else
//   41   {
//   42 
//   43 
//   44 
//   45          set_speed_l=0;
??Car_Control_1:
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x10
        STRB     R0,[R1, #+0]
//   46          excursion_x = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x1C
        STRH     R0,[R1, #+0]
//   47          excursion_y = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x24
        STRH     R0,[R1, #+0]
//   48          set_speed_s = 20;
        MOVS     R0,#+20
        LDR.N    R1,??Car_Control_0+0x14
        STRH     R0,[R1, #+0]
//   49 
//   50                 
//   51    }
//   52 
//   53 
//   54   Speed_Conversion(set_speed_l,set_speed_s,excursion_x,excursion_y);
??Car_Control_2:
        LDR.N    R0,??Car_Control_0+0x24
        LDRSH    R3,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x1C
        LDRSH    R2,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x14
        LDRSH    R1,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x10
        LDRB     R0,[R0, #+0]
        BL       Speed_Conversion
//   55 
//   56 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??Car_Control_0:
        DATA32
        DC32     delay_flag
        DC32     Barrier_flag
        DC32     force_left
        DC32     light_flag
        DC32     set_speed_l
        DC32     set_speed_s
        DC32     light_x
        DC32     excursion_x
        DC32     light_y
        DC32     excursion_y

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   57 
// 
//  14 bytes in section .bss
// 152 bytes in section .text
// 
// 152 bytes of CODE memory
//  14 bytes of DATA memory
//
//Errors: none
//Warnings: none
