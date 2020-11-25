///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:15
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\imagehandle.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW2BB4.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\imagehandle.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\imagehandle.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LCD_Write_Int
        EXTERN __aeabi_memclr4
        EXTERN imgbuff
        EXTERN my_abs

        PUBLIC IMG
        PUBLIC IMG2
        PUBLIC IMG_Handle
        PUBLIC deal_flag
        PUBLIC display_flag
        PUBLIC fps1_n
        PUBLIC fps_num1_n
        PUBLIC img1
        PUBLIC img2
        PUBLIC img3
        PUBLIC img4
        PUBLIC img_num
        PUBLIC light_flag
        PUBLIC light_x
        PUBLIC light_y
        PUBLIC touying

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\imagehandle.c
//    1 
//    2 #include "include.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 unsigned char img1[IMG_ROWS][IMG_COLS] ={0}; 
img1:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 unsigned char img2[IMG_ROWS][IMG_COLS] ={0}; 
img2:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 unsigned char img3[IMG_ROWS][IMG_COLS] ={0}; 
img3:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 unsigned char img4[IMG_ROWS][IMG_COLS] ={0}; 
img4:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 unsigned char IMG[IMG_ROWS][IMG_COLS] ={0}; 
IMG:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 unsigned char IMG2[IMG_ROWS][IMG_COLS] ={0}; 
IMG2:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    9 u8 img_num=0;
img_num:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 int  deal_flag = 0;
deal_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 int  display_flag=0;
display_flag:
        DS8 4
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 int fps_num1_n=0;
fps_num1_n:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 int fps1_n=0;
fps1_n:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   15 int light_flag=0;
light_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 int light_x=0,light_y=0;
light_x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
light_y:
        DS8 4
//   17 
//   18 
//   19 void touying();
//   20 
//   21 
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void IMG_Handle()
//   24 {
IMG_Handle:
        PUSH     {R4-R6,LR}
//   25     img_num++;
        LDR.W    R0,??DataTable1
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
//   26     if(img_num==1)
        LDRB     R1,[R0, #+0]
        CMP      R1,#+1
        BNE.N    ??IMG_Handle_0
//   27     {
//   28         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R0,#+0
        B.N      ??IMG_Handle_1
//   29         {
//   30             for(int j=0;j<IMG_COLS;j++)
//   31             {
//   32                 img1[i][j] = imgbuff[i][j];
??IMG_Handle_2:
        MOVS     R1,#+80
        LDR.W    R3,??DataTable1_1
        MUL      R4,R1,R0
        ADD      R3,R3,R4
        LDR.W    R4,??DataTable1_2
        MUL      R1,R1,R0
        ADD      R1,R4,R1
        LDRB     R1,[R1, R2]
        STRB     R1,[R3, R2]
//   33             }
        ADDS     R2,R2,#+1
??IMG_Handle_3:
        CMP      R2,#+80
        BLT.N    ??IMG_Handle_2
        ADDS     R0,R0,#+1
??IMG_Handle_1:
        CMP      R0,#+60
        BGE.N    ??IMG_Handle_4
        MOVS     R2,#+0
        B.N      ??IMG_Handle_3
//   34         }
//   35         //return;
//   36     }
//   37     else if(img_num==2)
??IMG_Handle_0:
        LDRB     R1,[R0, #+0]
        CMP      R1,#+2
        BNE.N    ??IMG_Handle_5
//   38     {
//   39         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R1,#+0
        B.N      ??IMG_Handle_6
//   40         {
//   41             for(int j=0;j<IMG_COLS;j++)
//   42             {
//   43                 img2[i][j] = imgbuff[i][j];
??IMG_Handle_7:
        MOVS     R0,#+80
        LDR.W    R3,??DataTable1_3
        MUL      R4,R0,R1
        ADD      R3,R3,R4
        LDR.W    R4,??DataTable1_2
        MUL      R0,R0,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        STRB     R0,[R3, R2]
//   44             }
        ADDS     R2,R2,#+1
??IMG_Handle_8:
        CMP      R2,#+80
        BLT.N    ??IMG_Handle_7
        ADDS     R1,R1,#+1
??IMG_Handle_6:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_4
        MOVS     R2,#+0
        B.N      ??IMG_Handle_8
//   45         }
//   46        // return;
//   47     }
//   48      else if(img_num==3)
??IMG_Handle_5:
        LDRB     R1,[R0, #+0]
        CMP      R1,#+3
        BNE.N    ??IMG_Handle_9
//   49     {
//   50         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R1,#+0
        B.N      ??IMG_Handle_10
//   51         {
//   52             for(int j=0;j<IMG_COLS;j++)
//   53             {
//   54                 img3[i][j] = imgbuff[i][j];
??IMG_Handle_11:
        MOVS     R0,#+80
        LDR.N    R3,??DataTable1_4
        MUL      R4,R0,R1
        ADD      R3,R3,R4
        LDR.N    R4,??DataTable1_2
        MUL      R0,R0,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        STRB     R0,[R3, R2]
//   55             }
        ADDS     R2,R2,#+1
??IMG_Handle_12:
        CMP      R2,#+80
        BLT.N    ??IMG_Handle_11
        ADDS     R1,R1,#+1
??IMG_Handle_10:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_4
        MOVS     R2,#+0
        B.N      ??IMG_Handle_12
//   56         }
//   57         //img_num=0;
//   58         //deal_flag = 1;
//   59     }
//   60      else if(img_num==4)
??IMG_Handle_9:
        LDRB     R1,[R0, #+0]
        CMP      R1,#+4
        BNE.N    ??IMG_Handle_4
//   61     {
//   62         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R2,#+0
        B.N      ??IMG_Handle_13
//   63         {
//   64             for(int j=0;j<IMG_ROWS;j++)
//   65             {
//   66                 img4[i][j] = imgbuff[i][j];
??IMG_Handle_14:
        MOVS     R1,#+80
        LDR.N    R4,??DataTable1_5
        MUL      R5,R1,R2
        ADD      R4,R4,R5
        LDR.N    R5,??DataTable1_2
        MUL      R1,R1,R2
        ADD      R1,R5,R1
        LDRB     R1,[R1, R3]
        STRB     R1,[R4, R3]
//   67             }
        ADDS     R3,R3,#+1
??IMG_Handle_15:
        CMP      R3,#+60
        BLT.N    ??IMG_Handle_14
        ADDS     R2,R2,#+1
??IMG_Handle_13:
        CMP      R2,#+60
        BGE.N    ??IMG_Handle_16
        MOVS     R3,#+0
        B.N      ??IMG_Handle_15
//   68         }
//   69         img_num=0;
??IMG_Handle_16:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   70         //deal_flag = 1;
//   71     }
//   72    // if(deal_flag)
//   73     //{
//   74        for(int i=0;i<IMG_ROWS;i++)
??IMG_Handle_4:
        MOVS     R1,#+0
        B.N      ??IMG_Handle_17
//   75         {
//   76             for(int j=0;j<IMG_COLS;j++)
//   77             {
//   78                 IMG[i][j] = img1[i][j]&img2[i][j]&img3[i][j]&img4[i][j];
??IMG_Handle_18:
        MOVS     R3,#+80
        LDR.N    R0,??DataTable1_6
        MUL      R4,R3,R1
        ADD      R4,R0,R4
        LDR.N    R0,??DataTable1_1
        MUL      R5,R3,R1
        ADD      R0,R0,R5
        LDRB     R5,[R0, R2]
        LDR.N    R0,??DataTable1_3
        MUL      R6,R3,R1
        ADD      R0,R0,R6
        LDRB     R0,[R0, R2]
        ANDS     R5,R0,R5
        LDR.N    R0,??DataTable1_4
        MUL      R6,R3,R1
        ADD      R0,R0,R6
        LDRB     R0,[R0, R2]
        ANDS     R5,R0,R5
        LDR.N    R0,??DataTable1_5
        MUL      R3,R3,R1
        ADD      R0,R0,R3
        LDRB     R0,[R0, R2]
        ANDS     R5,R0,R5
        STRB     R5,[R4, R2]
//   79             }
        ADDS     R2,R2,#+1
??IMG_Handle_19:
        CMP      R2,#+80
        BLT.N    ??IMG_Handle_18
        ADDS     R1,R1,#+1
??IMG_Handle_17:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_20
        MOVS     R2,#+0
        B.N      ??IMG_Handle_19
//   80         }
//   81        for(int i=0;i<IMG_ROWS;i++)
??IMG_Handle_20:
        MOVS     R1,#+0
        B.N      ??IMG_Handle_21
//   82         {
//   83             for(int j=0;j<IMG_COLS;j++)
//   84             {
//   85                 IMG2[i][j] = img1[i][j]|img2[i][j]|img3[i][j]|img4[i][j];
??IMG_Handle_22:
        MOVS     R3,#+80
        LDR.N    R0,??DataTable1_7
        MUL      R4,R3,R1
        ADD      R4,R0,R4
        LDR.N    R0,??DataTable1_1
        MUL      R5,R3,R1
        ADD      R0,R0,R5
        LDRB     R5,[R0, R2]
        LDR.N    R0,??DataTable1_3
        MUL      R6,R3,R1
        ADD      R0,R0,R6
        LDRB     R0,[R0, R2]
        ORRS     R5,R0,R5
        LDR.N    R0,??DataTable1_4
        MUL      R6,R3,R1
        ADD      R0,R0,R6
        LDRB     R0,[R0, R2]
        ORRS     R5,R0,R5
        LDR.N    R0,??DataTable1_5
        MUL      R3,R3,R1
        ADD      R0,R0,R3
        LDRB     R0,[R0, R2]
        ORRS     R5,R0,R5
        STRB     R5,[R4, R2]
//   86             }
        ADDS     R2,R2,#+1
??IMG_Handle_23:
        CMP      R2,#+80
        BLT.N    ??IMG_Handle_22
        ADDS     R1,R1,#+1
??IMG_Handle_21:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_24
        MOVS     R2,#+0
        B.N      ??IMG_Handle_23
//   87         }
//   88        for(int i=0;i<IMG_ROWS;i++)
??IMG_Handle_24:
        MOVS     R4,#+0
        B.N      ??IMG_Handle_25
//   89         {
//   90             for(int j=0;j<IMG_COLS;j++)
//   91             {
//   92                 imgbuff[i][j] = my_abs( IMG2[i][j]- IMG[i][j]);
??IMG_Handle_26:
        MOVS     R1,#+80
        LDR.N    R0,??DataTable1_2
        MUL      R2,R1,R4
        ADD      R6,R0,R2
        LDR.N    R0,??DataTable1_7
        MUL      R2,R1,R4
        ADD      R0,R0,R2
        LDRB     R0,[R0, R5]
        LDR.N    R2,??DataTable1_6
        MUL      R1,R1,R4
        ADD      R1,R2,R1
        LDRB     R1,[R1, R5]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        STRB     R0,[R6, R5]
//   93             }
        ADDS     R5,R5,#+1
??IMG_Handle_27:
        CMP      R5,#+80
        BLT.N    ??IMG_Handle_26
        ADDS     R4,R4,#+1
??IMG_Handle_25:
        CMP      R4,#+60
        BGE.N    ??IMG_Handle_28
        MOVS     R5,#+0
        B.N      ??IMG_Handle_27
//   94         }
//   95         fps_num1_n++;
??IMG_Handle_28:
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   96         //deal_flag=0;
//   97         display_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_9
        STR      R0,[R1, #+0]
//   98         touying();
        BL       touying
//   99 }
        POP      {R4-R6,PC}       ;; return
//  100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 void touying()
//  102 {
touying:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+140
//  103    unsigned char rows[IMG_ROWS] ={0};
        ADD      R0,SP,#+80
        MOVS     R1,#+60
        BL       __aeabi_memclr4
//  104    unsigned char cols[IMG_COLS] ={0};
        MOV      R0,SP
        MOVS     R1,#+80
        BL       __aeabi_memclr4
//  105    unsigned char num=0;
        MOVS     R0,#+0
//  106    
//  107    int r1=100,r2=100,c1=100,c2=100;
        MOVS     R1,#+100
        MOVS     R2,#+100
        MOVS     R4,#+100
        MOVS     R5,#+100
//  108    for(int i=0;i<IMG_ROWS;i++)
        MOVS     R3,#+0
        B.N      ??touying_0
//  109     {
//  110         for(int j=0;j<IMG_COLS;j++)
//  111         {
//  112             if(imgbuff[i][j]>100)
??touying_1:
        LDR.N    R7,??DataTable1_2
        MOVS     R12,#+80
        MUL      R12,R12,R3
        ADD      R7,R7,R12
        LDRB     R7,[R7, R6]
        CMP      R7,#+101
        BLT.N    ??touying_2
//  113             {
//  114                 num++;
        ADDS     R0,R0,#+1
//  115             }
//  116         }
??touying_2:
        ADDS     R6,R6,#+1
??touying_3:
        CMP      R6,#+80
        BLT.N    ??touying_1
//  117         rows[i] = num;
        ADD      R6,SP,#+80
        STRB     R0,[R6, R3]
//  118         num = 0;
        MOVS     R0,#+0
        ADDS     R3,R3,#+1
??touying_0:
        CMP      R3,#+60
        BGE.N    ??touying_4
        MOVS     R6,#+0
        B.N      ??touying_3
//  119     }
//  120    for(int i=0;i<IMG_COLS;i++)
??touying_4:
        MOVS     R3,#+0
        B.N      ??touying_5
//  121     {
//  122         for(int j=0;j<IMG_ROWS;j++)
//  123         {
//  124             if(imgbuff[j][i]>100)
??touying_6:
        LDR.N    R7,??DataTable1_2
        MOVS     R12,#+80
        MUL      R12,R12,R6
        ADD      R7,R7,R12
        LDRB     R7,[R7, R3]
        CMP      R7,#+101
        BLT.N    ??touying_7
//  125             {
//  126                 num++;
        ADDS     R0,R0,#+1
//  127             }
//  128         }
??touying_7:
        ADDS     R6,R6,#+1
??touying_8:
        CMP      R6,#+60
        BLT.N    ??touying_6
//  129         cols[i] = num;
        MOV      R6,SP
        STRB     R0,[R6, R3]
//  130         num = 0;
        MOVS     R0,#+0
        ADDS     R3,R3,#+1
??touying_5:
        CMP      R3,#+80
        BGE.N    ??touying_9
        MOVS     R6,#+0
        B.N      ??touying_8
//  131     }
//  132    for(int i=0;i<IMG_ROWS-1;i++)
??touying_9:
        MOVS     R3,#+0
        B.N      ??touying_10
//  133     {
//  134         if((rows[i]==0)&&(rows[i+1]!=0))
//  135         {
//  136             r1 = i+1;
//  137         }
//  138         if((rows[i]!=0)&&(rows[i+1]==0))
//  139         {
//  140             r2 = i;
//  141         }
//  142         else if((i==(IMG_ROWS-1))&&(rows[i]!=0))
??touying_11:
        CMP      R3,#+59
        BNE.N    ??touying_12
        LDRB     R0,[R6, R3]
        CMP      R0,#+0
        BEQ.N    ??touying_12
//  143         {
//  144             r2 = i;
        MOVS     R2,R3
        B.N      ??touying_12
//  145         }
??touying_13:
        ADD      R6,SP,#+80
        LDRB     R0,[R6, R3]
        CMP      R0,#+0
        BNE.N    ??touying_14
        ADD      R0,SP,#+80
        ADD      R0,R0,R3
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??touying_14
        ADDS     R1,R3,#+1
??touying_14:
        LDRB     R0,[R6, R3]
        CMP      R0,#+0
        BEQ.N    ??touying_11
        ADD      R0,SP,#+80
        ADD      R0,R0,R3
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??touying_11
        MOVS     R2,R3
//  146     }
??touying_12:
        ADDS     R3,R3,#+1
??touying_10:
        CMP      R3,#+59
        BLT.N    ??touying_13
//  147    for(int i=0;i<IMG_COLS-2;i++)
??touying_15:
        MOVS     R3,#+0
        B.N      ??touying_16
//  148     {
//  149         if((cols[i]==0)&&(cols[i+1]!=0)&&((cols[i+2]!=0)))
//  150         {
//  151             c1 = i+1;
//  152         }
//  153         if(((cols[i]==0)&&(cols[i+1]!=0)&&(cols[i+2]!=0)))
//  154         {
//  155             c2 = i;
//  156         }
//  157         else if((i == (IMG_COLS-1))&&(cols[i]!=0))
??touying_17:
        CMP      R3,#+79
        BNE.N    ??touying_18
        LDRB     R0,[R6, R3]
        CMP      R0,#+0
        BEQ.N    ??touying_18
//  158         {
//  159             c2 = i;
        MOVS     R5,R3
        B.N      ??touying_18
//  160         }
??touying_19:
        MOV      R6,SP
        LDRB     R0,[R6, R3]
        CMP      R0,#+0
        BNE.N    ??touying_20
        MOV      R0,SP
        ADD      R0,R0,R3
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??touying_20
        MOV      R0,SP
        ADD      R0,R0,R3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??touying_20
        ADDS     R4,R3,#+1
??touying_20:
        LDRB     R0,[R6, R3]
        CMP      R0,#+0
        BNE.N    ??touying_17
        MOV      R0,SP
        ADD      R0,R0,R3
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??touying_17
        MOV      R0,SP
        ADD      R0,R0,R3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??touying_17
        MOVS     R5,R3
//  161     }
??touying_18:
        ADDS     R3,R3,#+1
??touying_16:
        CMP      R3,#+78
        BLT.N    ??touying_19
//  162    if(r1!=100&&r2!=100&&c1!=100&&c2!=100)
??touying_21:
        CMP      R1,#+100
        BEQ.N    ??touying_22
        CMP      R2,#+100
        BEQ.N    ??touying_22
        CMP      R4,#+100
        BEQ.N    ??touying_22
        CMP      R5,#+100
        BEQ.N    ??touying_22
//  163    {
//  164         light_flag=1;
        MOVS     R0,#+1
        LDR.N    R3,??DataTable1_10
        STR      R0,[R3, #+0]
//  165         if(r1 == r2)
        CMP      R1,R2
        BNE.N    ??touying_23
//  166         {
//  167           light_x = r1;
        LDR.N    R0,??DataTable1_11
        STR      R1,[R0, #+0]
        B.N      ??touying_24
//  168         }
//  169         else
//  170         {
//  171            light_x=(int)(my_abs(r1+r2)/2);
??touying_23:
        ADDS     R1,R2,R1
        MOVS     R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//  172         }
//  173         if(c1 == c2)
??touying_24:
        CMP      R4,R5
        BNE.N    ??touying_25
//  174         {
//  175           light_y=c1;
        LDR.N    R0,??DataTable1_12
        STR      R4,[R0, #+0]
        B.N      ??touying_26
//  176         }
//  177         else
//  178         {
//  179            light_y=(int)(my_abs(c1+c2)/2);
??touying_25:
        ADDS     R0,R5,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  180            LCD_Write_Int(80, 5, c1);
        MOVS     R2,R4
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+5
        MOVS     R0,#+80
        BL       LCD_Write_Int
//  181            LCD_Write_Int(100, 5, c2);
        MOVS     R2,R5
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+5
        MOVS     R0,#+100
        BL       LCD_Write_Int
        B.N      ??touying_26
//  182         }
//  183    }
//  184    else
//  185    {
//  186      light_flag=0;
??touying_22:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+0]
//  187      light_x=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//  188      light_y=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  189    }
//  190 }
??touying_26:
        ADD      SP,SP,#+140
        POP      {R4-R7,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     img_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     img1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     img2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     img3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     img4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     IMG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     IMG2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     fps_num1_n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     display_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DATA32
        DC32     light_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DATA32
        DC32     light_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DATA32
        DC32     light_y

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA8
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DATA8
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
// 28 829 bytes in section .bss
//    140 bytes in section .rodata
//    900 bytes in section .text
// 
//    900 bytes of CODE  memory
//    140 bytes of CONST memory
// 28 829 bytes of DATA  memory
//
//Errors: none
//Warnings: none
