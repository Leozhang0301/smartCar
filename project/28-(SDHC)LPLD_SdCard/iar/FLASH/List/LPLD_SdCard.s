///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  22:58:50
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW4656.tmp
//        ("G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c"
//        -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\LPLD_SdCard.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Bluetooth_Init
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
        EXTERN hongwai_init
        EXTERN init_Motor
        EXTERN light_x
        EXTERN light_y
        EXTERN pit_init

        PUBLIC DMA_buffer
        PUBLIC System_Init
        PUBLIC main

// G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c
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
//    8     LCD_Init(); 
        BL       LCD_Init
//    9     LCD_CLS();
        BL       LCD_CLS
//   10     KeyBoard_Init();
        BL       KeyBoard_Init
//   11     //Encoder_Init();
//   12     //SteeringGear_Init();
//   13     //flash_init();
//   14      Bluetooth_Init();
        BL       Bluetooth_Init
//   15     // ADC_Init();
//   16     Camera_Init();
        BL       Camera_Init
//   17     //Param_Init();
//   18     //User_Flash_Read();
//   19     //pit0_init();
//   20     init_Motor();
        BL       init_Motor
//   21     //init_PID();
//   22     encorder_init();
        BL       encorder_init
//   23     hongwai_init();
        BL       hongwai_init
//   24     pit_init();
        BL       pit_init
//   25     //ShowMainMune();
//   26 
//   27 }
        POP      {R0,PC}          ;; return
//   28 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void DMA_buffer(uint8 flag)
//   30 {
DMA_buffer:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   31   if(flag)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DMA_buffer_0
//   32   {
//   33     Unzip(fieldCnt,pixels);
        MOV      R1,#+600
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        BL       Unzip
//   34     //img_num++;
//   35     IMG_Handle();
        BL       IMG_Handle
//   36     
//   37    // send_img_data();
//   38    // Scan_Point();
//   39 
//   40    Menu();
        BL       Menu
//   41    // img_display();
//   42     DMA_flag=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   43   }
//   44 }
??DMA_buffer_0:
        POP      {R4,PC}          ;; return
//   45 
//   46 //extern int tuxiang ;;

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void main(void)
//   48 {
main:
        PUSH     {R7,LR}
//   49   /*---------------------关中断---------------------*/
//   50   //DisableInterrupts;
//   51   /*------------------单片机初始化------------------*/
//   52   System_Init();
        BL       System_Init
//   53   /*---------------------开中断---------------------*/
//   54   //EnableInterrupts; 
//   55 
//   56   while(1)
//   57   {
//   58     //Key_detect();
//   59           get_img();
??main_0:
        BL       get_img
//   60     DMA_buffer(DMA_flag);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        BL       DMA_buffer
//   61 
//   62 //    get_img(); //变动
//   63 //    DMA_buffer(DMA_flag);
//   64      Car_Control();
        BL       Car_Control
//   65 //     LCD_Write_Int(80, 1, r1_reSpeed);
//   66 //     LCD_Write_Int(80, 2, l1_reSpeed);
//   67 //     LCD_Write_Int(80, 3, r2_reSpeed);
//   68 //     LCD_Write_Int(80, 4, l2_reSpeed);
//   69 
//   70 //     LCD_Write_Int(80, 1, l1_reSpeed);        
//   71      LCD_Write_Int(100, 2, light_x);
        LDR.N    R0,??DataTable2_2
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+2
        MOVS     R0,#+100
        BL       LCD_Write_Int
//   72      LCD_Write_Int(100, 3, light_y);
        LDR.N    R0,??DataTable2_3
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+3
        MOVS     R0,#+100
        BL       LCD_Write_Int
//   73      LCD_Write_Int(100, 4, 1);
        MOVS     R2,#+1
        MOVS     R1,#+4
        MOVS     R0,#+100
        BL       LCD_Write_Int
        B.N      ??main_0
//   74           //LCD_Write_Int(100, 5, baidian);
//   75      //LCD_Write_Int(100, 5, KeyValue);
//   76      //fusion_visualscope(l1_reSpeed,r1_reSpeed,r2_reSpeed,l2_reSpeed);
//   77   } 
//   78 }

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
        DC32     light_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     light_y

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   79 
//   80 
//   81 
//   82 
//   83 
// 
// 158 bytes in section .text
// 
// 158 bytes of CODE memory
//
//Errors: none
//Warnings: none
