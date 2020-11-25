///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:40:55
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\hongwai.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW61BC.tmp
//        (G:\AIcar\@@\xiugai\lib\common\hongwai.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\hongwai.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC biZhang
        PUBLIC daoche
        PUBLIC daoche_flag
        PUBLIC daoche_num
        PUBLIC hongwai_init
        PUBLIC hongwai_init_structor

// G:\AIcar\@@\xiugai\lib\common\hongwai.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 GPIO_InitTypeDef hongwai_init_structor;
hongwai_init_structor:
        DS8 20
//    4 void hongwai_init();
//    5 void biZhang();
//    6 u8 daoche();
//    7 
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 int daoche_num=0;
daoche_num:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 int daoche_flag=0;
daoche_flag:
        DS8 4
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void hongwai_init()
//   13 {
hongwai_init:
        PUSH     {R2-R4,LR}
//   14   hongwai_init_structor.GPIO_PTx = PTA;
        LDR.N    R4,??DataTable1
        LDR.N    R0,??DataTable1_1  ;; 0x400ff000
        STR      R0,[R4, #+0]
//   15   hongwai_init_structor.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   16   hongwai_init_structor.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[R4, #+8]
//   17   hongwai_init_structor.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        STR      R0,[R4, #+4]
//   18   LPLD_GPIO_Init(hongwai_init_structor);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   19   
//   20   hongwai_init_structor.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable1_2  ;; 0x400ff040
        STR      R0,[R4, #+0]
//   21   hongwai_init_structor.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   22   hongwai_init_structor.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[R4, #+8]
//   23   hongwai_init_structor.GPIO_Pins = GPIO_Pin5;
        MOVS     R0,#+32
        STR      R0,[R4, #+4]
//   24   LPLD_GPIO_Init(hongwai_init_structor);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   25 }
        POP      {R0,R1,R4,PC}    ;; return
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void biZhang()
//   28 {
//   29 //  if(PTA17_I==0)
//   30 //  {
//   31 //    //×ó±ÜÕÏ
//   32 //    bizhang_flag1=1;
//   33 //    LCD_Write_Int(80,2,1);
//   34 //  }
//   35 //  else if(PTB5_I==0)
//   36 //  {
//   37 //    //ÓÒ±ÜÕÏ
//   38 //        bizhang_flag1=2;
//   39 //    LCD_Write_Int(80,2,0);
//   40 //  }
//   41 //  else if(PTA17_I==0&&PTB5_I==0)
//   42 //  {
//   43 //    //×ó±ÜÕÏ
//   44 //        bizhang_flag1=3;
//   45 //  }
//   46 //  else
//   47 //  {
//   48 //    //›]ÓÐ±ÜÕÏ
//   49 //   // bizhang_flag1=0;
//   50 //  }
//   51 }
biZhang:
        BX       LR               ;; return
//   52   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 u8 daoche()
//   54 {
//   55     if(PTA17_I==0&&PTB5_I==0)
daoche:
        LDR.N    R0,??DataTable1_3  ;; 0x43fe0244
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??daoche_0
        LDR.N    R0,??DataTable1_4  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??daoche_0
//   56     {
//   57        daoche_num++;
        LDR.N    R0,??DataTable1_5
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??daoche_1
//   58     }
//   59     else
//   60     {
//   61       daoche_num=0;
??daoche_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+0]
//   62     }
//   63     if(daoche_num>=500&&daoche_num<=1000)
//   64     {
//   65       //µ¹³µ
//   66       //daoche_flag=1;
//   67     }
//   68 }
??daoche_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     hongwai_init_structor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     0x43fe0244

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     0x43fe0a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     daoche_num

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  28 bytes in section .bss
// 136 bytes in section .text
// 
// 136 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: 1
