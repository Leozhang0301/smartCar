///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:20
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Picture_deal.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW46B7.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Picture_deal.c -D
//        LPLD_K60 -lCN
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\Picture_deal.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN beacon_x
        EXTERN beacon_y
        EXTERN image
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

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\Picture_deal.c
//    1 #include "Picture_deal.h"
//    2 #include <stdbool.h>  //bool headfile
//    3 //#include <stdlib.h>
//    4 #include "include.h"
//    5 
//    6 extern u8 threshold;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    7 u8 findflag;
findflag:
        DS8 1
//    8 extern uint8 imgbuff[IMG_ROWS][IMG_COLS];
//    9 extern u8 image[ROW][COL];
//   10 extern u8 threshold;
//   11 extern    uint16  ImgThreshold;
//   12 extern s16 twinkle_delay;  //延时时间因子
//   13 extern s16 beacon_x;
//   14 extern s16 beacon_y;
//   15 extern s16 slave_beacon_x;
//   16 extern s16 slave_beacon_y;
//   17 extern s16 slave_count ;
//   18 extern u8 beacon_threshold;
//   19 extern u8 No_Barrier_flag ;
//   20 extern u8 excursion_flag ;
//   21 extern u8 Stop_car_flag;
//   22 extern u8 findflag;
//   23 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   24 s16 X1[COL]= {0};
X1:
        DS8 160

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 s16 Y1[COL]= {0};
Y1:
        DS8 160

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 int total_count;
total_count:
        DS8 4
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 s16 Data[3][3]={0};
`Data`:
        DS8 20
//   29 
//   30 /*信标灯坐标滤波*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 s16 Coordinate_Filter(s16 Channal,s16 Data_In)
//   32 {
Coordinate_Filter:
        PUSH     {R3-R5,LR}
//   33 
//   34 	s16 Temp=0;
        MOVS     R2,#+0
//   35 	Data[Channal][0]=Data[Channal][1];
        MOVS     R3,#+6
        LDR.W    R4,??DataTable2
        SMULBB   R2,R0,R3
        ADD      R2,R4,R2
        LDRH     R2,[R2, #+2]
        SMULBB   R5,R0,R3
        STRH     R2,[R4, R5]
//   36 	Data[Channal][1]=Data[Channal][2];
        SMULBB   R2,R0,R3
        ADD      R2,R4,R2
        SMULBB   R5,R0,R3
        ADD      R5,R4,R5
        LDRH     R5,[R5, #+4]
        STRH     R5,[R2, #+2]
//   37 	Data[Channal][2]=Data_In;
        SMULBB   R2,R0,R3
        ADD      R2,R4,R2
        STRH     R1,[R2, #+4]
//   38 	Temp=PaiXu(Data[Channal][0],Data[Channal][1],Data[Channal][2]);
        SMULBB   R1,R0,R3
        ADD      R1,R4,R1
        LDRSH    R2,[R1, #+4]
        SMULBB   R1,R0,R3
        ADD      R1,R4,R1
        LDRSH    R1,[R1, #+2]
        SMULBB   R0,R0,R3
        LDRSH    R0,[R4, R0]
        BL       PaiXu
//   39 
//   40 	return Temp;
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//   41 }
//   42 
//   43 /*找信标灯函数*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void Scan_Point(void)
//   45 {	   
Scan_Point:
        PUSH     {R3-R11,LR}
//   46   u8 i = 0, j = 0;
        MOVS     R0,#+0
        MOVS     R0,#+0
//   47   u8 X=0,Y=0;
        MOVS     R0,#+0
        MOVS     R0,#+0
//   48   uint8 pot_1=0;
        MOVS     R1,#+0
//   49   uint8 pot_2=0;
        MOVS     R2,#+0
//   50   u16 count_x = 0;
        MOVS     LR,#+0
//   51   u8 first = 1;
        MOVS     R6,#+1
//   52   u8 flag = 0;
        MOVS     R3,#+0
//   53   u8 total_flag = 0;
        MOVS     R5,#+0
//   54   int total = 0;
        MOVS     R4,#+0
//   55   static bool delay_flag1=0;
//   56   for(u8 z =0;z<COL;z++)  //80
        MOVS     R0,#+0
        B.N      ??Scan_Point_0
//   57   {
//   58      X1[z]=0;
??Scan_Point_1:
        MOVS     R7,#+0
        LDR.W    R12,??DataTable2_1
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STRH     R7,[R12, R8, LSL #+1]
//   59      Y1[z]=0;
        MOVS     R7,#+0
        LDR.W    R12,??DataTable2_2
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STRH     R7,[R12, R8, LSL #+1]
//   60    }
        ADDS     R0,R0,#+1
??Scan_Point_0:
        MOVS     R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+80
        BLT.N    ??Scan_Point_1
//   61   for( i =0; i<ROW;i++)
        MOVS     R7,#+0
        B.N      ??Scan_Point_2
//   62   {				
//   63      for(j =0; j <COL;j++)
//   64      {
//   65 	    if(imgbuff[i][j] == 255)                //软件二值化，得到白点
//   66 	    {  
//   67           count_x++;                          //白点列统计
//   68 	    }
//   69 //	    else   //黑点
//   70 //	    {
//   71            if(count_x>=2)  //该黑点前有连续两个或两个以上的白点
//   72            {
//   73 	          X = j-count_x/2;   //一块白色区域的中点位置
//   74 	          Y = i;
//   75 	         if(first==1)  //第一次找到两个点以上白条
//   76 	         {
//   77 		        X1[pot_1++] =X;  //记录当前点坐标
//   78 		        Y1[pot_2++] =Y;
//   79 		        first = 2;   
//   80               }
//   81 	          else if (Error(X,X1[pot_1-1])<4&&Error(Y,Y1[pot_1-1])<=2)  // 新坐标中心值和上一个坐标的偏差很小，记录该坐标值
//   82 	          {
//   83 		         X1[pot_1++] =X;
//   84          
//   85 		         Y1[pot_2++] =Y;
//   86 		         flag =1;
//   87               } 
//   88             }
//   89             count_x = 0;
//   90 	  //  }
//   91     }
//   92     count_x = 0; 
??Scan_Point_3:
        MOVS     LR,#+0
//   93      first = 1; 
        MOVS     R6,#+1
        ADDS     R7,R7,#+1
??Scan_Point_2:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+60
        BGE.W    ??Scan_Point_4
        MOVS     R12,#+0
        B.N      ??Scan_Point_5
??Scan_Point_6:
        MOVS     R0,#+0
        B.N      ??Scan_Point_7
??Scan_Point_8:
        LDR.N    R0,??DataTable2_2
        MOV      R10,R1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R10,[R0, #-2]
        MOV      R0,LR
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R10,R10,R0
        CMP      R10,#+3
        BGE.N    ??Scan_Point_6
        MOVS     R0,#+1
??Scan_Point_7:
        CMP      R0,#+0
        BEQ.N    ??Scan_Point_9
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R9,[R8, R0, LSL #+1]
        ADDS     R1,R1,#+1
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LDR.N    R0,??DataTable2_2
        MOVS     R3,R2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        STRH     LR,[R0, R3, LSL #+1]
        ADDS     R2,R2,#+1
        MOVS     R3,#+1
??Scan_Point_9:
        MOVS     LR,#+0
        ADDS     R12,R12,#+1
??Scan_Point_5:
        MOV      R0,R12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+80
        BGE.N    ??Scan_Point_3
        LDR.W    R8,??DataTable2_3
        MOV      R9,R7
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R0,#+80
        MUL      R9,R0,R9
        ADD      R0,R8,R9
        MOV      R8,R12
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRB     R0,[R0, R8]
        CMP      R0,#+255
        BNE.N    ??Scan_Point_10
        ADDS     LR,LR,#+1
??Scan_Point_10:
        MOV      R0,LR
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+2
        BLT.N    ??Scan_Point_9
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        MOVS     R0,#+2
        SDIV     R9,LR,R0
        SUBS     R9,R12,R9
        MOV      LR,R7
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??Scan_Point_11
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable2_1
        MOVS     R6,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRH     R9,[R0, R6, LSL #+1]
        ADDS     R1,R1,#+1
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LDR.N    R0,??DataTable2_2
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRH     LR,[R0, R6, LSL #+1]
        ADDS     R2,R2,#+1
        MOVS     R6,#+2
        B.N      ??Scan_Point_9
??Scan_Point_11:
        LDR.W    R8,??DataTable2_1
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R8,R0, LSL #+1
        LDRSH    R0,[R0, #-2]
        MOV      R10,R9
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R0,R10
        BGE.N    ??Scan_Point_12
        MOV      R10,R9
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R8,R0, LSL #+1
        LDRSH    R0,[R0, #-2]
        SUBS     R0,R10,R0
        B.N      ??Scan_Point_7
??Scan_Point_12:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R0,R8,R0, LSL #+1
        LDRSH    R10,[R0, #-2]
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R10,R10,R0
        CMP      R10,#+4
        BGE.W    ??Scan_Point_8
        LDR.N    R0,??DataTable2_2
        MOV      R10,R1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ADD      R10,R0,R10, LSL #+1
        LDRSH    R10,[R10, #-2]
        MOV      R11,LR
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        CMP      R10,R11
        BGE.W    ??Scan_Point_8
        MOV      R10,LR
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R11,R1
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        ADD      R0,R0,R11, LSL #+1
        LDRSH    R0,[R0, #-2]
        SUBS     R0,R10,R0
        B.N      ??Scan_Point_7
//   94   }
//   95  // findflag = flag;
//   96   if(flag ==1)  //找到信标灯
??Scan_Point_4:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??Scan_Point_13
//   97   {
//   98     delay_flag1=1;
        MOVS     R0,#+1
        LDR.N    R3,??DataTable2_4
        STRB     R0,[R3, #+0]
//   99     beacon_x=X1[pot_1>>1];
        LDR.N    R0,??DataTable2_1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ASRS     R1,R1,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  100     beacon_y=Y1[pot_2>>1];
        LDR.N    R0,??DataTable2_2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ASRS     R2,R2,#+1
        LDRH     R0,[R0, R2, LSL #+1]
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+0]
        B.N      ??Scan_Point_14
//  101   }
//  102   else if(delay_flag1 == 1 && flag ==0)  //上一帧找到，本次没有找到
??Scan_Point_13:
        LDR.N    R0,??DataTable2_4
        LDRB     R1,[R0, #+0]
        CMP      R1,#+1
        BNE.N    ??Scan_Point_15
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??Scan_Point_15
//  103   {
//  104     beacon_x+=COL/2;
        LDR.N    R1,??DataTable2_5
        LDRH     R2,[R1, #+0]
        ADDS     R2,R2,#+40
        STRH     R2,[R1, #+0]
//  105     twinkle_delay=25;//结合Time.c里面的注释看这句话就懂了
        MOVS     R1,#+25
        LDR.N    R2,??DataTable2_7
        STRH     R1,[R2, #+0]
//  106     delay_flag1=0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  107     total_flag =1;
        MOVS     R5,#+1
        B.N      ??Scan_Point_14
//  108   }
//  109   else  //没有找到
//  110   {
//  111     if(twinkle_delay == 0) 
??Scan_Point_15:
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Scan_Point_16
//  112     {
//  113       beacon_x = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_5
        STRH     R0,[R1, #+0]
//  114       beacon_y = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_6
        STRH     R0,[R1, #+0]
//  115       total_flag =0;
        MOVS     R5,#+0
        B.N      ??Scan_Point_14
//  116     }
//  117     else   
//  118     {
//  119       beacon_x+=COL/2;
??Scan_Point_16:
        LDR.N    R0,??DataTable2_5
        LDRH     R1,[R0, #+0]
        ADDS     R1,R1,#+40
        STRH     R1,[R0, #+0]
//  120       total_flag =1;
        MOVS     R5,#+1
//  121      }
//  122   }
//  123 	
//  124   beacon_x -= COL/2;
??Scan_Point_14:
        LDR.N    R6,??DataTable2_5
        LDRH     R0,[R6, #+0]
        SUBS     R0,R0,#+40
        STRH     R0,[R6, #+0]
//  125   beacon_x=limit_s16(beacon_x,-COL/2,COL/2);
        MVNS     R8,#+39
        MOVS     R2,#+40
        MOV      R1,R8
        LDRSH    R0,[R6, #+0]
        BL       limit_s16
        STRH     R0,[R6, #+0]
//  126   beacon_y=limit_s16(beacon_y,0,60);
        LDR.N    R7,??DataTable2_6
        MOVS     R2,#+60
        MOVS     R1,#+0
        LDRSH    R0,[R7, #+0]
        BL       limit_s16
        STRH     R0,[R7, #+0]
//  127   beacon_x =Coordinate_Filter(0,beacon_x);
        LDRSH    R1,[R6, #+0]
        MOVS     R0,#+0
        BL       Coordinate_Filter
        STRH     R0,[R6, #+0]
//  128   beacon_y =Coordinate_Filter(1,beacon_y);
        LDRSH    R1,[R7, #+0]
        MOVS     R0,#+1
        BL       Coordinate_Filter
        STRH     R0,[R7, #+0]
//  129 /////　测试四个轮子时用到，实际跑时屏蔽   ////
//  130   //beacon_x = -25;
//  131   //beacon_y = 5;
//  132 
//  133   
//  134   if(beacon_x == -COL/2 && beacon_y == 0)
        LDRSH    R0,[R6, #+0]
        CMP      R0,R8
        BNE.N    ??Scan_Point_17
        LDRSH    R0,[R7, #+0]
        CMP      R0,#+0
        BNE.N    ??Scan_Point_17
//  135     beacon_x = 0;
        MOVS     R0,#+0
        STRH     R0,[R6, #+0]
//  136   if(beacon_x ==0 && beacon_y==0)
??Scan_Point_17:
        LDRH     R1,[R6, #+0]
        LDRH     R0,[R7, #+0]
        ORRS     R1,R0,R1
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??Scan_Point_18
//  137   {
//  138     total_count = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
        B.N      ??Scan_Point_19
//  139   }
//  140   else    //很明显，当摄像头看到的白点少时，是在远处，看到的白点多时，灯在近处，所以这句话判断白点数，以此来判断灯的远近
//  141   {
//  142     for(int m =0; m<ROW;m++)	
??Scan_Point_18:
        MOVS     R0,#+0
        B.N      ??Scan_Point_20
//  143       for(int n =0; n < COL;n++)
//  144       {
//  145         if(image[m][n] > 100)                //软件二值化，得到白点
??Scan_Point_21:
        LDR.N    R2,??DataTable2_9
        MOVS     R3,#+80
        MUL      R3,R3,R0
        ADD      R2,R2,R3
        LDRB     R2,[R2, R1]
        CMP      R2,#+101
        BLT.N    ??Scan_Point_22
//  146         {  
//  147           if(total<2000)
        CMP      R4,#+2000
        BGE.N    ??Scan_Point_23
//  148            total++;                          //白点列统计
        ADDS     R4,R4,#+1
//  149           if(total>2000)
??Scan_Point_23:
        MOVW     R2,#+2001
        CMP      R4,R2
        BLT.N    ??Scan_Point_22
//  150             total=2000;
        MOV      R4,#+2000
//  151         }
//  152       }
??Scan_Point_22:
        ADDS     R1,R1,#+1
??Scan_Point_24:
        CMP      R1,#+80
        BLT.N    ??Scan_Point_21
        ADDS     R0,R0,#+1
??Scan_Point_20:
        CMP      R0,#+60
        BGE.N    ??Scan_Point_25
        MOVS     R1,#+0
        B.N      ??Scan_Point_24
//  153       if(total_flag == 0)
??Scan_Point_25:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??Scan_Point_19
//  154         total_count = total;
        LDR.N    R0,??DataTable2_8
        STR      R4,[R0, #+0]
//  155   }
//  156   total_count =Coordinate_Filter(2,total_count);
??Scan_Point_19:
        LDR.N    R4,??DataTable2_8
        LDR      R1,[R4, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOVS     R0,#+2
        BL       Coordinate_Filter
        STR      R0,[R4, #+0]
//  157   if(total_count>2000)
        LDR      R0,[R4, #+0]
        MOVW     R1,#+2001
        CMP      R0,R1
        BLT.N    ??Scan_Point_26
//  158     total_count=2000;
        MOV      R0,#+2000
        STR      R0,[R4, #+0]
//  159   
//  160   //total_count = 80; //测试距离对小车的影响
//  161 }
??Scan_Point_26:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Scan_Point::delay_flag1`:
        DS8 1
//  162 
//  163 
//  164 
//  165 //检测信标灯的远近和有无

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 u8 Judge_distance(s16 x,s16 y)   //传信标灯的坐标进去
//  167 {
//  168 	//static u16 beacon_maybe_blocked =0;  //灯可能被挡住  因为车的高度就20cm，灯的高度是12cm，所以如果在一条直线上有多个灯，可能闪烁的信标灯会被其他灯挡住，导致摄像头看不到，这时候当连续原地转圈还找不到的话，就使车横移
//  169 	if((x ==0 && y==0 )|| (x>=55 || x<=-55))   //如果没有找到灯，或者找到的灯太偏离中线
Judge_distance:
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??Judge_distance_0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??Judge_distance_1
??Judge_distance_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R0,R0,#+54
        CMP      R0,#+109
        BCS.N    ??Judge_distance_1
//  170 	{
//  171 		//beacon_maybe_blocked ++;
//  172 //		if(beacon_maybe_blocked >=280 && beacon_maybe_blocked <= 320) //转圈2秒后，平移0.3秒
//  173 //		{
//  174 //			return FOREC_RAMPAGE;  //强制横移
//  175 //		}
//  176 //		else
//  177 //		{
//  178 //			if(beacon_maybe_blocked > 320)
//  179 //				beacon_maybe_blocked =0;
//  180 //			return roll;   //没有时原地打转
//  181 //		}
//  182 	}
//  183 	else  //有信号灯
//  184 	{
//  185 		//beacon_maybe_blocked=0;
//  186 		if(total_count<130)                          //参数需要整定//16
        LDR.N    R0,??DataTable2_8
        LDR      R1,[R0, #+0]
        CMP      R1,#+130
        BGE.N    ??Judge_distance_2
//  187 			return far;
        MOVS     R0,#+1
        B.N      ??Judge_distance_3
//  188          // return you;
//  189 		if(total_count<300 && total_count>=130)
??Judge_distance_2:
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+130
        CMP      R1,#+170
        BCS.N    ??Judge_distance_4
//  190 		{
//  191 			  return near;
        MOVS     R0,#+2
        B.N      ??Judge_distance_3
//  192           // return you;
//  193 		}
//  194 		if(total_count>=300 && total_count<=700)	
??Judge_distance_4:
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+300
        MOVW     R2,#+401
        CMP      R1,R2
        BCS.N    ??Judge_distance_5
//  195 		{
//  196 			return very_near;
        MOVS     R0,#+3
        B.N      ??Judge_distance_3
//  197           //return you;
//  198 		}
//  199 		if(total_count>700)	
??Judge_distance_5:
        LDR      R0,[R0, #+0]
        MOVW     R1,#+701
        CMP      R0,R1
        BLT.N    ??Judge_distance_1
//  200 		{
//  201 			return very_very_near;
        MOVS     R0,#+6
        B.N      ??Judge_distance_3
//  202            // return you;
//  203 		}
//  204 	}
//  205 	return 0;   //不加这句话有警告
??Judge_distance_1:
        MOVS     R0,#+0
??Judge_distance_3:
        BX       LR               ;; return
//  206 }

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

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DATA32
        DC32     image
//  207 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 s16 limit_s16(s16 Data,s16 Min,s16 Max)      //对16位整形限幅
//  209 {
limit_s16:
        PUSH     {R4}
//  210 	if(Data<Min)Data=Min;
        MOVS     R3,R0
        MOVS     R4,R1
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R3,R4
        BGE.N    ??limit_s16_0
        MOVS     R0,R1
        B.N      ??limit_s16_1
//  211 	else if(Data>Max)Data=Max;
??limit_s16_0:
        MOVS     R1,R2
        MOVS     R3,R0
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R1,R3
        BGE.N    ??limit_s16_1
        MOVS     R0,R2
//  212 	return Data;
??limit_s16_1:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4}
        BX       LR               ;; return
//  213 }
//  214 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  215 float limit_float(float Data,float Min,float Max)      //对浮点数限幅
//  216 {
limit_float:
        PUSH     {R7,LR}
        MOVS     R3,R0
//  217 	if(Data<Min)Data=Min;
        MOVS     R0,R3
        BL       __aeabi_cfcmple
        BCS.N    ??limit_float_0
        MOVS     R3,R1
        B.N      ??limit_float_1
//  218 	else if(Data>Max)Data=Max;
??limit_float_0:
        MOVS     R0,R2
        MOVS     R1,R3
        BL       __aeabi_cfcmple
        BCS.N    ??limit_float_1
        MOVS     R3,R2
//  219 	return Data;
??limit_float_1:
        MOVS     R0,R3
        POP      {R1,PC}          ;; return
//  220 }
//  221 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 uint8 limit_u8(uint8 Data,uint8 Min,uint8 Max)      //对无符号8位字符型限幅
//  223 {
limit_u8:
        PUSH     {R4}
//  224 	if(Data<Min)Data=Min;
        MOVS     R3,R0
        MOVS     R4,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R3,R4
        BCS.N    ??limit_u8_0
        MOVS     R0,R1
        B.N      ??limit_u8_1
//  225 	else if(Data>Max)Data=Max;
??limit_u8_0:
        MOVS     R1,R2
        MOVS     R3,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R1,R3
        BCS.N    ??limit_u8_1
        MOVS     R0,R2
//  226 	return Data;
??limit_u8_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
        BX       LR               ;; return
//  227 }
//  228 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  229 s16 PaiXu(s16 Data0,s16 Data1,s16 Data2)//3 2 1
//  230 {
PaiXu:
        PUSH     {R4}
//  231 	s16 Temp=0;
        MOVS     R3,#+0
//  232 	if(Data0>Data1)//2 3 1
        MOVS     R3,R1
        MOVS     R4,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R3,R4
        BGE.N    ??PaiXu_0
//  233 	{
//  234 		Temp=Data0;
        MOVS     R3,R0
//  235 		Data0=Data1;
        MOVS     R0,R1
//  236 		Data1=Temp;
        MOVS     R1,R3
//  237 	}
//  238 	if(Data0>Data2)//1 3 2
??PaiXu_0:
        MOVS     R3,R2
        MOVS     R4,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R3,R4
        BGE.N    ??PaiXu_1
//  239 	{
//  240 		Temp=Data0;
//  241 		Data0=Data2;
//  242 		Data2=Temp;
        MOVS     R2,R0
//  243 	}
//  244 	if(Data1>Data2)//1 2 3
??PaiXu_1:
        MOVS     R0,R2
        MOVS     R3,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        CMP      R0,R3
        BGE.N    ??PaiXu_2
//  245 	{
//  246 		Temp=Data1;
        MOVS     R0,R1
//  247 		Data1=Data2;
        MOVS     R1,R2
//  248 		Data2=Temp;
//  249 	}
//  250 	return Data1;
??PaiXu_2:
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4}
        BX       LR               ;; return
//  251 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  252 
//  253 
// 
//   346 bytes in section .bss
// 1 130 bytes in section .text
// 
// 1 130 bytes of CODE memory
//   346 bytes of DATA memory
//
//Errors: none
//Warnings: none
