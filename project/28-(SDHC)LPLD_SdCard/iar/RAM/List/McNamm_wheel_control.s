///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:18
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\McNamm_wheel_control.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW3EE2.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\McNamm_wheel_control.c
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\McNamm_wheel_control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Dir_Pid
        EXTERN Left_front_goalspeed
        EXTERN Left_rear_goalspeed
        EXTERN Right_front_goalspeed
        EXTERN Right_rear_goalspeed
        EXTERN __aeabi_d2f
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f
        EXTERN basic_speed
        EXTERN coordinate_X
        EXTERN coordinate_Y
        EXTERN light_flag
        EXTERN lun_Pid
        EXTERN sqrt

        PUBLIC McNamm_wheel_control
        PUBLIC Speed_Conversion
        PUBLIC Speed_Conversion2

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\McNamm_wheel_control.c
//    1 #include "McNamm_wheel_control.h"
//    2 #include "math.h"
//    3 
//    4 extern u8 basic_speed ;
//    5 extern u8 Rotate_speed;
//    6 
//    7 extern s32 Left_front_goalspeed ;/*左前轮目标速度*/
//    8 extern s32 Right_front_goalspeed ;/*右前轮目标速度*/
//    9 extern s32 Left_rear_goalspeed;/*左前轮目标速度*/
//   10 extern s32 Right_rear_goalspeed;/*右前轮目标速度*/
//   11 
//   12 extern s16 beacon_x;  //实际信标灯坐标
//   13 extern s16 beacon_y;
//   14 extern s16 excursion_x;  //信标灯坐标偏移
//   15 extern s16 excursion_y;
//   16 extern u8 coordinate_X ; //等价信标灯坐标
//   17 extern u8 coordinate_Y ;
//   18 
//   19 extern 	u8 state_flag; //信标灯远近标志位
//   20 extern u8 Barrier_flag ; //障碍物标志位
//   21 extern u8 force_left ;
//   22 extern u8 force_right;
//   23 #define a_PARAMETER          (0.09f)               
//   24 #define b_PARAMETER          (0.09f) 
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void McNamm_wheel_control(float Vx,float Vy,float Vz)
//   27 {
McNamm_wheel_control:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R7,R1
        MOVS     R5,R2
//   28     Left_rear_goalspeed    = Vx-Vz*(a_PARAMETER+b_PARAMETER);  //zuohou
        LDR.N    R6,??DataTable2  ;; 0x3e3851ec
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   29     Left_front_goalspeed   = Vx+Vy-Vz*(a_PARAMETER+b_PARAMETER);  //
        MOVS     R0,R4
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOV      R8,R0
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   30     Right_front_goalspeed  = Vx-Vy+Vz*(a_PARAMETER+b_PARAMETER);//
        MOVS     R0,R4
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   31     Right_rear_goalspeed   = Vx+Vz*(a_PARAMETER+b_PARAMETER);//
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   32 }
        POP      {R4-R8,PC}       ;; return
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void Speed_Conversion2() //测试用
//   35 {
Speed_Conversion2:
        PUSH     {R4-R6,LR}
//   36   float coefficient = 0;
        MOVS     R0,#+0
//   37   float vx=0,vy=0,vz = 0;
        MOVS     R0,#+0
        MOVS     R0,#+0
        MOVS     R0,#+0
//   38   coefficient = (float)(basic_speed*basic_speed)/(coordinate_X*coordinate_X+coordinate_Y*coordinate_Y);
        LDR.N    R4,??DataTable2_5
        LDR.N    R5,??DataTable2_6
        LDR.N    R1,??DataTable2_7
        LDRB     R0,[R1, #+0]
        LDRB     R1,[R1, #+0]
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R6,R0
        LDRB     R0,[R5, #+0]
        LDRB     R2,[R5, #+0]
        LDRB     R3,[R4, #+0]
        LDRB     R1,[R4, #+0]
        MULS     R3,R1,R3
        MLA      R0,R2,R0,R3
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fdiv
//   39   coefficient = (float)sqrt(coefficient);
        BL       __aeabi_f2d
        BL       sqrt
        BL       __aeabi_d2f
        MOVS     R6,R0
//   40 	
//   41   vx = coefficient*coordinate_X;
        LDRB     R0,[R5, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R5,R0
//   42   vy = coefficient*coordinate_Y;
        LDRB     R0,[R4, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fmul
//   43   vz = 1;
        MOVS     R2,#+1065353216
//   44   McNamm_wheel_control(vx,vy,vz);
        MOVS     R1,R0
        MOVS     R0,R5
        BL       McNamm_wheel_control
//   45 }
        POP      {R4-R6,PC}       ;; return
//   46 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void Speed_Conversion(u8 setspeedl,s16 setspeeds,s16 x,s16 y)//zhi,0,x,y
//   48 {
Speed_Conversion:
        PUSH     {R4-R6,LR}
        MOVS     R5,R1
        MOVS     R4,R3
//   49    float speedl,speeds,vx,vy,vz;
//   50    speedl = (float)setspeedl;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       __aeabi_ui2f
        MOVS     R6,R0
//   51    speeds = (float)setspeeds;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R0,R5
        BL       __aeabi_i2f
//   52    if(light_flag)
        LDR.N    R1,??DataTable2_8
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??Speed_Conversion_0
//   53    {
//   54      vx = 25;
        LDR.N    R5,??DataTable2_9  ;; 0x41c80000
//   55     // vy = 0;
//   56      vy = (int)(0.5f*lun_Pid(y,speedl));  //0正or负
        MOVS     R0,R6
        BL       __aeabi_f2iz
        MOVS     R1,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       lun_Pid
        BL       __aeabi_i2f
        MOVS     R1,#+1056964608
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        BL       __aeabi_i2f
        MOVS     R6,R0
//   57      vz = 0;
        MOVS     R2,#+0
        B.N      ??Speed_Conversion_1
//   58    }
//   59     
//   60 
//   61    else 
//   62    {
//   63      vx = 0;
??Speed_Conversion_0:
        MOVS     R5,#+0
//   64      vy = 0;    
        MOVS     R6,#+0
//   65      vz = Dir_Pid(speeds,y);
        MOVS     R1,R4
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R4,R1
        BL       __aeabi_f2iz
        MOVS     R1,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       Dir_Pid
        BL       __aeabi_i2f
        MOVS     R2,R0
//   66    }
//   67 
//   68   McNamm_wheel_control(vx,vy,vz);
??Speed_Conversion_1:
        MOVS     R1,R6
        MOVS     R0,R5
        BL       McNamm_wheel_control
//   69 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0x3e3851ec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     Left_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     Left_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     Right_front_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     Right_rear_goalspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     coordinate_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DATA32
        DC32     coordinate_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DATA32
        DC32     basic_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DATA32
        DC32     light_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DATA32
        DC32     0x41c80000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   70 
//   71 
// 
// 390 bytes in section .text
// 
// 390 bytes of CODE memory
//
//Errors: none
//Warnings: 6
