///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:40:59
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\McNamm_wheel_control.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW6CFC.tmp
//        (G:\AIcar\@@\xiugai\lib\common\McNamm_wheel_control.c -D LPLD_K60
//        -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\McNamm_wheel_control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Left_front_goalspeed
        EXTERN Left_rear_goalspeed
        EXTERN Right_front_goalspeed
        EXTERN Right_rear_goalspeed
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN light_flag
        EXTERN lun_Pid

        PUBLIC McNamm_wheel_control
        PUBLIC RValue
        PUBLIC Speed_Conversion
        PUBLIC XValue
        PUBLIC YValue
        PUBLIC ZValue
        PUBLIC carspeed
        PUBLIC shuliang

// G:\AIcar\@@\xiugai\lib\common\McNamm_wheel_control.c
//    1 #include "McNamm_wheel_control.h"
//    2 #include "math.h"
//    3 #include "include.h"
//    4 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    5 int carspeed = 200;
carspeed:
        DATA32
        DC32 200

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    6 int XValue=160;  //150
XValue:
        DATA32
        DC32 160

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 int YValue=0;  //
YValue:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    8 int ZValue=80;   //80
ZValue:
        DATA32
        DC32 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 int RValue=0;   //
RValue:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   10 float shuliang = 1.5f;//200-1.5   
shuliang:
        DATA32
        DC32 3FC00000H
//   11 //#define a_PARAMETER          (0.09f)               
//   12 //#define b_PARAMETER          (0.09f) 
//   13 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 void McNamm_wheel_control(s16 Vx,s16 Vy,s16 Vz,s16 Vr)
//   15 {
McNamm_wheel_control:
        PUSH     {R4,R5}
//   16     Left_front_goalspeed   = (int)(Vx-Vy-Vz);  //*(a_PARAMETER+b_PARAMETER)
        MOVS     R5,R0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R4,R1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SUBS     R5,R5,R4
        MOVS     R4,R2
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SUBS     R5,R5,R4
        LDR.N    R4,??DataTable1
        STR      R5,[R4, #+0]
//   17     Left_rear_goalspeed    = (int)(Vx+Vy-Vz);  //zuohou*(a_PARAMETER+b_PARAMETER)
        MOVS     R4,R1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTAH    R5,R4,R0
        MOVS     R4,R2
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SUBS     R5,R5,R4
        LDR.N    R4,??DataTable1_1
        STR      R5,[R4, #+0]
//   18     Right_front_goalspeed  = (int)(Vx+Vy+Vz);//*(a_PARAMETER+b_PARAMETER)
        MOVS     R4,R1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTAH    R4,R4,R0
        SXTAH    R4,R4,R2
        LDR.N    R5,??DataTable1_2
        STR      R4,[R5, #+0]
//   19     Right_rear_goalspeed   = (int)(Vx-Vy+Vz);//*(a_PARAMETER+b_PARAMETER)
        MOVS     R5,R0
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R4,R1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SUBS     R5,R5,R4
        SXTAH    R4,R5,R2
        LDR.N    R5,??DataTable1_3
        STR      R4,[R5, #+0]
//   20 }
        POP      {R4,R5}
        BX       LR               ;; return
//   21 
//   22 //void Speed_Conversion2() //≤‚ ‘”√
//   23 //{
//   24 //  float coefficient = 0;
//   25 //  float vx=0,vy=0,vz = 0;
//   26 //  coefficient = (float)(basic_speed*basic_speed)/(coordinate_X*coordinate_X+coordinate_Y*coordinate_Y);
//   27 //  coefficient = (float)sqrt(coefficient);
//   28 //	
//   29 //  vx = coefficient*coordinate_X;
//   30 //  vy = coefficient*coordinate_Y;
//   31 //  vz = 1;
//   32 //  McNamm_wheel_control(vx,vy,vz);
//   33 //}
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void Speed_Conversion(u8 setspeedl,s16 setspeeds,s16 x,s16 y)//zhi,0,x,y
//   36 {
Speed_Conversion:
        PUSH     {R0-R2,R4-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R3
//   37     // biZhang();
//   38    s16 speedl,speeds,vx,vy,vz,vr;
//   39    speedl = (int)setspeedl;
        MOVS     R7,R4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
//   40    speeds = (int)setspeeds;
        STRH     R5,[SP, #+0]
//   41    if(light_flag)
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Speed_Conversion_0
//   42    {
//   43      
//   44 //         if(bizhang_flag1 == 1||bizhang_flag1==3)
//   45 //       {
//   46 //         vx = carspeed;
//   47 //         vy =  (100+carspeed);
//   48 //         vz = 0;
//   49 //         vr = 0;
//   50 //       }
//   51 //        else if(bizhang_flag1 == 2)
//   52 //       {
//   53 //         vx = carspeed;
//   54 //         vy =  -(100+carspeed);
//   55 //         vz =0;
//   56 //         vr = 0;
//   57 //       }
//   58 //       else
//   59 //       {
//   60          vx = carspeed;
        LDR.N    R0,??DataTable1_5
        LDR      R8,[R0, #+0]
//   61          vy = 0;//shuliang*lun_Pid(y,speeds);  //0’˝or∏∫
        MOVS     R9,#+0
//   62          vz = shuliang*lun_Pid(speeds,y);
        MOVS     R1,R6
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        LDRSH    R0,[SP, #+0]
        BL       lun_Pid
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R10,R0
//   63          vr = 0;
        MOVS     R11,#+0
        B.N      ??Speed_Conversion_1
//   64        //}
//   65 //     P3=3000;
//   66 //     P4=3000;
//   67    }
//   68    else 
//   69    {
//   70      vx = XValue;    //80 -20 -40 -20
??Speed_Conversion_0:
        LDR.N    R0,??DataTable1_7
        LDR      R8,[R0, #+0]
//   71      vy = YValue;    
        LDR.N    R0,??DataTable1_8
        LDR      R9,[R0, #+0]
//   72      vz = ZValue;
        LDR.N    R0,??DataTable1_9
        LDR      R10,[R0, #+0]
//   73      vr = RValue;
        LDR.N    R0,??DataTable1_10
        LDR      R11,[R0, #+0]
//   74 //     P3=60;
//   75 //     P4=140;
//   76    }
//   77 
//   78 
//   79   McNamm_wheel_control(vx,vy,vz,vr);
??Speed_Conversion_1:
        MOV      R3,R11
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOV      R2,R10
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOV      R1,R9
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R0,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       McNamm_wheel_control
//   80 }
        POP      {R0-R2,R4-R11,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     Left_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     Left_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     Right_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     Right_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     light_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     carspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     shuliang

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     XValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     YValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     ZValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DATA32
        DC32     RValue

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   81 
//   82 
// 
//   8 bytes in section .bss
//  16 bytes in section .data
// 244 bytes in section .text
// 
// 244 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: 2
