///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:41:01
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\pid.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW7762.tmp
//        (G:\AIcar\@@\xiugai\lib\common\pid.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\pid.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN KD
        EXTERN KP
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f

        PUBLIC Dir_Pid
        PUBLIC Move_Z
        PUBLIC Move_y
        PUBLIC lPID_Control
        PUBLIC lun_Pid
        PUBLIC nbpid_kD
        PUBLIC nbpid_kI
        PUBLIC nbpid_kP
        PUBLIC pid_err1
        PUBLIC pid_err2
        PUBLIC pid_last_err1
        PUBLIC pid_last_err2
        PUBLIC pid_last_last_err1
        PUBLIC pid_last_last_err2
        PUBLIC pid_out1
        PUBLIC pid_out2
        PUBLIC pid_result1
        PUBLIC pid_result2
        PUBLIC rPID_Control
        PUBLIC rbpid_kD
        PUBLIC rbpid_kI
        PUBLIC rbpid_kP

// G:\AIcar\@@\xiugai\lib\common\pid.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    3 s16 pid_err1 = 0;
pid_err1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    4 s16 pid_last_err1 = 0;
pid_last_err1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    5 s16 pid_result1 = 0;
pid_result1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    6 s16 pid_last_last_err1 = 0;
pid_last_last_err1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    7 s16 pid_out1;
pid_out1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    8 s16 pid_err2= 0;
pid_err2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//    9 s16 pid_last_err2 = 0;
pid_last_err2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   10 s16 pid_result2 = 0;
pid_result2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   11 s16 pid_last_last_err2 = 0;
pid_last_last_err2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   12 s16 pid_out2;
pid_out2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   13 s16 Move_y;
Move_y:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   14 s16 Move_Z;
Move_Z:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   15 float nbpid_kP = 1.0f;//13.3f; 7.15f 
nbpid_kP:
        DATA32
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   16 float nbpid_kI = 0.03f;//0;
nbpid_kI:
        DATA32
        DC32 3CF5C28FH

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 float nbpid_kD = 0;//3.5f;
nbpid_kD:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   18 float rbpid_kP = 7.6f;//13.3f;  
rbpid_kP:
        DATA32
        DC32 40F33333H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   19 float rbpid_kI = 0.031f;//0;
rbpid_kI:
        DATA32
        DC32 3CFDF3B6H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 float rbpid_kD = 0;//3.5f;2.8f
rbpid_kD:
        DS8 4
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 s16 lPID_Control(s16 actual1, s16 set1)
//   23 {
lPID_Control:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   24 
//   25 	pid_err1 = set1 - actual1; //-25
        LDR.N    R6,??DataTable3
        SUBS     R0,R5,R4
        STRH     R0,[R6, #+0]
//   26 	pid_result1 = (int)(pid_result1+ nbpid_kP * (pid_err1- pid_last_err1) +nbpid_kI * pid_err1);
        LDR.N    R7,??DataTable3_1
        LDR.W    R8,??DataTable3_2
        LDRSH    R0,[R8, #+0]
        BL       __aeabi_i2f
        MOV      R9,R0
        LDRSH    R0,[R6, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
        LDRSH    R0,[R6, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        STRH     R0,[R8, #+0]
//   27 	pid_out1 = 10 * pid_result1;
        LDR.N    R0,??DataTable3_5
        LDRH     R1,[R8, #+0]
        MOVS     R2,#+10
        SMULBB   R1,R1,R2
        STRH     R1,[R0, #+0]
//   28         if(pid_out1>4500)
        LDRSH    R1,[R0, #+0]
        MOVW     R2,#+4501
        CMP      R1,R2
        BLT.N    ??lPID_Control_0
//   29 		pid_out1= 4500;
        MOVW     R1,#+4500
        STRH     R1,[R0, #+0]
        B.N      ??lPID_Control_1
//   30 	else if(pid_out1<-4500)
??lPID_Control_0:
        LDRSH    R1,[R0, #+0]
        LDR.N    R2,??DataTable3_6  ;; 0xffffee6c
        CMP      R1,R2
        BGE.N    ??lPID_Control_1
//   31 		pid_out1 = -4500;
        LDR.N    R1,??DataTable3_6  ;; 0xffffee6c
        STRH     R1,[R0, #+0]
//   32 	pid_last_last_err1 = pid_last_err1;
??lPID_Control_1:
        LDRH     R1,[R7, #+0]
        LDR.N    R2,??DataTable3_7
        STRH     R1,[R2, #+0]
//   33 	pid_last_err1 = pid_err1;
        LDRH     R1,[R6, #+0]
        STRH     R1,[R7, #+0]
//   34         return(pid_out1);
        LDRSH    R0,[R0, #+0]
        POP      {R1,R4-R9,PC}    ;; return
//   35 }
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 s16 rPID_Control(s16 actual2, s16 set2)
//   38 {
rPID_Control:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   39 
//   40 	pid_err2 = set2 - actual2; //-25
        LDR.N    R6,??DataTable3_8
        SUBS     R0,R5,R4
        STRH     R0,[R6, #+0]
//   41 	pid_result2 = (int)(pid_result2+ rbpid_kP * (pid_err2- pid_last_err2) +rbpid_kI * pid_err2 );
        LDR.N    R7,??DataTable3_9
        LDR.W    R8,??DataTable3_10
        LDRSH    R0,[R8, #+0]
        BL       __aeabi_i2f
        MOV      R9,R0
        LDRSH    R0,[R6, #+0]
        LDRSH    R1,[R7, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_11
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
        LDRSH    R0,[R6, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        STRH     R0,[R8, #+0]
//   42 	pid_out2 = 10 * pid_result2;
        LDR.N    R0,??DataTable3_13
        LDRH     R1,[R8, #+0]
        MOVS     R2,#+10
        SMULBB   R1,R1,R2
        STRH     R1,[R0, #+0]
//   43         if(pid_out2>4500)
        LDRSH    R1,[R0, #+0]
        MOVW     R2,#+4501
        CMP      R1,R2
        BLT.N    ??rPID_Control_0
//   44 		pid_out2= 4500;
        MOVW     R1,#+4500
        STRH     R1,[R0, #+0]
        B.N      ??rPID_Control_1
//   45 	else if(pid_out2<-4500)
??rPID_Control_0:
        LDRSH    R1,[R0, #+0]
        LDR.N    R2,??DataTable3_6  ;; 0xffffee6c
        CMP      R1,R2
        BGE.N    ??rPID_Control_1
//   46 		pid_out2 = -4500;
        LDR.N    R1,??DataTable3_6  ;; 0xffffee6c
        STRH     R1,[R0, #+0]
//   47 	pid_last_last_err2 = pid_last_err2;
??rPID_Control_1:
        LDRH     R1,[R7, #+0]
        LDR.N    R2,??DataTable3_14
        STRH     R1,[R2, #+0]
//   48 	pid_last_err2 = pid_err2;
        LDRH     R1,[R6, #+0]
        STRH     R1,[R7, #+0]
//   49         return(pid_out2);
        LDRSH    R0,[R0, #+0]
        POP      {R1,R4-R9,PC}    ;; return
//   50 }
//   51 
//   52 
//   53 //方向环
//   54 //P=24   D=35

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 s16 Dir_Pid(s16 midpoint,s16 error_act)
//   56 {
Dir_Pid:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   57 	s16 midpoint_err =0;  //距离中线的误差
        MOVS     R6,#+0
//   58 	s16 lastpoint_err =0; //上次误差
        MOVS     R7,#+0
//   59 	midpoint_err = midpoint - error_act;
        SUBS     R8,R4,R5
//   60 	Move_Z = (int)KP*midpoint_err + KD*(midpoint_err - lastpoint_err);
        LDR.W    R9,??DataTable3_15
        LDR.N    R0,??DataTable3_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOV      R2,R8
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDR.N    R1,??DataTable3_17
        LDRSH    R3,[R1, #+0]
        MOV      R12,R8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R12,R12,R1
        MUL      R3,R12,R3
        MLA      R0,R2,R0,R3
        STRH     R0,[R9, #+0]
//   61 	lastpoint_err = midpoint_err ;
        MOV      R1,R8
//   62 	if(Move_Z >= 400)
        LDRSH    R0,[R9, #+0]
        CMP      R0,#+400
        BLT.N    ??Dir_Pid_0
//   63 		Move_Z = 400;
        MOV      R0,#+400
        STRH     R0,[R9, #+0]
        B.N      ??Dir_Pid_1
//   64 	else if(Move_Z <= -400)
??Dir_Pid_0:
        LDRSH    R0,[R9, #+0]
        MVNS     R2,#+398
        CMP      R0,R2
        BGE.N    ??Dir_Pid_1
//   65 		Move_Z = -400;
        LDR.N    R0,??DataTable3_18  ;; 0xfffffe70
        STRH     R0,[R9, #+0]
//   66 	return Move_Z;
??Dir_Pid_1:
        LDRSH    R0,[R9, #+0]
        POP      {R1,R4-R9,PC}    ;; return
//   67 
//   68 }
//   69 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 s16 lun_Pid(s16 midpoint_lun,s16 error_lun)
//   71 {
lun_Pid:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   72 	s16 midpoint_err1 =0;  //距离中线的误差
        MOVS     R6,#+0
//   73 	s16 lastpoint_err1 =0; //上次误差
        MOVS     R7,#+0
//   74 	midpoint_err1 = midpoint_lun - error_lun;
        SUBS     R8,R4,R5
//   75 	Move_y = (int)KP*midpoint_err1 + KD*(midpoint_err1 - lastpoint_err1);
        LDR.W    R9,??DataTable3_19
        LDR.N    R0,??DataTable3_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOV      R2,R8
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        LDR.N    R1,??DataTable3_17
        LDRSH    R3,[R1, #+0]
        MOV      R12,R8
        SXTH     R12,R12          ;; SignExt  R12,R12,#+16,#+16
        MOVS     R1,R7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SUBS     R12,R12,R1
        MUL      R3,R12,R3
        MLA      R0,R2,R0,R3
        STRH     R0,[R9, #+0]
//   76 	lastpoint_err1 = midpoint_err1 ;
        MOV      R1,R8
//   77 	if(Move_y >= 100)
        LDRSH    R0,[R9, #+0]
        CMP      R0,#+100
        BLT.N    ??lun_Pid_0
//   78 		Move_y = 100;
        MOVS     R0,#+100
        STRH     R0,[R9, #+0]
        B.N      ??lun_Pid_1
//   79 	else if(Move_y <= -100)
??lun_Pid_0:
        LDRSH    R0,[R9, #+0]
        CMN      R0,#+99
        BGE.N    ??lun_Pid_1
//   80 		Move_y = -100;
        MVNS     R0,#+99
        STRH     R0,[R9, #+0]
//   81 	return Move_y;
??lun_Pid_1:
        LDRSH    R0,[R9, #+0]
        POP      {R1,R4-R9,PC}    ;; return
//   82 
//   83 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA32
        DC32     pid_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA32
        DC32     pid_last_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA32
        DC32     pid_result1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DATA32
        DC32     nbpid_kP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DATA32
        DC32     nbpid_kI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DATA32
        DC32     pid_out1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DATA32
        DC32     0xffffee6c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DATA32
        DC32     pid_last_last_err1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DATA32
        DC32     pid_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DATA32
        DC32     pid_last_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DATA32
        DC32     pid_result2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DATA32
        DC32     rbpid_kP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DATA32
        DC32     rbpid_kI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DATA32
        DC32     pid_out2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DATA32
        DC32     pid_last_last_err2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DATA32
        DC32     Move_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DATA32
        DC32     KP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DATA32
        DC32     KD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DATA32
        DC32     0xfffffe70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DATA32
        DC32     Move_y

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  32 bytes in section .bss
//  16 bytes in section .data
// 612 bytes in section .text
// 
// 612 bytes of CODE memory
//  48 bytes of DATA memory
//
//Errors: none
//Warnings: none
