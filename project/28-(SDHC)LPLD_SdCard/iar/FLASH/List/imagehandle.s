///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  22:53:49
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\imagehandle.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EWAE4E.tmp
//        (G:\AIcar\@@\xiugai\lib\common\imagehandle.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\imagehandle.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4
        EXTERN imgbuff
        EXTERN my_abs

        PUBLIC FACHEflag
        PUBLIC IMG
        PUBLIC IMG2
        PUBLIC IMG_Handle
        PUBLIC baidian
        PUBLIC deal_flag
        PUBLIC display_flag
        PUBLIC diudeng_flag
        PUBLIC diudeng_num
        PUBLIC diudeng_x
        PUBLIC diudeng_y
        PUBLIC fps1_n
        PUBLIC fps_num1_n
        PUBLIC img1
        PUBLIC img2
        PUBLIC img3
        PUBLIC img4
        PUBLIC img_num
        PUBLIC last_flag
        PUBLIC light_flag
        PUBLIC light_x
        PUBLIC light_y
        PUBLIC touying
        PUBLIC x
        PUBLIC y

// G:\AIcar\@@\xiugai\lib\common\imagehandle.c
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
//    7 //unsigned char img5[IMG_ROWS][IMG_COLS]={0};

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 unsigned char IMG[IMG_ROWS][IMG_COLS] ={0}; 
IMG:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 unsigned char IMG2[IMG_ROWS][IMG_COLS] ={0}; 
IMG2:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   10 u8 img_num=0;
img_num:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 int  deal_flag = 0;
deal_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 int  display_flag=0;
display_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 int diudeng_num=0;
diudeng_num:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 int diudeng_x=0;
diudeng_x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   15 int diudeng_y=0;
diudeng_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 int diudeng_flag=0;
diudeng_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 int baidian=0;
baidian:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 int x=0;
x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 int y=0;
y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 int last_flag=0;
last_flag:
        DS8 4
//   21 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 int fps_num1_n=0;
fps_num1_n:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 int fps1_n=0;
fps1_n:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   24 int light_flag=0;
light_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 int light_x=0,light_y=0;
light_x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
light_y:
        DS8 4
//   26 
//   27 
//   28 void touying();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 int FACHEflag = 0;
FACHEflag:
        DS8 4
//   30 
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void IMG_Handle()
//   33 {
IMG_Handle:
        PUSH     {R4-R6,LR}
//   34     img_num++;
        LDR.W    R0,??DataTable1
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
//   35     if(img_num==1)
        LDRB     R1,[R0, #+0]
        CMP      R1,#+1
        BNE.N    ??IMG_Handle_0
//   36     {
//   37         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R0,#+0
??IMG_Handle_1:
        CMP      R0,#+60
        BGE.N    ??IMG_Handle_2
//   38         {
//   39             for(int j=0;j<IMG_COLS;j++)
        MOVS     R1,#+0
??IMG_Handle_3:
        CMP      R1,#+80
        BGE.N    ??IMG_Handle_4
//   40             {
//   41                 img1[i][j] = imgbuff[i][j];
        MOVS     R2,#+80
        LDR.W    R3,??DataTable1_1
        MUL      R4,R2,R0
        ADD      R3,R3,R4
        LDR.W    R4,??DataTable1_2
        MUL      R2,R2,R0
        ADD      R2,R4,R2
        LDRB     R2,[R2, R1]
        STRB     R2,[R3, R1]
//   42             }
        ADDS     R1,R1,#+1
        B.N      ??IMG_Handle_3
//   43         }
??IMG_Handle_4:
        ADDS     R0,R0,#+1
        B.N      ??IMG_Handle_1
//   44         //return;
//   45     }
//   46     else if(img_num==2)
??IMG_Handle_0:
        LDRB     R1,[R0, #+0]
        CMP      R1,#+2
        BNE.N    ??IMG_Handle_5
//   47     {
//   48         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R1,#+0
??IMG_Handle_6:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_2
//   49         {
//   50             for(int j=0;j<IMG_COLS;j++)
        MOVS     R2,#+0
??IMG_Handle_7:
        CMP      R2,#+80
        BGE.N    ??IMG_Handle_8
//   51             {
//   52                 img2[i][j] = imgbuff[i][j];
        MOVS     R0,#+80
        LDR.W    R3,??DataTable1_3
        MUL      R4,R0,R1
        ADD      R3,R3,R4
        LDR.W    R4,??DataTable1_2
        MUL      R0,R0,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        STRB     R0,[R3, R2]
//   53             }
        ADDS     R2,R2,#+1
        B.N      ??IMG_Handle_7
//   54         }
??IMG_Handle_8:
        ADDS     R1,R1,#+1
        B.N      ??IMG_Handle_6
//   55        // return;
//   56     }
//   57      else if(img_num==3)
??IMG_Handle_5:
        LDRB     R1,[R0, #+0]
        CMP      R1,#+3
        BNE.N    ??IMG_Handle_9
//   58     {
//   59         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R1,#+0
??IMG_Handle_10:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_2
//   60         {
//   61             for(int j=0;j<IMG_COLS;j++)
        MOVS     R2,#+0
??IMG_Handle_11:
        CMP      R2,#+80
        BGE.N    ??IMG_Handle_12
//   62             {
//   63                 img3[i][j] = imgbuff[i][j];
        MOVS     R0,#+80
        LDR.W    R3,??DataTable1_4
        MUL      R4,R0,R1
        ADD      R3,R3,R4
        LDR.W    R4,??DataTable1_2
        MUL      R0,R0,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        STRB     R0,[R3, R2]
//   64             }
        ADDS     R2,R2,#+1
        B.N      ??IMG_Handle_11
//   65         }
??IMG_Handle_12:
        ADDS     R1,R1,#+1
        B.N      ??IMG_Handle_10
//   66         //img_num=0;
//   67         //deal_flag = 1;
//   68     }
//   69      else if(img_num==4)
??IMG_Handle_9:
        LDRB     R1,[R0, #+0]
        CMP      R1,#+4
        BNE.N    ??IMG_Handle_2
//   70     {
//   71         for(int i=0;i<IMG_ROWS;i++)
        MOVS     R2,#+0
??IMG_Handle_13:
        CMP      R2,#+60
        BGE.N    ??IMG_Handle_14
//   72         {
//   73             for(int j=0;j<IMG_COLS;j++)
        MOVS     R3,#+0
??IMG_Handle_15:
        CMP      R3,#+80
        BGE.N    ??IMG_Handle_16
//   74             {
//   75                 img4[i][j] = imgbuff[i][j];
        MOVS     R1,#+80
        LDR.W    R4,??DataTable1_5
        MUL      R5,R1,R2
        ADD      R4,R4,R5
        LDR.W    R5,??DataTable1_2
        MUL      R1,R1,R2
        ADD      R1,R5,R1
        LDRB     R1,[R1, R3]
        STRB     R1,[R4, R3]
//   76             }
        ADDS     R3,R3,#+1
        B.N      ??IMG_Handle_15
//   77         }
??IMG_Handle_16:
        ADDS     R2,R2,#+1
        B.N      ??IMG_Handle_13
//   78         img_num=0;
??IMG_Handle_14:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   79         //deal_flag = 1;
//   80     }
//   81 //    else if(img_num==5)
//   82 //    {
//   83 //      for(int i=0;i<IMG_ROWS;i++)
//   84 //      {
//   85 //        for(int j=0;j<IMG_COLS;j++)
//   86 //        {
//   87 //          img5[i][j]=imgbuff[i][j];
//   88 //        }
//   89 //      }
//   90 //      img_num=0;
//   91 //    }
//   92    // if(deal_flag)
//   93     //{
//   94        for(int i=0;i<IMG_ROWS;i++)
??IMG_Handle_2:
        MOVS     R1,#+0
??IMG_Handle_17:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_18
//   95         {
//   96             for(int j=0;j<IMG_COLS;j++)
        MOVS     R2,#+0
??IMG_Handle_19:
        CMP      R2,#+80
        BGE.N    ??IMG_Handle_20
//   97             {
//   98                 IMG[i][j] = img1[i][j]&img2[i][j]&img3[i][j]&img4[i][j];
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
//   99             }
        ADDS     R2,R2,#+1
        B.N      ??IMG_Handle_19
//  100         }
??IMG_Handle_20:
        ADDS     R1,R1,#+1
        B.N      ??IMG_Handle_17
//  101        for(int i=0;i<IMG_ROWS;i++)
??IMG_Handle_18:
        MOVS     R1,#+0
??IMG_Handle_21:
        CMP      R1,#+60
        BGE.N    ??IMG_Handle_22
//  102         {
//  103             for(int j=0;j<IMG_COLS;j++)
        MOVS     R2,#+0
??IMG_Handle_23:
        CMP      R2,#+80
        BGE.N    ??IMG_Handle_24
//  104             {
//  105                 IMG2[i][j] = img1[i][j]|img2[i][j]|img3[i][j]|img4[i][j];
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
//  106             }
        ADDS     R2,R2,#+1
        B.N      ??IMG_Handle_23
//  107         }
??IMG_Handle_24:
        ADDS     R1,R1,#+1
        B.N      ??IMG_Handle_21
//  108        for(int i=0;i<IMG_ROWS;i++)
??IMG_Handle_22:
        MOVS     R4,#+0
??IMG_Handle_25:
        CMP      R4,#+60
        BGE.N    ??IMG_Handle_26
//  109         {
//  110             for(int j=0;j<IMG_COLS;j++)
        MOVS     R5,#+0
??IMG_Handle_27:
        CMP      R5,#+80
        BGE.N    ??IMG_Handle_28
//  111             {
//  112                 imgbuff[i][j] = my_abs( IMG2[i][j]- IMG[i][j]);
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
//  113             }
        ADDS     R5,R5,#+1
        B.N      ??IMG_Handle_27
//  114         }
??IMG_Handle_28:
        ADDS     R4,R4,#+1
        B.N      ??IMG_Handle_25
//  115         fps_num1_n++;
??IMG_Handle_26:
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  116         //deal_flag=0;
//  117         display_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_9
        STR      R0,[R1, #+0]
//  118         touying();
        BL       touying
//  119 }
        POP      {R4-R6,PC}       ;; return
//  120 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 void touying()
//  122 {
touying:
        PUSH     {R3-R8,LR}
        SUB      SP,SP,#+140
//  123    unsigned char rows[IMG_ROWS] ={0};
        ADD      R0,SP,#+80
        MOVS     R1,#+60
        BL       __aeabi_memclr4
//  124    unsigned char cols[IMG_COLS] ={0};
        MOV      R0,SP
        MOVS     R1,#+80
        BL       __aeabi_memclr4
//  125    unsigned char num=0;
        MOVS     R8,#+0
//  126    
//  127    int r1=100,r2=100,c1=100,c2=100;
        MOVS     R4,#+100
        MOVS     R5,#+100
        MOVS     R6,#+100
        MOVS     R7,#+100
//  128    for(int i=0;i<IMG_ROWS;i++)
        MOVS     R0,#+0
??touying_0:
        CMP      R0,#+60
        BGE.N    ??touying_1
//  129     {
//  130         for(int j=0;j<IMG_COLS;j++)
        MOVS     R1,#+0
??touying_2:
        CMP      R1,#+80
        BGE.N    ??touying_3
//  131         {
//  132             if(imgbuff[i][j]>100)
        LDR.N    R2,??DataTable1_2
        MOVS     R3,#+80
        MUL      R3,R3,R0
        ADD      R2,R2,R3
        LDRB     R2,[R2, R1]
        CMP      R2,#+101
        BLT.N    ??touying_4
//  133             {
//  134               num++;
        ADDS     R8,R8,#+1
//  135             }
//  136         }
??touying_4:
        ADDS     R1,R1,#+1
        B.N      ??touying_2
//  137         rows[i] = num;
??touying_3:
        ADD      R1,SP,#+80
        STRB     R8,[R1, R0]
//  138         num = 0;
        MOVS     R1,#+0
        MOV      R8,R1
//  139     }
        ADDS     R0,R0,#+1
        B.N      ??touying_0
//  140    for(int i=0;i<IMG_COLS;i++)
??touying_1:
        MOVS     R0,#+0
??touying_5:
        CMP      R0,#+80
        BGE.N    ??touying_6
//  141     {
//  142         for(int j=0;j<IMG_ROWS;j++)
        MOVS     R1,#+0
??touying_7:
        CMP      R1,#+60
        BGE.N    ??touying_8
//  143         {
//  144             if(imgbuff[j][i]>100)
        LDR.N    R2,??DataTable1_2
        MOVS     R3,#+80
        MUL      R3,R3,R1
        ADD      R2,R2,R3
        LDRB     R2,[R2, R0]
        CMP      R2,#+101
        BLT.N    ??touying_9
//  145             {
//  146                 num++;
        ADDS     R8,R8,#+1
//  147             }
//  148         }
??touying_9:
        ADDS     R1,R1,#+1
        B.N      ??touying_7
//  149         cols[i] = num;
??touying_8:
        MOV      R1,SP
        STRB     R8,[R1, R0]
//  150         num = 0;
        MOVS     R1,#+0
        MOV      R8,R1
//  151     }
        ADDS     R0,R0,#+1
        B.N      ??touying_5
//  152    for(int i=0;i<IMG_ROWS-1;i++)
??touying_6:
        MOVS     R1,#+0
??touying_10:
        CMP      R1,#+59
        BGE.N    ??touying_11
//  153     {
//  154         if((rows[i]==0)&&(rows[i+1]!=0))
        ADD      R2,SP,#+80
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BNE.N    ??touying_12
        ADD      R0,SP,#+80
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??touying_12
//  155         {
//  156             r1 = i+1;
        ADDS     R0,R1,#+1
        MOVS     R4,R0
//  157         }
//  158         if((rows[i]!=0)&&(rows[i+1]==0))
??touying_12:
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BEQ.N    ??touying_13
        ADD      R0,SP,#+80
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??touying_13
//  159         {
//  160             r2 = i;
        MOVS     R5,R1
        B.N      ??touying_14
//  161         }
//  162         else if((i==(IMG_ROWS-1))&&(rows[i]!=0))
??touying_13:
        CMP      R1,#+59
        BNE.N    ??touying_14
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BEQ.N    ??touying_14
//  163         {
//  164             r2 = i;
        MOVS     R5,R1
//  165         }
//  166         if(rows[i]<=4&&rows[i]!=0)
??touying_14:
        LDRB     R0,[R2, R1]
        CMP      R0,#+5
        BGE.N    ??touying_15
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BEQ.N    ??touying_15
//  167         {
//  168           r1=i;
        MOVS     R4,R1
//  169           r2=i;
        MOVS     R5,R1
//  170         }
//  171     }
??touying_15:
        ADDS     R1,R1,#+1
        B.N      ??touying_10
//  172    for(int i=0;i<IMG_COLS-2;i++)
??touying_11:
        MOVS     R1,#+0
??touying_16:
        CMP      R1,#+78
        BGE.N    ??touying_17
//  173     {
//  174         if((cols[i]==0)&&(cols[i+1]!=0)&&((cols[i+2]!=0)))
        MOV      R2,SP
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BNE.N    ??touying_18
        MOV      R0,SP
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??touying_18
        MOV      R0,SP
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??touying_18
//  175         {
//  176             c1 = i+1;
        ADDS     R0,R1,#+1
        MOVS     R6,R0
//  177         }
//  178         if(((cols[i]==0)&&(cols[i+1]!=0)&&(cols[i+2]!=0)))
??touying_18:
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BNE.N    ??touying_19
        MOV      R0,SP
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??touying_19
        MOV      R0,SP
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??touying_19
//  179         {
//  180             c2 = i;
        MOVS     R7,R1
        B.N      ??touying_20
//  181         }
//  182         else if((i == (IMG_COLS-1))&&(cols[i]!=0))
??touying_19:
        CMP      R1,#+79
        BNE.N    ??touying_20
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BEQ.N    ??touying_20
//  183         {
//  184             c2 = i;
        MOVS     R7,R1
//  185         }
//  186         if(cols[i]<=4&&cols[i]!=0)
??touying_20:
        LDRB     R0,[R2, R1]
        CMP      R0,#+5
        BGE.N    ??touying_21
        LDRB     R0,[R2, R1]
        CMP      R0,#+0
        BEQ.N    ??touying_21
//  187         {
//  188           c2=i;
        MOVS     R7,R1
//  189           c1=i;
        MOVS     R6,R1
//  190         }
//  191     }
??touying_21:
        ADDS     R1,R1,#+1
        B.N      ??touying_16
//  192    if(r1!=100&&r2!=100&&c1!=100&&c2!=100)
??touying_17:
        CMP      R4,#+100
        BEQ.N    ??touying_22
        CMP      R5,#+100
        BEQ.N    ??touying_22
        CMP      R6,#+100
        BEQ.N    ??touying_22
        CMP      R7,#+100
        BEQ.N    ??touying_22
//  193    {
//  194         last_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+0]
//  195         light_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//  196         diudeng_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  197         FACHEflag ++;
        LDR.N    R0,??DataTable1_13
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  198         if(r1 == r2)
        CMP      R4,R5
        BNE.N    ??touying_23
//  199         {
//  200           light_x = r1;
        LDR.N    R0,??DataTable1_14
        STR      R4,[R0, #+0]
        B.N      ??touying_24
//  201         }
//  202         else
//  203         {
//  204            light_x=(int)(my_abs(r1+r2)/2);
??touying_23:
        ADDS     R0,R5,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_14
        STR      R0,[R1, #+0]
//  205         }
//  206         if(c1 == c2)
??touying_24:
        CMP      R6,R7
        BNE.N    ??touying_25
//  207         {
//  208           light_y=c1;
        LDR.N    R0,??DataTable1_15
        STR      R6,[R0, #+0]
        B.N      ??touying_26
//  209         }
//  210         else
//  211         {
//  212            light_y=(int)(my_abs(c1+c2)/2);
??touying_25:
        ADDS     R0,R7,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       my_abs
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_15
        STR      R0,[R1, #+0]
//  213 //           LCD_Write_Int(80, 5, c1);
//  214 //           LCD_Write_Int(100, 5, c2);
//  215         }
//  216         diudeng_x=light_x;
??touying_26:
        LDR.N    R0,??DataTable1_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_16
        STR      R0,[R1, #+0]
//  217         diudeng_y=light_y;
        LDR.N    R0,??DataTable1_15
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_17
        STR      R0,[R1, #+0]
        B.N      ??touying_27
//  218    }
//  219    else
//  220    {
//  221 
//  222      if(last_flag==1)
??touying_22:
        LDR.N    R0,??DataTable1_10
        LDR      R1,[R0, #+0]
        CMP      R1,#+1
        BNE.N    ??touying_28
//  223      {
//  224        //diudeng_num++;
//  225        light_flag=1;
        MOVS     R1,#+1
        LDR.N    R2,??DataTable1_11
        STR      R1,[R2, #+0]
//  226        light_x=diudeng_x;
        LDR.N    R1,??DataTable1_16
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable1_14
        STR      R1,[R2, #+0]
//  227        light_y=diudeng_y;
        LDR.N    R1,??DataTable1_17
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable1_15
        STR      R1,[R2, #+0]
//  228        last_flag=0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        B.N      ??touying_27
//  229      }
//  230      else
//  231      {
//  232        light_flag=0;
??touying_28:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//  233        light_x=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_14
        STR      R0,[R1, #+0]
//  234        light_y=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_15
        STR      R0,[R1, #+0]
//  235      }
//  236 //     if(diudeng_num>=8)
//  237 //     {
//  238 //       diudeng_flag=0;
//  239 //       diudeng_num=0;
//  240 //     }
//  241 
//  242    }
//  243 }
??touying_27:
        ADD      SP,SP,#+144
        POP      {R4-R8,PC}       ;; return

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
        DC32     last_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DATA32
        DC32     light_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DATA32
        DC32     diudeng_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DATA32
        DC32     FACHEflag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DATA32
        DC32     light_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DATA32
        DC32     light_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DATA32
        DC32     diudeng_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DATA32
        DC32     diudeng_y

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
// 28 865 bytes in section .bss
//    140 bytes in section .rodata
//  1 024 bytes in section .text
// 
//  1 024 bytes of CODE  memory
//    140 bytes of CONST memory
// 28 865 bytes of DATA  memory
//
//Errors: none
//Warnings: none
