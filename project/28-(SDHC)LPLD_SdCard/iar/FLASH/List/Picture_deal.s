///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:41:01
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\Picture_deal.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW7677.tmp
//        (G:\AIcar\@@\xiugai\lib\common\Picture_deal.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\Picture_deal.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN beacon_x
        EXTERN beacon_y
        EXTERN imgbuff
        EXTERN twinkle_delay

        PUBLIC Coordinate_Filter
        PUBLIC `Data`
        PUBLIC Judge_distance
        PUBLIC PaiXu
        PUBLIC Scan_Point
        PUBLIC X1
        PUBLIC Y1
        PUBLIC findflag
        PUBLIC limit_float
        PUBLIC limit_s16
        PUBLIC limit_u8
        PUBLIC total_count

// G:\AIcar\@@\xiugai\lib\common\Picture_deal.c
//    1 #include "Picture_deal.h"
//    2 #include <stdbool.h>  //bool headfile
//    3 //#include <stdlib.h>
//    4 #include "include.h"
//    5 
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    7 u8 findflag;
findflag:
        DS8 1
//    8 
//    9 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 s16 X1[COL]= {0};
X1:
        DS8 160

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 s16 Y1[COL]= {0};
Y1:
        DS8 160

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 int total_count;
total_count:
        DS8 4
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 s16 Data[3][3]={0};
`Data`:
        DS8 20
//   15 
//   16 /*信标灯坐标滤波*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 s16 Coordinate_Filter(s16 Channal,s16 Data_In)
//   18 {
Coordinate_Filter:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   19 
//   20 	s16 Temp=0;
        MOVS     R6,#+0
//   21 	Data[Channal][0]=Data[Channal][1];
        MOVS     R0,#+6
        LDR.W    R3,??DataTable2
        SMULBB   R1,R4,R0
        ADD      R1,R3,R1
        LDRH     R1,[R1, #+2]
        SMULBB   R2,R4,R0
        STRH     R1,[R3, R2]
//   22 	Data[Channal][1]=Data[Channal][2];
        SMULBB   R1,R4,R0
        ADD      R1,R3,R1
        SMULBB   R2,R4,R0
        ADD      R2,R3,R2
        LDRH     R2,[R2, #+4]
        STRH     R2,[R1, #+2]
//   23 	Data[Channal][2]=Data_In;
        SMULBB   R1,R4,R0
        ADD      R1,R3,R1
        STRH     R5,[R1, #+4]
//   24 	Temp=PaiXu(Data[Channal][0],Data[Channal][1],Data[Channal][2]);
        SMULBB   R1,R4,R0
        ADD      R1,R3,R1
        LDRSH    R2,[R1, #+4]
        SMULBB   R1,R4,R0
        ADD      R1,R3,R1
        LDRSH    R1,[R1, #+2]
        SMULBB   R0,R4,R0
        LDRSH    R0,[R3, R0]
        BL       PaiXu
//   25 
//   26 	return Temp;
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return
//   27 }
//   28 
//   29 /*找信标灯函数*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void Scan_Point(void)
//   31 {	   
Scan_Point:
        PUSH     {R3-R11,LR}
//   32   u8 i = 0, j = 0;
        MOVS     R0,#+0
        MOVS     R4,#+0
//   33   u8 X=0,Y=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//   34   uint8 pot_1=0;
        MOVS     R10,#+0
//   35   uint8 pot_2=0;
        MOVS     R11,#+0
//   36   u16 count_x = 0;
        MOVS     R9,#+0
//   37   u8 first = 1;
        MOVS     R1,#+1
        STRB     R1,[SP, #+2]
//   38   u8 flag = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+1]
//   39   u8 total_flag = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+0]
//   40   int total = 0;
        MOVS     R7,#+0
//   41   static bool delay_flag1=0;
//   42   for(u8 z =0;z<COL;z++)  //80
        MOVS     R1,#+0
??Scan_Point_0:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+80
        BGE.N    ??Scan_Point_1
//   43   {
//   44      X1[z]=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_1
        MOV      R12,R1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        STRH     R2,[R3, R12, LSL #+1]
//   45      Y1[z]=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable2_2
        MOV      R12,R1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        STRH     R2,[R3, R12, LSL #+1]
//   46    }
        ADDS     R1,R1,#+1
        B.N      ??Scan_Point_0
//   47   for( i =0; i<ROW;i++)
??Scan_Point_1:
        MOVS     R8,#+0
??Scan_Point_2:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.W    ??Scan_Point_3
//   48   {				
//   49      for(j =0; j <COL;j++)
        MOVS     R0,#+0
        MOVS     R4,R0
??Scan_Point_4:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+80
        BGE.W    ??Scan_Point_5
//   50      {
//   51 	    if(imgbuff[i][j] == 255)                //软件二值化，得到白点
        LDR.W    R1,??DataTable2_3
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,#+80
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R0, R1]
        CMP      R0,#+255
        BNE.N    ??Scan_Point_6
//   52 	    {  
//   53           count_x++;                          //白点列统计
        ADDS     R9,R9,#+1
//   54 	    }
//   55 //	    else   //黑点
//   56 //	    {
//   57            if(count_x>=2)  //该黑点前有连续两个或两个以上的白点
??Scan_Point_6:
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BLT.N    ??Scan_Point_7
//   58            {
//   59 	          X = j-count_x/2;   //一块白色区域的中点位置
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        SUBS     R0,R4,R0
        MOVS     R5,R0
//   60 	          Y = i;
        MOV      R6,R8
//   61 	         if(first==1)  //第一次找到两个点以上白条
        LDRB     R0,[SP, #+2]
        CMP      R0,#+1
        BNE.N    ??Scan_Point_8
//   62 	         {
//   63 		        X1[pot_1++] =X;  //记录当前点坐标
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_1
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRH     R0,[R1, R2, LSL #+1]
        ADDS     R10,R10,#+1
//   64 		        Y1[pot_2++] =Y;
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_2
        MOV      R2,R11
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRH     R0,[R1, R2, LSL #+1]
        ADDS     R11,R11,#+1
//   65 		        first = 2;   
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
        B.N      ??Scan_Point_7
//   66               }
//   67 	          else if (Error(X,X1[pot_1-1])<4&&Error(Y,Y1[pot_1-1])<=2)  // 新坐标中心值和上一个坐标的偏差很小，记录该坐标值
??Scan_Point_8:
        LDR.N    R1,??DataTable2_1
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R1,R0, LSL #+1
        LDRSH    R0,[R0, #-2]
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R0,R2
        BGE.N    ??Scan_Point_9
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R1,R0, LSL #+1
        LDRSH    R0,[R0, #-2]
        SUBS     R0,R2,R0
        B.N      ??Scan_Point_10
??Scan_Point_9:
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R1,R0, LSL #+1
        LDRSH    R2,[R0, #-2]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R2,R2,R0
        CMP      R2,#+4
        BGE.N    ??Scan_Point_11
        LDR.N    R0,??DataTable2_2
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R2,R0,R2, LSL #+1
        LDRSH    R2,[R2, #-2]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R2,R3
        BGE.N    ??Scan_Point_11
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R3,R10
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R0,R0,R3, LSL #+1
        LDRSH    R0,[R0, #-2]
        SUBS     R0,R2,R0
        B.N      ??Scan_Point_10
??Scan_Point_11:
        LDR.N    R0,??DataTable2_2
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADD      R0,R0,R2, LSL #+1
        LDRSH    R2,[R0, #-2]
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R2,R2,R0
        CMP      R2,#+3
        BGE.N    ??Scan_Point_12
        MOVS     R0,#+1
        B.N      ??Scan_Point_10
??Scan_Point_12:
        MOVS     R0,#+0
??Scan_Point_10:
        CMP      R0,#+0
        BEQ.N    ??Scan_Point_7
//   68 	          {
//   69 		         X1[pot_1++] =X;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRH     R0,[R1, R2, LSL #+1]
        ADDS     R10,R10,#+1
//   70          
//   71 		         Y1[pot_2++] =Y;
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_2
        MOV      R2,R11
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRH     R0,[R1, R2, LSL #+1]
        ADDS     R11,R11,#+1
//   72 		         flag =1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//   73               } 
//   74             }
//   75             count_x = 0;
??Scan_Point_7:
        MOVS     R0,#+0
        MOV      R9,R0
//   76 	  //  }
//   77     }
        ADDS     R4,R4,#+1
        B.N      ??Scan_Point_4
//   78     count_x = 0; 
??Scan_Point_5:
        MOVS     R0,#+0
        MOV      R9,R0
//   79      first = 1; 
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//   80   }
        ADDS     R8,R8,#+1
        B.N      ??Scan_Point_2
//   81  // findflag = flag;
//   82   if(flag ==1)  //找到信标灯
??Scan_Point_3:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+1
        BNE.N    ??Scan_Point_13
//   83   {
//   84     delay_flag1=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_4
        STRB     R0,[R1, #+0]
//   85     beacon_x=X1[pot_1>>1];
        LDR.N    R0,??DataTable2_1
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R1,R1,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//   86     beacon_y=Y1[pot_2>>1];
        LDR.N    R0,??DataTable2_2
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R1,R1,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+0]
        B.N      ??Scan_Point_14
//   87   }
//   88   else if(delay_flag1 == 1 && flag ==0)  //上一帧找到，本次没有找到
??Scan_Point_13:
        LDR.N    R1,??DataTable2_4
        LDRB     R0,[R1, #+0]
        CMP      R0,#+1
        BNE.N    ??Scan_Point_15
        LDRB     R0,[SP, #+1]
        CMP      R0,#+0
        BNE.N    ??Scan_Point_15
//   89   {
//   90     beacon_x+=COL/2;
        LDR.N    R0,??DataTable2_5
        LDRH     R2,[R0, #+0]
        ADDS     R2,R2,#+40
        STRH     R2,[R0, #+0]
//   91     twinkle_delay=25;//结合Time.c里面的注释看这句话就懂了
        MOVS     R0,#+25
        LDR.N    R2,??DataTable2_7
        STRH     R0,[R2, #+0]
//   92     delay_flag1=0;
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//   93     total_flag =1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??Scan_Point_14
//   94   }
//   95   else  //没有找到
//   96   {
//   97     if(twinkle_delay == 0) 
??Scan_Point_15:
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Scan_Point_16
//   98     {
//   99       beacon_x = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  100       beacon_y = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+0]
//  101       total_flag =0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        B.N      ??Scan_Point_14
//  102     }
//  103     else   
//  104     {
//  105       beacon_x+=COL/2;
??Scan_Point_16:
        LDR.N    R0,??DataTable2_5
        LDRH     R1,[R0, #+0]
        ADDS     R1,R1,#+40
        STRH     R1,[R0, #+0]
//  106       total_flag =1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  107      }
//  108   }
//  109 	
//  110   beacon_x -= COL/2;
??Scan_Point_14:
        LDR.N    R0,??DataTable2_5
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+40
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  111   beacon_x=limit_s16(beacon_x,-COL/2,COL/2);
        MOVS     R2,#+40
        MVNS     R1,#+39
        LDR.N    R0,??DataTable2_5
        LDRSH    R0,[R0, #+0]
        BL       limit_s16
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  112   beacon_y=limit_s16(beacon_y,0,60);
        MOVS     R2,#+60
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_6
        LDRSH    R0,[R0, #+0]
        BL       limit_s16
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+0]
//  113   beacon_x =Coordinate_Filter(0,beacon_x);
        LDR.N    R0,??DataTable2_5
        LDRSH    R1,[R0, #+0]
        MOVS     R0,#+0
        BL       Coordinate_Filter
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  114   beacon_y =Coordinate_Filter(1,beacon_y);
        LDR.N    R0,??DataTable2_6
        LDRSH    R1,[R0, #+0]
        MOVS     R0,#+1
        BL       Coordinate_Filter
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+0]
//  115 /////　测试四个轮子时用到，实际跑时屏蔽   ////
//  116   //beacon_x = -25;
//  117   //beacon_y = 5;
//  118 
//  119   
//  120   if(beacon_x == -COL/2 && beacon_y == 0)
        LDR.N    R0,??DataTable2_5
        LDRSH    R0,[R0, #+0]
        CMN      R0,#+40
        BNE.N    ??Scan_Point_17
        LDR.N    R0,??DataTable2_6
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Scan_Point_17
//  121     beacon_x = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  122   if(beacon_x ==0 && beacon_y==0)
??Scan_Point_17:
        LDR.N    R0,??DataTable2_5
        LDRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable2_6
        LDRH     R0,[R0, #+0]
        ORRS     R1,R0,R1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??Scan_Point_18
//  123   {
//  124     total_count = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
        B.N      ??Scan_Point_19
//  125   }
//  126   else    //很明显，当摄像头看到的白点少时，是在远处，看到的白点多时，灯在近处，所以这句话判断白点数，以此来判断灯的远近
//  127   {
//  128     for(int m =0; m<ROW;m++)	
??Scan_Point_18:
        MOVS     R0,#+0
??Scan_Point_20:
        CMP      R0,#+60
        BGE.N    ??Scan_Point_21
//  129       for(int n =0; n < COL;n++)
        MOVS     R1,#+0
??Scan_Point_22:
        CMP      R1,#+80
        BGE.N    ??Scan_Point_23
//  130       {
//  131         if(imgbuff[m][n] > 100)                //软件二值化，得到白点
        LDR.N    R2,??DataTable2_3
        MOVS     R3,#+80
        MUL      R3,R3,R0
        ADD      R2,R2,R3
        LDRB     R2,[R2, R1]
        CMP      R2,#+101
        BLT.N    ??Scan_Point_24
//  132         {  
//  133           if(total<2000)
        CMP      R7,#+2000
        BGE.N    ??Scan_Point_25
//  134            total++;                          //白点列统计
        ADDS     R7,R7,#+1
//  135           if(total>2000)
??Scan_Point_25:
        MOVW     R2,#+2001
        CMP      R7,R2
        BLT.N    ??Scan_Point_24
//  136             total=2000;
        MOV      R2,#+2000
        MOVS     R7,R2
//  137         }
//  138       }
??Scan_Point_24:
        ADDS     R1,R1,#+1
        B.N      ??Scan_Point_22
??Scan_Point_23:
        ADDS     R0,R0,#+1
        B.N      ??Scan_Point_20
//  139       if(total_flag == 0)
??Scan_Point_21:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??Scan_Point_19
//  140         total_count = total;
        LDR.N    R0,??DataTable2_8
        STR      R7,[R0, #+0]
//  141   }
//  142   total_count =Coordinate_Filter(2,total_count);
??Scan_Point_19:
        LDR.N    R0,??DataTable2_8
        LDR      R1,[R0, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,#+2
        BL       Coordinate_Filter
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//  143   if(total_count>2000)
        LDR.N    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        MOVW     R1,#+2001
        CMP      R0,R1
        BLT.N    ??Scan_Point_26
//  144     total_count=2000;
        MOV      R0,#+2000
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//  145   
//  146   //total_count = 80; //测试距离对小车的影响
//  147 }
??Scan_Point_26:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Scan_Point::delay_flag1`:
        DS8 1
//  148 
//  149 
//  150 
//  151 //检测信标灯的远近和有无

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 u8 Judge_distance(s16 x,s16 y)   //传信标灯的坐标进去
//  153 {
Judge_distance:
        PUSH     {R4}
        MOVS     R2,R0
//  154 	//static u16 beacon_maybe_blocked =0;  //灯可能被挡住  因为车的高度就20cm，灯的高度是12cm，所以如果在一条直线上有多个灯，可能闪烁的信标灯会被其他灯挡住，导致摄像头看不到，这时候当连续原地转圈还找不到的话，就使车横移
//  155 	if((x ==0 && y==0 )|| (x>=55 || x<=-55))   //如果没有找到灯，或者找到的灯太偏离中线
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??Judge_distance_0
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??Judge_distance_1
??Judge_distance_0:
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+55
        BGE.N    ??Judge_distance_1
        MOVS     R0,R2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMN      R0,#+54
        BLT.N    ??Judge_distance_1
//  156 	{
//  157 		//beacon_maybe_blocked ++;
//  158 //		if(beacon_maybe_blocked >=280 && beacon_maybe_blocked <= 320) //转圈2秒后，平移0.3秒
//  159 //		{
//  160 //			return FOREC_RAMPAGE;  //强制横移
//  161 //		}
//  162 //		else
//  163 //		{
//  164 //			if(beacon_maybe_blocked > 320)
//  165 //				beacon_maybe_blocked =0;
//  166 //			return roll;   //没有时原地打转
//  167 //		}
//  168 	}
//  169 	else  //有信号灯
//  170 	{
//  171 		//beacon_maybe_blocked=0;
//  172 		if(total_count<130)                          //参数需要整定//16
        LDR.N    R0,??DataTable2_8
        LDR      R3,[R0, #+0]
        CMP      R3,#+130
        BGE.N    ??Judge_distance_2
//  173 			return far;
        MOVS     R0,#+1
        B.N      ??Judge_distance_3
//  174          // return you;
//  175 		if(total_count<300 && total_count>=130)
??Judge_distance_2:
        LDR      R3,[R0, #+0]
        CMP      R3,#+300
        BGE.N    ??Judge_distance_4
        LDR      R3,[R0, #+0]
        CMP      R3,#+130
        BLT.N    ??Judge_distance_4
//  176 		{
//  177 			  return near;
        MOVS     R0,#+2
        B.N      ??Judge_distance_3
//  178           // return you;
//  179 		}
//  180 		if(total_count>=300 && total_count<=700)	
??Judge_distance_4:
        LDR      R3,[R0, #+0]
        CMP      R3,#+300
        BLT.N    ??Judge_distance_5
        LDR      R3,[R0, #+0]
        MOVW     R4,#+701
        CMP      R3,R4
        BGE.N    ??Judge_distance_5
//  181 		{
//  182 			return very_near;
        MOVS     R0,#+3
        B.N      ??Judge_distance_3
//  183           //return you;
//  184 		}
//  185 		if(total_count>700)	
??Judge_distance_5:
        LDR      R0,[R0, #+0]
        MOVW     R3,#+701
        CMP      R0,R3
        BLT.N    ??Judge_distance_1
//  186 		{
//  187 			return very_very_near;
        MOVS     R0,#+6
        B.N      ??Judge_distance_3
//  188            // return you;
//  189 		}
//  190 	}
//  191 	return 0;   //不加这句话有警告
??Judge_distance_1:
        MOVS     R0,#+0
??Judge_distance_3:
        POP      {R4}
        BX       LR               ;; return
//  192 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     `Data`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     X1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     Y1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     `Scan_Point::delay_flag1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     beacon_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DATA32
        DC32     beacon_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DATA32
        DC32     twinkle_delay

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DATA32
        DC32     total_count
//  193 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 s16 limit_s16(s16 Data,s16 Min,s16 Max)      //对16位整形限幅
//  195 {
limit_s16:
        PUSH     {R4}
//  196 	if(Data<Min)Data=Min;
        MOVS     R3,R0
        MOVS     R4,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R3,R4
        BGE.N    ??limit_s16_0
        MOVS     R0,R1
        B.N      ??limit_s16_1
//  197 	else if(Data>Max)Data=Max;
??limit_s16_0:
        MOVS     R3,R2
        MOVS     R4,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R3,R4
        BGE.N    ??limit_s16_1
        MOVS     R0,R2
//  198 	return Data;
??limit_s16_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4}
        BX       LR               ;; return
//  199 }
//  200 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 float limit_float(float Data,float Min,float Max)      //对浮点数限幅
//  202 {
limit_float:
        PUSH     {R4,LR}
        MOVS     R3,R0
        MOVS     R4,R1
//  203 	if(Data<Min)Data=Min;
        MOVS     R0,R3
        MOVS     R1,R4
        BL       __aeabi_cfcmple
        BCS.N    ??limit_float_0
        MOVS     R3,R4
        B.N      ??limit_float_1
//  204 	else if(Data>Max)Data=Max;
??limit_float_0:
        MOVS     R0,R2
        MOVS     R1,R3
        BL       __aeabi_cfcmple
        BCS.N    ??limit_float_1
        MOVS     R3,R2
//  205 	return Data;
??limit_float_1:
        MOVS     R0,R3
        POP      {R4,PC}          ;; return
//  206 }
//  207 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 uint8 limit_u8(uint8 Data,uint8 Min,uint8 Max)      //对无符号8位字符型限幅
//  209 {
limit_u8:
        PUSH     {R4}
//  210 	if(Data<Min)Data=Min;
        MOVS     R3,R0
        MOVS     R4,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R3,R4
        BCS.N    ??limit_u8_0
        MOVS     R0,R1
        B.N      ??limit_u8_1
//  211 	else if(Data>Max)Data=Max;
??limit_u8_0:
        MOVS     R3,R2
        MOVS     R4,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R3,R4
        BCS.N    ??limit_u8_1
        MOVS     R0,R2
//  212 	return Data;
??limit_u8_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  213 }
//  214 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  215 s16 PaiXu(s16 Data0,s16 Data1,s16 Data2)//3 2 1
//  216 {
PaiXu:
        PUSH     {R4,R5}
        MOVS     R3,R0
//  217 	s16 Temp=0;
        MOVS     R4,#+0
//  218 	if(Data0>Data1)//2 3 1
        MOVS     R0,R1
        MOVS     R5,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BGE.N    ??PaiXu_0
//  219 	{
//  220 		Temp=Data0;
        MOVS     R4,R3
//  221 		Data0=Data1;
        MOVS     R3,R1
//  222 		Data1=Temp;
        MOVS     R1,R4
//  223 	}
//  224 	if(Data0>Data2)//1 3 2
??PaiXu_0:
        MOVS     R0,R2
        MOVS     R5,R3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BGE.N    ??PaiXu_1
//  225 	{
//  226 		Temp=Data0;
        MOVS     R4,R3
//  227 		Data0=Data2;
        MOVS     R3,R2
//  228 		Data2=Temp;
        MOVS     R2,R4
//  229 	}
//  230 	if(Data1>Data2)//1 2 3
??PaiXu_1:
        MOVS     R0,R2
        MOVS     R5,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BGE.N    ??PaiXu_2
//  231 	{
//  232 		Temp=Data1;
        MOVS     R4,R1
//  233 		Data1=Data2;
        MOVS     R1,R2
//  234 		Data2=Temp;
        MOVS     R2,R4
//  235 	}
//  236 	return Data1;
??PaiXu_2:
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
//  237 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  238 
//  239 
// 
//   346 bytes in section .bss
// 1 220 bytes in section .text
// 
// 1 220 bytes of CODE memory
//   346 bytes of DATA memory
//
//Errors: none
//Warnings: none
