///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:17
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\key.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW38A6.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\key.c -D LPLD_K60
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\key.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC KeyBoard_Init
        PUBLIC KeyBoard_init_struct
        PUBLIC KeyScan
        PUBLIC KeyStatus
        PUBLIC KeyValue

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\Jay\key.c
//    1 #include  "common.h"
//    2 #include "include.h"
//    3    
//    4    

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 GPIO_InitTypeDef KeyBoard_init_struct;
KeyBoard_init_struct:
        DS8 20
//    6 #define 	KEY_IN_0  PTE0_I
//    7 #define 	KEY_IN_1  PTE1_I
//    8 #define 	KEY_IN_2  PTE2_I
//    9 
//   10 #define 	KEY_OUT_0  PTE3_O
//   11 #define 	KEY_OUT_1  PTE4_O
//   12 #define 	KEY_OUT_2  PTE5_O
//   13 
//   14 
//   15 //#define 	KEY_OUT_0  PTE4_O
//   16 //#define 	KEY_OUT_1  PTE3_O
//   17 //按键状态 1：按下 0：弹起
//   18 //u8 KeyStatus[3][3]={0};

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 uint8 KeyStatus[3][3]={0};
KeyStatus:
        DS8 12
//   20 //键值

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   21 uint8 KeyValue = 0;
KeyValue:
        DS8 1
//   22 
//   23 /*************************
//   24 函数名:KeyScan
//   25 返回值:无
//   26 传参:无
//   27 描述: 按键扫描函数
//   28 本函数支持多安静同时按下
//   29 请将本函数放至定时器中断
//   30 **************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void KeyScan(void)
//   32 {
KeyScan:
        PUSH     {R4-R7}
//   33 
//   34   static unsigned char i = 0;
//   35   unsigned char j = 0; 
        MOVS     R0,#+0
//   36   static unsigned char keybuf[3][3]= {0};
//   37   static unsigned char backup[3][3] = {{0,0,0},{0,0,0},{0,0,0}}; //弹起检测
//   38   
//   39   keybuf[i][0] = (keybuf[i][0] << 1)| KEY_IN_0;
        LDR.N    R1,??DataTable1
        LDR.N    R2,??DataTable1_1
        LDRB     R3,[R1, #+0]
        MOVS     R0,#+3
        MULS     R3,R0,R3
        LDRB     R3,[R2, R3]
        LSLS     R3,R3,#+1
        LDR.N    R0,??DataTable1_2  ;; 0x43fe2200
        LDR      R0,[R0, #+0]
        ORRS     R3,R0,R3
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        STRB     R3,[R2, R4]
//   40   keybuf[i][1] = (keybuf[i][1] << 1)| KEY_IN_1;
        LDRB     R3,[R1, #+0]
        MOVS     R0,#+3
        MULS     R3,R0,R3
        ADD      R3,R2,R3
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        ADD      R0,R2,R4
        LDRB     R4,[R0, #+1]
        LSLS     R4,R4,#+1
        LDR.N    R0,??DataTable1_3  ;; 0x43fe2204
        LDR      R0,[R0, #+0]
        ORRS     R4,R0,R4
        STRB     R4,[R3, #+1]
//   41   keybuf[i][2] = (keybuf[i][2] << 1)| KEY_IN_2;
        LDRB     R3,[R1, #+0]
        MOVS     R0,#+3
        MULS     R3,R0,R3
        ADD      R3,R2,R3
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        ADD      R0,R2,R4
        LDRB     R4,[R0, #+2]
        LSLS     R4,R4,#+1
        LDR.N    R0,??DataTable1_4  ;; 0x43fe2208
        LDR      R0,[R0, #+0]
        ORRS     R4,R0,R4
        STRB     R4,[R3, #+2]
//   42   
//   43   for(j=0; j<3; j++)
        MOVS     R3,#+0
        B.N      ??KeyScan_0
//   44   {
//   45 	if((keybuf[i][j] & 0x07) == 0x00)
//   46 	{
//   47 		KeyStatus[i][j] = 0;
//   48                
//   49 	}
//   50 	else if((keybuf[i][j] & 0x07) == 0x07)
??KeyScan_1:
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        ADD      R0,R2,R4
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R0, R4]
        ANDS     R0,R0,#0x7
        CMP      R0,#+7
        BNE.N    ??KeyScan_2
//   51 	{
//   52 		KeyStatus[i][j] = 1;
        LDR.N    R4,??DataTable1_5
        LDRB     R5,[R1, #+0]
        MOVS     R0,#+3
        MULS     R5,R0,R5
        ADD      R0,R4,R5
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,#+1
        STRB     R5,[R0, R4]
        B.N      ??KeyScan_2
//   53 	}
??KeyScan_3:
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        ADD      R0,R2,R4
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R0, R4]
        TST      R0,#0x7
        BNE.N    ??KeyScan_1
        LDR.N    R4,??DataTable1_5
        LDRB     R5,[R1, #+0]
        MOVS     R0,#+3
        MULS     R5,R0,R5
        ADD      R0,R4,R5
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,#+0
        STRB     R5,[R0, R4]
//   54         if(backup[i][j] != KeyStatus[i][j])
??KeyScan_2:
        LDR.N    R5,??DataTable1_6
        LDR.N    R4,??DataTable1_5
        LDRB     R6,[R1, #+0]
        MOVS     R0,#+3
        MULS     R6,R0,R6
        ADD      R0,R5,R6
        MOVS     R6,R3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R6,[R0, R6]
        LDRB     R7,[R1, #+0]
        MOVS     R0,#+3
        MULS     R7,R0,R7
        ADD      R0,R4,R7
        MOVS     R7,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRB     R0,[R0, R7]
        CMP      R6,R0
        BEQ.N    ??KeyScan_4
//   55         {
//   56                 if(backup[i][j] == 1)   //上次状态为1，这次是0,按键弹起
        LDRB     R6,[R1, #+0]
        MOVS     R0,#+3
        MULS     R6,R0,R6
        ADD      R0,R5,R6
        MOVS     R6,R3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R0, R6]
        CMP      R0,#+1
        BNE.N    ??KeyScan_5
//   57                 {                        
//   58                          KeyValue=i*3 + j + 1;
        LDRB     R0,[R1, #+0]
        MOVS     R6,#+3
        MLA      R0,R6,R0,R3
        ADDS     R0,R0,#+1
        LDR.N    R6,??DataTable1_7
        STRB     R0,[R6, #+0]
//   59                 }
//   60                 backup[i][j] = KeyStatus[i][j];
??KeyScan_5:
        LDRB     R6,[R1, #+0]
        MOVS     R0,#+3
        MULS     R6,R0,R6
        ADD      R5,R5,R6
        MOVS     R6,R3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R7,[R1, #+0]
        MOVS     R0,#+3
        MULS     R7,R0,R7
        ADD      R0,R4,R7
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R0, R4]
        STRB     R0,[R5, R6]
//   61         }
//   62   }
??KeyScan_4:
        ADDS     R3,R3,#+1
??KeyScan_0:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??KeyScan_3
//   63   (i >= 2)?i=0:i++;
??KeyScan_6:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+2
        BLT.N    ??KeyScan_7
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
        LDRB     R0,[R1, #+0]
        B.N      ??KeyScan_8
??KeyScan_7:
        LDRB     R0,[R1, #+0]
        LDRB     R0,[R1, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R1, #+0]
//   64   //为下一次扫描做准备
//   65   switch(i)
??KeyScan_8:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_9
        CMP      R0,#+2
        BEQ.N    ??KeyScan_10
        BCC.N    ??KeyScan_11
        B.N      ??KeyScan_12
//   66   {
//   67           case 0:KEY_OUT_0=1;KEY_OUT_1=0;KEY_OUT_2=0;break;
??KeyScan_9:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe2014
        STR      R0,[R1, #+0]
        B.N      ??KeyScan_13
//   68           case 1:KEY_OUT_0=0;KEY_OUT_1=1;KEY_OUT_2=0;break;
??KeyScan_11:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_9  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe2014
        STR      R0,[R1, #+0]
        B.N      ??KeyScan_13
//   69           case 2:KEY_OUT_0=0;KEY_OUT_1=0;KEY_OUT_2=1;break;
??KeyScan_10:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_10  ;; 0x43fe2014
        STR      R0,[R1, #+0]
        B.N      ??KeyScan_13
//   70           default:break;
//   71   }
//   72  
//   73 }
??KeyScan_12:
??KeyScan_13:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`KeyScan::i`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`KeyScan::keybuf`:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`KeyScan::backup`:
        DS8 12
//   74 
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void KeyBoard_Init(void)
//   77 {
KeyBoard_Init:
        PUSH     {R3-R5,LR}
//   78   
//   79   KeyBoard_init_struct.GPIO_PTx = PTE;
        LDR.N    R4,??DataTable1_11
        LDR.N    R5,??DataTable1_12  ;; 0x400ff100
        STR      R5,[R4, #+0]
//   80   KeyBoard_init_struct.GPIO_PinControl=IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//   81   KeyBoard_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[R4, #+13]
//   82   KeyBoard_init_struct.GPIO_Dir =DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[R4, #+12]
//   83   KeyBoard_init_struct.GPIO_Pins = GPIO_Pin3|GPIO_Pin4|GPIO_Pin5;
        MOVS     R0,#+56
        STR      R0,[R4, #+4]
//   84   LPLD_GPIO_Init(KeyBoard_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   85   
//   86   KeyBoard_init_struct.GPIO_PTx = PTE;
        STR      R5,[R4, #+0]
//   87   KeyBoard_init_struct.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   88   KeyBoard_init_struct.GPIO_PinControl = INPUT_PULL_DOWN;
        MOVS     R0,#+2
        STR      R0,[R4, #+8]
//   89   KeyBoard_init_struct.GPIO_Pins = GPIO_Pin0|GPIO_Pin1|GPIO_Pin2;
        MOVS     R0,#+7
        STR      R0,[R4, #+4]
//   90   LPLD_GPIO_Init(KeyBoard_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   91 
//   92 
//   93 
//   94   KEY_OUT_0=1;KEY_OUT_1=0;KEY_OUT_2=0;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10  ;; 0x43fe2014
        STR      R0,[R1, #+0]
//   95   
//   96 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     `KeyScan::i`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     `KeyScan::keybuf`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     0x43fe2200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     0x43fe2204

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     0x43fe2208

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     KeyStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     `KeyScan::backup`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     KeyValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     0x43fe200c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     0x43fe2010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DATA32
        DC32     0x43fe2014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DATA32
        DC32     KeyBoard_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DATA32
        DC32     0x400ff100

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  58 bytes in section .bss
// 544 bytes in section .text
// 
// 544 bytes of CODE memory
//  58 bytes of DATA memory
//
//Errors: none
//Warnings: none
