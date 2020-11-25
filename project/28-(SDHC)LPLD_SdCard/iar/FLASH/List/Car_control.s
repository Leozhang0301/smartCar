///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:40:53
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\Car_control.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW5A91.tmp
//        (G:\AIcar\@@\xiugai\lib\common\Car_control.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\Car_control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Barrier_flag
        EXTERN Speed_Conversion
        EXTERN basic_speed
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
        PUBLIC niupiancha
        PUBLIC zbpiancha

// G:\AIcar\@@\xiugai\lib\common\Car_control.c
//    1 #include "Car_Control.h"
//    2 //#include "SEEKFREE_MT9V032.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 float Distance;
Distance:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    5 u8 force_left =0;
force_left:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    6 u8 force_right = 0;
force_right:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    7 s16 Barrier_X=0;
Barrier_X:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    8 s16 Barrier_Y=0;
Barrier_Y:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//    9 s16 zbpiancha=20;//已調好
zbpiancha:
        DATA16
        DC16 20

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   10 s16 niupiancha=40;//已調好
niupiancha:
        DATA16
        DC16 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 int congcongcong = 0;
congcongcong:
        DS8 4
//   12 //static u16 beacon_maybe_blocked =0;

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   13 void Car_Control()
//   14 {
Car_Control:
        PUSH     {R7,LR}
//   15   delay_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0
        STRB     R0,[R1, #+0]
//   16   Barrier_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x4
        STRB     R0,[R1, #+0]
//   17   force_left =0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x8
        STRB     R0,[R1, #+0]
//   18 if(light_flag)
        LDR.N    R0,??Car_Control_0+0xC
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Car_Control_1
//   19 {
//   20 
//   21       if(light_y <40)
        LDR.N    R0,??Car_Control_0+0x10
        LDR      R1,[R0, #+0]
        CMP      R1,#+40
        BGE.N    ??Car_Control_2
//   22       {
//   23            set_speed_l = 0;
        MOVS     R1,#+0
        LDR.N    R2,??Car_Control_0+0x14
        STRB     R1,[R2, #+0]
//   24           set_speed_s = basic_speed;
        LDR.N    R1,??Car_Control_0+0x18
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??Car_Control_0+0x1C
        STRH     R1,[R2, #+0]
//   25           excursion_x = light_x;   
        LDR.N    R1,??Car_Control_0+0x20
        LDR      R1,[R1, #+0]
        LDR.N    R2,??Car_Control_0+0x24
        STRH     R1,[R2, #+0]
//   26           excursion_y = light_y+zbpiancha;
        LDR      R1,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x28
        LDRH     R0,[R0, #+0]
        ADDS     R1,R0,R1
        LDR.N    R0,??Car_Control_0+0x2C
        STRH     R1,[R0, #+0]
        B.N      ??Car_Control_3
//   27       }
//   28       else
//   29       {
//   30           set_speed_l = 0;
??Car_Control_2:
        MOVS     R1,#+0
        LDR.N    R2,??Car_Control_0+0x14
        STRB     R1,[R2, #+0]
//   31           
//   32           set_speed_s = basic_speed;
        LDR.N    R1,??Car_Control_0+0x18
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??Car_Control_0+0x1C
        STRH     R1,[R2, #+0]
//   33           excursion_x = light_x;   
        LDR.N    R1,??Car_Control_0+0x20
        LDR      R1,[R1, #+0]
        LDR.N    R2,??Car_Control_0+0x24
        STRH     R1,[R2, #+0]
//   34           excursion_y = light_y+niupiancha;
        LDR      R1,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x30
        LDRH     R0,[R0, #+0]
        ADDS     R1,R0,R1
        LDR.N    R0,??Car_Control_0+0x2C
        STRH     R1,[R0, #+0]
        B.N      ??Car_Control_3
//   35       }
//   36 
//   37 }
//   38  
//   39   else
//   40   {
//   41          set_speed_l=0;
??Car_Control_1:
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x14
        STRB     R0,[R1, #+0]
//   42          excursion_x = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x24
        STRH     R0,[R1, #+0]
//   43          excursion_y = 0;
        MOVS     R0,#+0
        LDR.N    R1,??Car_Control_0+0x2C
        STRH     R0,[R1, #+0]
//   44          set_speed_s = 20;
        MOVS     R0,#+20
        LDR.N    R1,??Car_Control_0+0x1C
        STRH     R0,[R1, #+0]
//   45    }
//   46   Speed_Conversion(set_speed_l,set_speed_s,excursion_x,excursion_y);
??Car_Control_3:
        LDR.N    R0,??Car_Control_0+0x2C
        LDRSH    R3,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x24
        LDRSH    R2,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x1C
        LDRSH    R1,[R0, #+0]
        LDR.N    R0,??Car_Control_0+0x14
        LDRB     R0,[R0, #+0]
        BL       Speed_Conversion
//   47 
//   48 }
        POP      {R0,PC}          ;; return
        DATA
??Car_Control_0:
        DATA32
        DC32     delay_flag
        DC32     Barrier_flag
        DC32     force_left
        DC32     light_flag
        DC32     light_y
        DC32     set_speed_l
        DC32     basic_speed
        DC32     set_speed_s
        DC32     light_x
        DC32     excursion_x
        DC32     zbpiancha
        DC32     excursion_y
        DC32     niupiancha

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   49 
// 
//  14 bytes in section .bss
//   4 bytes in section .data
// 212 bytes in section .text
// 
// 212 bytes of CODE memory
//  18 bytes of DATA memory
//
//Errors: none
//Warnings: none
