///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:49
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\Jay\key.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW444B.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\Jay\key.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\key.s
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

// G:\AIcar\@@\k60_144\smartcar\lib\Jay\key.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8    
//    9    

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 GPIO_InitTypeDef KeyBoard_init_struct;
KeyBoard_init_struct:
        DS8 20
//   11 #define 	KEY_IN_0  PTE0_I
//   12 #define 	KEY_IN_1  PTE1_I
//   13 #define 	KEY_IN_2  PTE2_I
//   14 
//   15 #define 	KEY_OUT_0  PTE3_O
//   16 #define 	KEY_OUT_1  PTE4_O
//   17 
//   18 
//   19 //#define 	KEY_OUT_0  PTE4_O
//   20 //#define 	KEY_OUT_1  PTE3_O
//   21 //按键状态 1：按下 0：弹起
//   22 //u8 KeyStatus[3][3]={0};

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 uint8 KeyStatus[2][3]={0};
KeyStatus:
        DS8 8
//   24 //键值

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   25 uint8 KeyValue = 0;
KeyValue:
        DS8 1
//   26 
//   27 /*************************
//   28 函数名:KeyScan
//   29 返回值:无
//   30 传参:无
//   31 描述: 按键扫描函数
//   32 本函数支持多安静同时按下
//   33 请将本函数放至定时器中断
//   34 **************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void KeyScan(void)
//   36 {
KeyScan:
        PUSH     {R4,R5}
//   37 	u8 i=0;
        MOVS     R0,#+0
//   38 	static u8 index=0;
//   39 	static u8 keybuf[2][3]={0};
//   40 	
//   41         //读取按键当前状态
//   42 	keybuf[index][0] = (keybuf[index][0] << 1) | KEY_IN_0;
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
//   43 	keybuf[index][1] = (keybuf[index][1] << 1) | KEY_IN_1;
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
//   44 	keybuf[index][2] = (keybuf[index][2] << 1) | KEY_IN_2;
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
//   45 	
//   46 	
//   47 	for( i=0; i<3; i++) 
        MOVS     R3,#+0
        B.N      ??KeyScan_0
//   48         {
//   49 		if((keybuf[index][i] & 0x07) == 0x07)
//   50 		{
//   51                         if(KeyStatus[index][i] == 1)
//   52 			{
//   53 				KeyValue = index*3 + i + 1;//完整的一次按下
//   54 			}
//   55 			KeyStatus[index][i] = 0;//弹起
//   56 		}
//   57 		else if((keybuf[index][i] & 0x07) == 0x00)
??KeyScan_1:
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        ADD      R0,R2,R4
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R0, R4]
        TST      R0,#0x7
        BNE.N    ??KeyScan_2
//   58 		{
//   59 			
//   60 			KeyStatus[index][i] = 1;//按下
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
//   61 		}	
??KeyScan_3:
        LDRB     R4,[R1, #+0]
        MOVS     R0,#+3
        MULS     R4,R0,R4
        ADD      R0,R2,R4
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R0, R4]
        ANDS     R0,R0,#0x7
        CMP      R0,#+7
        BNE.N    ??KeyScan_1
        LDR.N    R4,??DataTable1_5
        LDRB     R5,[R1, #+0]
        MOVS     R0,#+3
        MULS     R5,R0,R5
        ADD      R0,R4,R5
        MOVS     R5,R3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R0, R5]
        CMP      R0,#+1
        BNE.N    ??KeyScan_4
        LDRB     R0,[R1, #+0]
        MOVS     R5,#+3
        MLA      R0,R5,R0,R3
        ADDS     R0,R0,#+1
        LDR.N    R5,??DataTable1_6
        STRB     R0,[R5, #+0]
??KeyScan_4:
        LDRB     R5,[R1, #+0]
        MOVS     R0,#+3
        MULS     R5,R0,R5
        ADD      R0,R4,R5
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R5,#+0
        STRB     R5,[R0, R4]
//   62         }
??KeyScan_2:
        ADDS     R3,R3,#+1
??KeyScan_0:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??KeyScan_3
//   63         //为下一次扫描做准备
//   64 	(index >= 1)?index=0:index++;
??KeyScan_5:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_6
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
        LDRB     R0,[R1, #+0]
        B.N      ??KeyScan_7
??KeyScan_6:
        LDRB     R0,[R1, #+0]
        LDRB     R0,[R1, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R1, #+0]
//   65 	switch(index)
??KeyScan_7:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_8
        CMP      R0,#+1
        BEQ.N    ??KeyScan_9
        B.N      ??KeyScan_10
//   66 	{
//   67 		case 0:KEY_OUT_0=0;KEY_OUT_1=1;break;
??KeyScan_8:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        B.N      ??KeyScan_11
//   68 		case 1:KEY_OUT_0=1;KEY_OUT_1=0;break;
??KeyScan_9:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_7  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        B.N      ??KeyScan_11
//   69 
//   70 		
//   71 		default:break;
//   72 	}
//   73 }
??KeyScan_10:
??KeyScan_11:
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`KeyScan::index`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`KeyScan::keybuf`:
        DS8 8
//   74 
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void KeyBoard_Init(void)
//   77 {
KeyBoard_Init:
        PUSH     {R3-R5,LR}
//   78   KeyBoard_init_struct.GPIO_PTx = PTE;
        LDR.N    R4,??DataTable1_9
        LDR.N    R5,??DataTable1_10  ;; 0x400ff100
        STR      R5,[R4, #+0]
//   79   KeyBoard_init_struct.GPIO_Pins = GPIO_Pin3 | GPIO_Pin4;
        MOVS     R0,#+24
        STR      R0,[R4, #+4]
//   80   KeyBoard_init_struct.GPIO_PinControl=OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[R4, #+8]
//   81   KeyBoard_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[R4, #+13]
//   82   KeyBoard_init_struct.GPIO_Dir =DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[R4, #+12]
//   83   LPLD_GPIO_Init(KeyBoard_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   84   
//   85   
//   86   
//   87   KeyBoard_init_struct.GPIO_PTx = PTE;
        STR      R5,[R4, #+0]
//   88   KeyBoard_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[R4, #+13]
//   89   KeyBoard_init_struct.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//   90   KeyBoard_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[R4, #+8]
//   91   KeyBoard_init_struct.GPIO_Pins = GPIO_Pin0|GPIO_Pin1|GPIO_Pin2;
        MOVS     R0,#+7
        STR      R0,[R4, #+4]
//   92   LPLD_GPIO_Init(KeyBoard_init_struct);
        MOVS     R1,R4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   93 
//   94   KEY_OUT_0=0;KEY_OUT_1=1;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7  ;; 0x43fe200c
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//   95   
//   96 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     `KeyScan::index`

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
        DC32     KeyValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     0x43fe200c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     0x43fe2010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     KeyBoard_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DATA32
        DC32     0x400ff100

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  38 bytes in section .bss
// 430 bytes in section .text
// 
// 430 bytes of CODE memory
//  38 bytes of DATA memory
//
//Errors: none
//Warnings: 2
