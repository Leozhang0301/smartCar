///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:50
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW45E2.tmp
//        ("G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c"
//        -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\LPLD_SdCard.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Bluetooth_Encoder
        EXTERN Buzzer
        EXTERN CarModel
        EXTERN DMA_flag
        EXTERN LCD_Init
        EXTERN LCD_Write_Int
        EXTERN Menu
        EXTERN Unzip
        EXTERN angle_update
        EXTERN fieldCnt
        EXTERN get_img_center
        EXTERN ic_init
        EXTERN isStop
        EXTERN left_reSpeed
        EXTERN pit_init
        EXTERN right_reSpeed

        PUBLIC System_Init
        PUBLIC dma_buffer
        PUBLIC main

// G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\app\LPLD_SdCard.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include "common.h"
//    7 #include "include.h"
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void System_Init(void)
//   10 {
System_Init:
        PUSH     {R7,LR}
//   11 	LCD_Init(); 
        BL       LCD_Init
//   12 	//KeyBoard_Init();
//   13 	//Encoder_Init();
//   14 	//SteeringGear_Init();
//   15 	//Motor_Init();
//   16         //flash_init();
//   17        // Bluetooth_Init();
//   18        // ADC_Init();
//   19 	//Camera_Init();
//   20     //Param_Init();
//   21         //User_Flash_Read();
//   22 	//pit0_init();
//   23     //init_Motor();
//   24      //ic_isr();
//   25    // Motor_control();
//   26         ic_init();
        BL       ic_init
//   27         pit_init();
        BL       pit_init
//   28 }
        POP      {R0,PC}          ;; return
//   29 
//   30 /*
//   31  *@功能说明：摄像头场函数
//   32  *@方法：
//   33  *
//   34  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void dma_buffer(void)
//   36 {
dma_buffer:
        PUSH     {R4,LR}
//   37   if(1 == DMA_flag)
        LDR.N    R4,??DataTable2
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??dma_buffer_0
//   38   {
//   39     Unzip(fieldCnt,pixels);
        MOV      R1,#+2400
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        BL       Unzip
//   40     
//   41     if(isStop) 
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??dma_buffer_1
//   42     { 
//   43       get_img_center();
        BL       get_img_center
//   44       angle_update();
        BL       angle_update
//   45     }
//   46     
//   47     //双车模式开启蓝牙
//   48     if(1 == CarModel)
??dma_buffer_1:
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??dma_buffer_2
//   49     {
//   50       Bluetooth_Encoder();
        BL       Bluetooth_Encoder
//   51     }
//   52     
//   53     Buzzer();
??dma_buffer_2:
        BL       Buzzer
//   54     
//   55     Menu();
        BL       Menu
//   56     DMA_flag = 0; 
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//   57   }
//   58 }
??dma_buffer_0:
        POP      {R4,PC}          ;; return
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void main(void)
//   61 {
main:
        PUSH     {R7,LR}
//   62   /*---------------------关中断---------------------*/
//   63   //DisableInterrupts;
//   64   /*------------------单片机初始化------------------*/
//   65   System_Init();
        BL       System_Init
//   66   /*---------------------开中断---------------------*/
//   67  // EnableInterrupts; 
//   68 
//   69   while(1)
//   70   {
//   71 	  LCD_Write_Int(5, 5, left_reSpeed);
??main_0:
        LDR.N    R0,??DataTable2_4
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+5
        MOVS     R0,#+5
        BL       LCD_Write_Int
//   72           LCD_Write_Int(10, 5, right_reSpeed);
        LDR.N    R0,??DataTable2_5
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+5
        MOVS     R0,#+10
        BL       LCD_Write_Int
        B.N      ??main_0
//   73     //get_img();
//   74     //dma_buffer();
//   75 
//   76   } 
//   77 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     DMA_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     fieldCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     isStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     CarModel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     left_reSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     right_reSpeed

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   78 
//   79 
// 
// 140 bytes in section .text
// 
// 140 bytes of CODE memory
//
//Errors: none
//Warnings: 2
