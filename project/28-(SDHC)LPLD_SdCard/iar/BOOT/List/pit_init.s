///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Jul/2017  01:22:39
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\lib\Jay\pit_init.c
//    Command line =  
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\lib\Jay\pit_init.c" -D LPLD_K60 -lCN
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\" -lB
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\" -o
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\BOOT\Obj\" --no_cse --no_unroll
//        --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e --fpu=None
//        --dlib_config D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\app\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\HW\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\DEV\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Source\"
//        -I "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\option\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\common\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\driver\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\descriptor\"
//        -I "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\class\" -I
//        "D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\lib\Jay\" -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 -
//        比赛\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\pit_init.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN Pit0_10ms_Flag
        EXTERN Pit0_20ms_Flag
        EXTERN Pit0_2ms_Flag
        EXTERN __aeabi_memcpy4
        EXTERN delay_cnt
        EXTERN differential_v
        EXTERN fusion_visualscope
        EXTERN getLeftspd
        EXTERN getRightspd
        EXTERN isRun
        EXTERN setLeftspd
        EXTERN setRightspd
        EXTERN target_time

        PUBLIC Isr
        PUBLIC Timingsetting
        PUBLIC pit0_init
        PUBLIC pit0_init_struct

// D:\smartcar\backups\双车备份\7-3\测试工程\测试专用\7.13 - 比赛\lib\Jay\pit_init.c
//    1 /*
//    2  *  中断
//    3  *  测试
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 
//    9 
//   10 void pit0_init(void);
//   11 void Isr(void);
//   12 void Timingsetting(void);
//   13 
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 PIT_InitTypeDef pit0_init_struct;
pit0_init_struct:
        DS8 20

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void pit0_init()
//   17 {
pit0_init:
        PUSH     {R7,LR}
//   18   pit0_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
//   19   pit0_init_struct.PIT_PeriodMs =2;     //定时周期2秒
        MOVS     R0,#+2
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+8]
//   20   pit0_init_struct.PIT_Isr =Isr;  //设置中断函数
        ADR.W    R0,Isr
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+16]
//   21   LPLD_PIT_Init(pit0_init_struct);  
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   22   LPLD_PIT_EnableIrq(pit0_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   23 }
        POP      {R0,PC}          ;; return
//   24 
//   25 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   26 void Isr(void)
//   27 { 
Isr:
        PUSH     {R7,LR}
//   28   static u16 FlgtimingCnt=0;
//   29   FlgtimingCnt++; 
        LDR.N    R0,??DataTable2_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_1
        STRH     R0,[R1, #+0]
//   30   if(FlgtimingCnt>250) 
        LDR.N    R0,??DataTable2_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+251
        BLT.N    ??Isr_0
//   31   {
//   32     FlgtimingCnt=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRH     R0,[R1, #+0]
//   33   }
//   34   if(FlgtimingCnt%1 == 0)  //2ms
//   35   {
//   36     Pit0_2ms_Flag=1;
??Isr_0:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+0]
//   37   }
//   38   if(FlgtimingCnt%5 == 0 )//10ms
        LDR.N    R0,??DataTable2_1
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??Isr_1
//   39   {
//   40     Pit0_10ms_Flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+0]
//   41     //////////////////
//   42     Timingsetting();
        BL       Timingsetting
//   43     fusion_visualscope();
        BL       fusion_visualscope
//   44   }
//   45   if(FlgtimingCnt%10 == 0 )//20ms
??Isr_1:
        LDR.N    R0,??DataTable2_1
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??Isr_2
//   46   {
//   47     Pit0_20ms_Flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_4
        STRB     R0,[R1, #+0]
//   48   }
//   49 }
??Isr_2:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??FlgtimingCnt:
        DS8 2
//   50 
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void Timingsetting(void)
//   53 {
Timingsetting:
        PUSH     {R4,LR}
//   54   static unsigned int Cnt=0;
//   55   static unsigned int Cnt2=0;
//   56   char Flg=0;
        MOVS     R4,#+0
//   57   
//   58   if(isRun == 1 && Flg == 0)
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Timingsetting_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Timingsetting_0
//   59   {
//   60     Flg=1;
        MOVS     R4,#+1
//   61     Cnt++;
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//   62   }
//   63   if(Cnt>=delay_cnt && Flg == 1)
??Timingsetting_0:
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_7
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Timingsetting_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??Timingsetting_1
//   64   {
//   65 //    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch3,4500);//右轮
//   66 //    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch0,4500);
//   67     differential_v();
        BL       differential_v
//   68     getLeftspd();
        BL       getLeftspd
//   69     getRightspd();
        BL       getRightspd
//   70     setLeftspd();
        BL       setLeftspd
//   71     setRightspd();
        BL       setRightspd
//   72     Flg=2;
        MOVS     R4,#+2
//   73     
//   74   }
//   75   
//   76   if(2 == Flg)
??Timingsetting_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??Timingsetting_2
//   77   {
//   78     Cnt2++;
        LDR.N    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//   79   }
//   80   
//   81   if(Cnt2>=target_time)
??Timingsetting_2:
        LDR.N    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_9
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Timingsetting_3
//   82   {
//   83     
//   84     isRun=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_5
        STRB     R0,[R1, #+0]
//   85   }
//   86   if(0 == isRun)
??Timingsetting_3:
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Timingsetting_4
//   87   {
//   88     Flg=0;
        MOVS     R4,#+0
//   89     Cnt2=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//   90     Cnt=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//   91     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch0,0);//右轮
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_10  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   92     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_10  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   93     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch2,0);//右轮
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_10  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   94     LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_10  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   95   }
//   96 }
??Timingsetting_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     pit0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ??FlgtimingCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Pit0_2ms_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     Pit0_10ms_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Pit0_20ms_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     isRun

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     ??Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     delay_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     ??Cnt2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     target_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40038000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??Cnt2:
        DS8 4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   97 
//   98 
//   99 
// 
//  30 bytes in section .bss
// 362 bytes in section .text
// 
// 362 bytes of CODE memory
//  30 bytes of DATA memory
//
//Errors: none
//Warnings: none
