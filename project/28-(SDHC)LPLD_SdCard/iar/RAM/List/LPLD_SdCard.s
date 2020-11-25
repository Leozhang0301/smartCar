///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:18
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW3CAE.tmp
//        ("C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c"
//        -D LPLD_K60 -lCN
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\LPLD_SdCard.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Camera_Init
        EXTERN Car_Control
        EXTERN DMA_flag
        EXTERN IMG_Handle
        EXTERN KeyBoard_Init
        EXTERN LCD_CLS
        EXTERN LCD_Init
        EXTERN LCD_Write_Int
        EXTERN Menu
        EXTERN Unzip
        EXTERN encorder_init
        EXTERN fieldCnt
        EXTERN get_img
        EXTERN init_Motor
        EXTERN l2_reSpeed
        EXTERN light_flag
        EXTERN pit_init
        EXTERN r1_reSpeed
        EXTERN r2_reSpeed

        PUBLIC DMA_buffer
        PUBLIC System_Init
        PUBLIC main

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c
//    1 
//    2 #include "common.h"
//    3 #include "include.h"
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void System_Init(void)
//    7 {
System_Init:
        PUSH     {R7,LR}
//    8 	LCD_Init(); 
        BL       LCD_Init
//    9     LCD_CLS();
        BL       LCD_CLS
//   10 	KeyBoard_Init();
        BL       KeyBoard_Init
//   11 	//Encoder_Init();
//   12 	//SteeringGear_Init();
//   13       //flash_init();
//   14        // Bluetooth_Init();
//   15        // ADC_Init();
//   16 	Camera_Init();
        BL       Camera_Init
//   17     //Param_Init();
//   18         //User_Flash_Read();
//   19 	//pit0_init();
//   20     init_Motor();
        BL       init_Motor
//   21     //init_PID();
//   22     encorder_init();
        BL       encorder_init
//   23     pit_init();
        BL       pit_init
//   24 
//   25 }
        POP      {R0,PC}          ;; return
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void DMA_buffer(uint8 flag)
//   28 {
DMA_buffer:
        PUSH     {R7,LR}
//   29   if(flag)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DMA_buffer_0
//   30   {
//   31     Unzip(fieldCnt,pixels);
        MOV      R1,#+1200
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        BL       Unzip
//   32     //img_num++;
//   33     IMG_Handle();
        BL       IMG_Handle
//   34     
//   35    // send_img_data();
//   36    // Scan_Point();
//   37 
//   38    Menu();
        BL       Menu
//   39     DMA_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   40   }
//   41 }
??DMA_buffer_0:
        POP      {R0,PC}          ;; return
//   42 
//   43 //extern int tuxiang ;;

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void main(void)
//   45 {
main:
        PUSH     {R7,LR}
//   46   /*---------------------关中断---------------------*/
//   47   //DisableInterrupts;
//   48   /*------------------单片机初始化------------------*/
//   49   System_Init();
        BL       System_Init
//   50   /*---------------------开中断---------------------*/
//   51   //EnableInterrupts; 
//   52 
//   53   while(1)
//   54   {
//   55 //          get_img();
//   56 //    DMA_buffer(DMA_flag);
//   57 
//   58     get_img(); //变动
??main_0:
        BL       get_img
//   59     DMA_buffer(DMA_flag);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        BL       DMA_buffer
//   60      Car_Control();
        BL       Car_Control
//   61      LCD_Write_Int(80, 1, light_flag);        
        LDR.N    R0,??DataTable2_2
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+1
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   62      LCD_Write_Int(80, 2, r1_reSpeed);
        LDR.N    R0,??DataTable2_3
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   63      LCD_Write_Int(80, 3, r2_reSpeed);
        LDR.N    R0,??DataTable2_4
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+3
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   64      LCD_Write_Int(100, 6, l2_reSpeed); 
        LDR.N    R0,??DataTable2_5
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+6
        MOVS     R0,#+100
        BL       LCD_Write_Int
        B.N      ??main_0
//   65 
//   66 //     LCD_Write_Int(80, 1, l1_reSpeed);        
//   67 //     LCD_Write_Int(80, 2, light_x);
//   68 //     LCD_Write_Int(80, 3, light_y);
//   69 //     LCD_Write_Int(100, 6, fps1_n);     
//   70 
//   71   } 
//   72 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     fieldCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     DMA_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     light_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     r1_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     r2_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     l2_reSpeed

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   73 
//   74 
//   75 
//   76 
//   77 
// 
// 172 bytes in section .text
// 
// 172 bytes of CODE memory
//
//Errors: none
//Warnings: none
