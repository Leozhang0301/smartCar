///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        18/May/2019  16:18:25
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\common\io.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW9E31.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\common\io.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\io.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_GetChar_Present
        EXTERN LPLD_UART_PutChar

        PUBLIC char_present
        PUBLIC in_char
        PUBLIC out_char

// C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\common\io.c
//    1 /**
//    2  * @file io.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-11-4
//    5  * @brief 串行输入/输出函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * TERMINAL_PORT为串口号，在用户工程的k60_card.h中定义
//   10  *
//   11  * 版权所有:北京拉普兰德电子技术有限公司
//   12  * http://www.lpld.cn
//   13  * mail:support@lpld.cn
//   14  *
//   15  * @par
//   16  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   17  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   18  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   19  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   20  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   21  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   22  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   23  */
//   24 
//   25 #include "common.h"
//   26 #include "HW_UART.h"
//   27 
//   28 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 int8 in_char (void)
//   30 {
in_char:
        PUSH     {R7,LR}
//   31 	return LPLD_UART_GetChar(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_GetChar
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
//   32 }
//   33 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void out_char (int8 ch)
//   35 {
out_char:
        PUSH     {R7,LR}
        MOVS     R1,R0
//   36 	LPLD_UART_PutChar(TERM_PORT, ch);
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_PutChar
//   37 }
        POP      {R0,PC}          ;; return
//   38 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 int32 char_present (void)
//   40 {
char_present:
        PUSH     {R7,LR}
//   41 	return LPLD_UART_GetChar_Present(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_GetChar_Present
        POP      {R1,PC}          ;; return
//   42 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0x400eb000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   43 /********************************************************************/
// 
// 40 bytes in section .text
// 
// 40 bytes of CODE memory
//
//Errors: none
//Warnings: none
