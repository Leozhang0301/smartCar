///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:42
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\common\findtrack.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW2963.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\common\findtrack.c -D LPLD_K60
//        -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\findtrack.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN SpeedHigh
        EXTERN SpeedLow
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN imgbuff
        EXTERN left_getSpeed
        EXTERN right_getSpeed

        PUBLIC BLACK_PICTURE
        PUBLIC BLACK_PICTURE_COUNT
        PUBLIC Calculate
        PUBLIC GO
        PUBLIC MIDDLE_I
        PUBLIC MIDDLE_I_LAST
        PUBLIC MIDDLE_J
        PUBLIC MIDDLE_J_LAST
        PUBLIC WHITE_SUM
        PUBLIC WHITE_SUM_LAST
        PUBLIC back
        PUBLIC cheak_start
        PUBLIC find_next
        PUBLIC findtrack
        PUBLIC i_max
        PUBLIC i_min
        PUBLIC i_num
        PUBLIC i_sum
        PUBLIC ifpass
        PUBLIC j_num
        PUBLIC j_sum
        PUBLIC lamp_pass
        PUBLIC offset
        PUBLIC offset_k
        PUBLIC start
        PUBLIC target_error
        PUBLIC target_offset

// G:\AIcar\@@\k60_144\smartcar\lib\common\findtrack.c
//    1 #include "include.h"
//    2 
//    3 void delay_cheak();
//    4 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 int WHITE_SUM = 0;
WHITE_SUM:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 int BLACK_PICTURE = 0;
BLACK_PICTURE:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    7 int WHITE_SUM_LAST = 500;
WHITE_SUM_LAST:
        DATA32
        DC32 500

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 int MIDDLE_I = 0;
MIDDLE_I:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 int MIDDLE_J  = 0;
MIDDLE_J:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 int MIDDLE_I_LAST = 0;
MIDDLE_I_LAST:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 int MIDDLE_J_LAST  = 0;
MIDDLE_J_LAST:
        DS8 4
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   13 int16 BLACK_PICTURE_COUNT = 12; //黑色图片计数最大值
BLACK_PICTURE_COUNT:
        DATA16
        DC16 12

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   14 int16 i_max = 14; //判断提前拐弯
i_max:
        DATA16
        DC16 14

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   15 int16 i_min = 18; //判断提前拐弯
i_min:
        DATA16
        DC16 18

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   16 int16 offset = 5; //目标偏移量
offset:
        DATA16
        DC16 5

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   17 float offset_k = 2.5f;  //系数
offset_k:
        DATA32
        DC32 40200000H

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   18 boolean lamp_pass = 1;
lamp_pass:
        DATA8
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   19 boolean start = 0;
start:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   20 boolean cheak_start = 0;
cheak_start:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   21 boolean back = 0;
back:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 int i_sum = 0;
i_sum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 int j_sum = 0;
j_sum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   24 int i_num = 0;
i_num:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 int j_num = 0;
j_num:
        DS8 4
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 int GO = 0;
GO:
        DS8 4
//   28 
//   29 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   30 const int16 target_error[] = 
target_error:
        DATA16
        DC16 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        DC16 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        DC16 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
//   31 {
//   32   0,0,0,0,0,
//   33   1,1,1,1,1,
//   34   2,2,2,2,2,
//   35   2,2,2,2,2,
//   36   2,2,2,2,2,
//   37   2,2,2,2,2,
//   38   2,2,2,2,2,
//   39   2,2,2,2,2,
//   40   2,2,2,2,2,
//   41   2,2,2,2,2,
//   42   2,2,2,2,2,
//   43   2,2,2,2,2,
//   44 };
//   45 
//   46 
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 int target_offset(int y)  //目标偏移
//   49 {
target_offset:
        PUSH     {R7,LR}
//   50   
//   51   int x = 0;
        MOVS     R1,#+0
//   52   x = (int)(y/offset_k);
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fdiv
        BL       __aeabi_f2iz
//   53   if(x > offset) x = offset;
        LDR.W    R1,??DataTable4_1
        LDRSH    R2,[R1, #+0]
        CMP      R2,R0
        BGE.N    ??target_offset_0
        LDRSH    R0,[R1, #+0]
//   54   return x;
??target_offset_0:
        POP      {R1,PC}          ;; return
//   55 }
//   56 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void findtrack()
//   58 {
findtrack:
        PUSH     {R4,R5}
//   59   for (int i = 1; i < IMG_ROWS - 1; i ++)
        MOVS     R1,#+1
        B.N      ??findtrack_0
??findtrack_1:
        ADDS     R1,R1,#+1
??findtrack_0:
        CMP      R1,#+119
        BGE.W    ??findtrack_2
//   60   {
//   61     for (int j = 1; j < IMG_COLS  - 1; j ++)
        MOVS     R2,#+1
        B.N      ??findtrack_3
//   62     {
//   63       if( imgbuff[i][j] == WHITE )
//   64       {
//   65         WHITE_SUM ++;
//   66       }
//   67       if(imgbuff[i][j] == BLACK && imgbuff[i][j+1] == WHITE )
//   68       {
//   69         i_sum += i;
//   70         j_sum += j;
//   71         i_num ++;
//   72         j_num ++;
//   73       }
//   74       else if(imgbuff[i][j] == BLACK && imgbuff[i][j-1] == WHITE )
//   75       {
//   76         i_sum += i;
//   77         j_sum += j;
//   78         i_num ++;
//   79         j_num ++;
//   80       }
//   81       else if(imgbuff[i][j] == BLACK && imgbuff[i+1][j] == WHITE )
//   82       {
//   83         i_sum += i;
//   84         j_sum += j;
//   85         i_num ++;
//   86         j_num ++;
//   87       }
//   88       else if(imgbuff[i][j] == BLACK && imgbuff[i-1][j] == WHITE )
??findtrack_4:
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??findtrack_5
        MUL      R3,R3,R1
        ADD      R0,R4,R3
        ADD      R0,R0,R2
        LDRB     R0,[R0, #-160]
        CMP      R0,#+255
        BNE.N    ??findtrack_5
//   89       {
//   90         i_sum += i;
        LDR.W    R0,??DataTable4_2
        LDR      R3,[R0, #+0]
        ADDS     R3,R1,R3
        STR      R3,[R0, #+0]
//   91         j_sum += j;
        LDR.N    R0,??DataTable4_3
        LDR      R3,[R0, #+0]
        ADDS     R3,R2,R3
        STR      R3,[R0, #+0]
//   92         i_num ++;
        LDR.N    R0,??DataTable4_4
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
//   93         j_num ++;
        LDR.N    R0,??DataTable4_5
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        B.N      ??findtrack_5
//   94       }
??findtrack_6:
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??findtrack_4
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        ADD      R0,R0,R2
        LDRB     R0,[R0, #+160]
        CMP      R0,#+255
        BNE.N    ??findtrack_4
        LDR.N    R0,??DataTable4_2
        LDR      R3,[R0, #+0]
        ADDS     R3,R1,R3
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_3
        LDR      R3,[R0, #+0]
        ADDS     R3,R2,R3
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_4
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_5
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
??findtrack_5:
        ADDS     R2,R2,#+1
??findtrack_3:
        CMP      R2,#+159
        BGE.N    ??findtrack_1
        MOVS     R3,#+160
        LDR.N    R4,??DataTable4_6
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        CMP      R0,#+255
        BNE.N    ??findtrack_7
        LDR.N    R0,??DataTable4_7
        LDR      R5,[R0, #+0]
        ADDS     R5,R5,#+1
        STR      R5,[R0, #+0]
??findtrack_7:
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??findtrack_8
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        ADD      R0,R0,R2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+255
        BNE.N    ??findtrack_8
        LDR.N    R0,??DataTable4_2
        LDR      R3,[R0, #+0]
        ADDS     R3,R1,R3
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_3
        LDR      R3,[R0, #+0]
        ADDS     R3,R2,R3
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_4
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_5
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        B.N      ??findtrack_5
??findtrack_8:
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??findtrack_6
        MUL      R0,R3,R1
        ADD      R0,R4,R0
        ADD      R0,R0,R2
        LDRB     R0,[R0, #-1]
        CMP      R0,#+255
        BNE.N    ??findtrack_6
        LDR.N    R0,??DataTable4_2
        LDR      R3,[R0, #+0]
        ADDS     R3,R1,R3
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_3
        LDR      R3,[R0, #+0]
        ADDS     R3,R2,R3
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_4
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        LDR.N    R0,??DataTable4_5
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        B.N      ??findtrack_5
//   95     }
//   96   }
//   97   
//   98   if(WHITE_SUM != 0)
??findtrack_2:
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??findtrack_9
//   99   {
//  100     if(i_num == 0)                 //分母不能为0
        LDR.N    R1,??DataTable4_4
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??findtrack_10
//  101       
//  102     {
//  103       MIDDLE_I = (int)i_sum;
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
        B.N      ??findtrack_11
//  104     }
//  105     else
//  106     {
//  107       MIDDLE_I = (int)(i_sum/i_num); 
??findtrack_10:
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        LDR      R1,[R1, #+0]
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  108     }
//  109     if(j_num == 0 )
??findtrack_11:
        LDR.N    R1,??DataTable4_5
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??findtrack_12
//  110     {
//  111       MIDDLE_J =  j_sum;
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, #+0]
        B.N      ??findtrack_9
//  112     }
//  113     else 
//  114     {
//  115       MIDDLE_J = (j_sum/j_num);
??findtrack_12:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        LDR      R1,[R1, #+0]
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  116     }
//  117     
//  118     /*if(MIDDLE_I - MIDDLE_I_LAST > target_error[MIDDLE_I_LAST] || MIDDLE_I - MIDDLE_I_LAST <= -target_error[MIDDLE_I_LAST] 
//  119        || MIDDLE_J - MIDDLE_J_LAST > target_error[MIDDLE_I_LAST] || MIDDLE_J - MIDDLE_J_LAST <= -target_error[MIDDLE_I_LAST])
//  120     { 
//  121       MIDDLE_I_LAST = MIDDLE_I;
//  122       MIDDLE_J_LAST = MIDDLE_J;
//  123     }
//  124     else
//  125     {
//  126       MIDDLE_I = MIDDLE_I_LAST;
//  127       MIDDLE_J = MIDDLE_J_LAST;
//  128     }*/
//  129   } 
//  130   i_sum = 0;
??findtrack_9:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  131   i_num = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_4
        STR      R0,[R1, #+0]
//  132   j_sum = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
//  133   j_num = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_5
        STR      R0,[R1, #+0]
//  134 }
        POP      {R4,R5}
        BX       LR               ;; return
//  135 
//  136 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 void ifpass(void)            //  是否通过
//  138 {
//  139   for(int i = 0; i < IMG_ROWS; i ++)
ifpass:
        MOVS     R0,#+0
        B.N      ??ifpass_0
??ifpass_1:
        ADDS     R0,R0,#+1
??ifpass_0:
        CMP      R0,#+120
        BGE.N    ??ifpass_2
//  140   {
//  141     for (int j = 0; j < IMG_COLS; j ++)
        MOVS     R1,#+0
        B.N      ??ifpass_3
??ifpass_4:
        ADDS     R1,R1,#+1
??ifpass_3:
        CMP      R1,#+160
        BGE.N    ??ifpass_1
//  142     {
//  143       if(imgbuff[i][j] == WHITE)
        LDR.N    R2,??DataTable4_6
        MOVS     R3,#+160
        MUL      R3,R3,R0
        ADD      R2,R2,R3
        LDRB     R2,[R2, R1]
        CMP      R2,#+255
        BNE.N    ??ifpass_4
//  144       {
//  145         BLACK_PICTURE = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//  146         return;
        B.N      ??ifpass_5
//  147       }
//  148     }
//  149   }
//  150   BLACK_PICTURE ++;
??ifpass_2:
        LDR.N    R0,??DataTable4_10
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  151 }
??ifpass_5:
        BX       LR               ;; return
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void find_next(void)          // 寻找下一个信标
//  154 {
//  155   for(int i = 0; i < IMG_ROWS; i ++)
find_next:
        MOVS     R0,#+0
        B.N      ??find_next_0
//  156   {
//  157     for (int j = 0; j < IMG_COLS; j ++)
//  158     {
//  159       if(imgbuff[i][j] == WHITE)
??find_next_1:
        LDR.N    R2,??DataTable4_6
        MOVS     R3,#+160
        MUL      R3,R3,R0
        ADD      R2,R2,R3
        LDRB     R2,[R2, R1]
        CMP      R2,#+255
        BNE.N    ??find_next_2
//  160       {
//  161         WHITE_SUM++;
        LDR.N    R2,??DataTable4_7
        LDR      R3,[R2, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R2, #+0]
//  162         if(WHITE_SUM > 0)
        LDR      R2,[R2, #+0]
        CMP      R2,#+1
        BLT.N    ??find_next_2
//  163         {
//  164           lamp_pass = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_11
        STRB     R2,[R3, #+0]
//  165           start = 1;
        MOVS     R2,#+1
        LDR.N    R3,??DataTable4_12
        STRB     R2,[R3, #+0]
//  166           BLACK_PICTURE = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_10
        STR      R2,[R3, #+0]
//  167           MIDDLE_I = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_8
        STR      R2,[R3, #+0]
//  168           MIDDLE_J  = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_9
        STR      R2,[R3, #+0]
//  169           MIDDLE_I_LAST = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_13
        STR      R2,[R3, #+0]
//  170           MIDDLE_J_LAST  = 0;         
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_14
        STR      R2,[R3, #+0]
//  171           GO = SpeedHigh;  //找到灯加速    
        LDR.N    R2,??DataTable4_15
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable4_16
        STR      R2,[R3, #+0]
//  172         }
//  173       }
//  174     }
??find_next_2:
        ADDS     R1,R1,#+1
??find_next_3:
        CMP      R1,#+160
        BLT.N    ??find_next_1
        ADDS     R0,R0,#+1
??find_next_0:
        CMP      R0,#+120
        BGE.N    ??find_next_4
        MOVS     R1,#+0
        B.N      ??find_next_3
//  175   } 
//  176 }
??find_next_4:
        BX       LR               ;; return
//  177 
//  178 
//  179 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  180 int Calculate()
//  181 { 
Calculate:
        PUSH     {R3-R5,LR}
//  182   int16 target = 0;
        MOVS     R4,#+0
//  183   if(lamp_pass == 0)   // 找灯
        LDR.N    R5,??DataTable4_11
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??Calculate_0
//  184   {
//  185     if(BLACK_PICTURE < BLACK_PICTURE_COUNT)//小于count不判断过灯
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_17
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Calculate_1
//  186     {
//  187       ifpass();
        BL       ifpass
//  188       findtrack();
        BL       findtrack
        B.N      ??Calculate_0
//  189     }
//  190     else
//  191     {
//  192       lamp_pass = 1;
??Calculate_1:
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  193       
//  194       MIDDLE_J = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  195       
//  196       GO = SpeedLow;   //过弯减速
        LDR.N    R0,??DataTable4_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+0]
//  197     }   
//  198   }
//  199   
//  200   if(lamp_pass == 1)   //判断过灯
??Calculate_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BNE.N    ??Calculate_2
//  201   {
//  202     if(start == 0)   //未启动初始化
        LDR.N    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Calculate_3
//  203     {
//  204       MIDDLE_J = 39;
        MOVS     R0,#+39
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  205     }
//  206     if(BLACK_PICTURE < BLACK_PICTURE_COUNT)//小于count不判断过灯
??Calculate_3:
        LDR.N    R0,??DataTable4_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_17
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Calculate_4
//  207     {
//  208       ifpass();
        BL       ifpass
        B.N      ??Calculate_2
//  209     }
//  210     else  
//  211     {
//  212       find_next(); 
??Calculate_4:
        BL       find_next
//  213     }
//  214   }
//  215   if(right_getSpeed() < 40 || left_getSpeed() < 40)
??Calculate_2:
        BL       right_getSpeed
        CMP      R0,#+40
        BLT.N    ??Calculate_5
        BL       left_getSpeed
        CMP      R0,#+40
        BGE.N    ??Calculate_6
//  216   {
//  217     if (MIDDLE_I > i_min)     // 速度小灯近拐弯
??Calculate_5:
        LDR.N    R0,??DataTable4_19
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Calculate_7
//  218     {
//  219       lamp_pass = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  220       
//  221       MIDDLE_J = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  222       
//  223       GO = SpeedLow; //过弯减速
        LDR.N    R0,??DataTable4_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+0]
        B.N      ??Calculate_7
//  224     }
//  225   }
//  226   else
//  227   {
//  228     if (MIDDLE_I > i_max)     // 速度大灯近拐弯
??Calculate_6:
        LDR.N    R0,??DataTable4_20
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Calculate_7
//  229     {
//  230       lamp_pass = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  231       
//  232       MIDDLE_J = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  233       GO = SpeedLow; //过弯减速
        LDR.N    R0,??DataTable4_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+0]
//  234     }
//  235   }
//  236   
//  237   if(MIDDLE_J >= 0)
??Calculate_7:
        LDR.N    R0,??DataTable4_9
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BMI.N    ??Calculate_8
//  238   {
//  239     target = MIDDLE_J - target_offset(MIDDLE_I);
        LDR      R5,[R0, #+0]
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        BL       target_offset
        MOVS     R4,R0
        SUBS     R4,R5,R4
//  240     if(target < 0) target = 0;   
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BPL.N    ??Calculate_8
        MOVS     R4,#+0
//  241   }
//  242   return target;
??Calculate_8:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//  243 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DATA32
        DC32     offset_k

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DATA32
        DC32     offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DATA32
        DC32     i_sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DATA32
        DC32     j_sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DATA32
        DC32     i_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DATA32
        DC32     j_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DATA32
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DATA32
        DC32     WHITE_SUM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DATA32
        DC32     MIDDLE_I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DATA32
        DC32     MIDDLE_J

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DATA32
        DC32     BLACK_PICTURE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DATA32
        DC32     lamp_pass

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DATA32
        DC32     start

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DATA32
        DC32     MIDDLE_I_LAST

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DATA32
        DC32     MIDDLE_J_LAST

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DATA32
        DC32     SpeedHigh

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DATA32
        DC32     GO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DATA32
        DC32     BLACK_PICTURE_COUNT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DATA32
        DC32     SpeedLow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DATA32
        DC32     i_min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DATA32
        DC32     i_max

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  244 
// 
//  47 bytes in section .bss
//  17 bytes in section .data
// 120 bytes in section .rodata
// 894 bytes in section .text
// 
// 894 bytes of CODE  memory
// 120 bytes of CONST memory
//  64 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
