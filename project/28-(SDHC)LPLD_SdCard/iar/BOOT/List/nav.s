///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:50
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\Jay\nav.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW477A.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\Jay\nav.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\nav.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN KeyValue
        EXTERN LCD_CLS
        EXTERN LCD_Init
        EXTERN LCD_P6x8Str
        EXTERN btRcvInfo
        EXTERN img_display
        EXTERN isStop

        PUBLIC BOOT
        PUBLIC Cursor
        PUBLIC Menu
        PUBLIC Menu_Page1
        PUBLIC Menu_Page2
        PUBLIC Menu_Page3
        PUBLIC Menu_Page4
        PUBLIC Menu_Page5
        PUBLIC Page
        PUBLIC navFlag
        PUBLIC pageTurn

// G:\AIcar\@@\k60_144\smartcar\lib\Jay\nav.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 
//    9 
//   10 #define   add    1
//   11 #define   sub    0
//   12 
//   13 #define StringCol  15
//   14 #define NumCol     90
//   15 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   16 uint8 navFlag = 1;
navFlag:
        DATA8
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   17 uint8 Page = 0;
Page:
        DS8 1
//   18 
//   19 
//   20 
//   21 
//   22 void Menu(void);
//   23 void Menu_Page1(void);
//   24 void Menu_Page2(void);
//   25 void Menu_Page3(void);
//   26 void Menu_Page4(void);
//   27 void Menu_Page5(void);
//   28 void BOOT(void);
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void pageTurn(uint8 *page,uint8 pages,uint8 Type)
//   31 {
//   32   if(add == Type)
pageTurn:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??pageTurn_0
//   33   {
//   34     if((*page) < pages)
        LDRB     R2,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R2,R1
        BCS.N    ??pageTurn_1
//   35     { (*page)++; }
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??pageTurn_2
//   36     else
//   37     { (*page) = 1; }
??pageTurn_1:
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??pageTurn_2
//   38   }
//   39   else
//   40   {
//   41     if((*page) > 1)
??pageTurn_0:
        LDRB     R2,[R0, #+0]
        CMP      R2,#+2
        BLT.N    ??pageTurn_3
//   42     { (*page)--; }
        LDRB     R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??pageTurn_2
//   43     else
//   44     { (*page) = pages; }
??pageTurn_3:
        STRB     R1,[R0, #+0]
//   45   }
//   46 
//   47 }
??pageTurn_2:
        BX       LR               ;; return
//   48 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void Cursor(uint8 Key,uint8 *Cnum)
//   50 {
Cursor:
        PUSH     {R7,LR}
//   51   switch(Key)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??Cursor_0
        CMP      R0,#+4
        BEQ.N    ??Cursor_1
        B.N      ??Cursor_2
//   52   {
//   53   case 1:
//   54     if((*Cnum) > 0)
??Cursor_0:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??Cursor_3
//   55     { (*Cnum)--; }
        LDRB     R0,[R1, #+0]
        SUBS     R0,R0,#+1
        STRB     R0,[R1, #+0]
        B.N      ??Cursor_4
//   56     else if((*Cnum) <= 0)
??Cursor_3:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??Cursor_4
//   57     { (*Cnum) = 7;}
        MOVS     R0,#+7
        STRB     R0,[R1, #+0]
//   58     LCD_CLS();
??Cursor_4:
        BL       LCD_CLS
//   59     break;
        B.N      ??Cursor_5
//   60   
//   61   case 4:
//   62     if((*Cnum) < 7)
??Cursor_1:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+7
        BGE.N    ??Cursor_6
//   63     { (*Cnum)++; }
        LDRB     R0,[R1, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R1, #+0]
        B.N      ??Cursor_7
//   64     else if((*Cnum) >= 7)
??Cursor_6:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+7
        BLT.N    ??Cursor_7
//   65     { (*Cnum) = 0;}
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//   66     LCD_CLS();
??Cursor_7:
        BL       LCD_CLS
//   67     break;
        B.N      ??Cursor_5
//   68   default:break;
//   69   }
//   70 }
??Cursor_2:
??Cursor_5:
        POP      {R0,PC}          ;; return
//   71 
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void Menu_Page1(void)//设置定时
//   74 {
Menu_Page1:
        PUSH     {R3-R5,LR}
//   75   static uint8 Cnum = 0;
//   76   
//   77   Cursor(KeyValue,&Cnum);
        LDR.W    R4,??DataTable7
        LDR.W    R5,??DataTable7_1
        MOVS     R1,R5
        LDRB     R0,[R4, #+0]
        BL       Cursor
//   78   
//   79   
//   80   LCD_P6x8Str(0,Cnum,"*");
        ADR.N    R2,??DataTable6  ;; "*"
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+0
        BL       LCD_P6x8Str
//   81 
//   82   
//   83   switch(KeyValue)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ.N    ??Menu_Page1_0
        CMP      R0,#+3
        BEQ.N    ??Menu_Page1_1
        CMP      R0,#+5
        BEQ.N    ??Menu_Page1_2
        CMP      R0,#+6
        BEQ.N    ??Menu_Page1_3
        B.N      ??Menu_Page1_4
//   84   {
//   85   case 2:
//   86     switch(Cnum)
??Menu_Page1_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_Page1_5
        CMP      R0,#+2
        BEQ.N    ??Menu_Page1_6
        BCC.N    ??Menu_Page1_7
        CMP      R0,#+4
        BEQ.N    ??Menu_Page1_8
        BCC.N    ??Menu_Page1_9
        CMP      R0,#+6
        BEQ.N    ??Menu_Page1_10
        BCC.N    ??Menu_Page1_11
        CMP      R0,#+7
        BEQ.N    ??Menu_Page1_12
        B.N      ??Menu_Page1_13
//   87     {
//   88     case 0:
//   89       
//   90       break;
??Menu_Page1_5:
        B.N      ??Menu_Page1_14
//   91     case 1:
//   92       
//   93       break;
??Menu_Page1_7:
        B.N      ??Menu_Page1_14
//   94     case 2:
//   95       
//   96       break;
??Menu_Page1_6:
        B.N      ??Menu_Page1_14
//   97     case 3:
//   98       
//   99       break;
??Menu_Page1_9:
        B.N      ??Menu_Page1_14
//  100     case 4:
//  101       
//  102       break;
??Menu_Page1_8:
        B.N      ??Menu_Page1_14
//  103     case 5:
//  104       
//  105       break;
??Menu_Page1_11:
        B.N      ??Menu_Page1_14
//  106     case 6:
//  107       
//  108       
//  109       break;
??Menu_Page1_10:
        B.N      ??Menu_Page1_14
//  110     case 7:
//  111       
//  112       break;
??Menu_Page1_12:
        B.N      ??Menu_Page1_14
//  113     default:break;
//  114     }
//  115     LCD_CLS();
??Menu_Page1_13:
??Menu_Page1_14:
        BL       LCD_CLS
//  116     break;
        B.N      ??Menu_Page1_15
//  117   case 3:
//  118     
//  119     break;
??Menu_Page1_1:
        B.N      ??Menu_Page1_15
//  120   case 5:
//  121     switch(Cnum)
??Menu_Page1_2:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_Page1_16
        CMP      R0,#+2
        BEQ.N    ??Menu_Page1_17
        BCC.N    ??Menu_Page1_18
        CMP      R0,#+4
        BEQ.N    ??Menu_Page1_19
        BCC.N    ??Menu_Page1_20
        CMP      R0,#+6
        BEQ.N    ??Menu_Page1_21
        BCC.N    ??Menu_Page1_22
        CMP      R0,#+7
        BEQ.N    ??Menu_Page1_23
        B.N      ??Menu_Page1_24
//  122     {
//  123     case 0:
//  124       
//  125       break;
??Menu_Page1_16:
        B.N      ??Menu_Page1_25
//  126     case 1:
//  127       
//  128       break;
??Menu_Page1_18:
        B.N      ??Menu_Page1_25
//  129     case 2:
//  130       
//  131       break;
??Menu_Page1_17:
        B.N      ??Menu_Page1_25
//  132     case 3:
//  133       
//  134       break;
??Menu_Page1_20:
        B.N      ??Menu_Page1_25
//  135     case 4:
//  136       
//  137       break;
??Menu_Page1_19:
        B.N      ??Menu_Page1_25
//  138     case 5:
//  139       
//  140       break;
??Menu_Page1_22:
        B.N      ??Menu_Page1_25
//  141     case 6:
//  142       
//  143       break;
??Menu_Page1_21:
        B.N      ??Menu_Page1_25
//  144     case 7:
//  145       
//  146       break;
??Menu_Page1_23:
        B.N      ??Menu_Page1_25
//  147     default:break;
//  148     }
//  149     LCD_CLS();
??Menu_Page1_24:
??Menu_Page1_25:
        BL       LCD_CLS
//  150     break;
        B.N      ??Menu_Page1_15
//  151   case 6:
//  152     Page=0;
??Menu_Page1_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  153     LCD_CLS();
        BL       LCD_CLS
//  154     break;
        B.N      ??Menu_Page1_15
//  155   default:break;
//  156   }
//  157   
//  158   KeyValue=0;
??Menu_Page1_4:
??Menu_Page1_15:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  159 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Menu_Page1::Cnum`:
        DS8 1
//  160 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 void Menu_Page2(void)//设置舵机
//  162 {
Menu_Page2:
        PUSH     {R3-R5,LR}
//  163   static uint8 Cnum = 0;
//  164   
//  165   Cursor(KeyValue,&Cnum);
        LDR.N    R4,??DataTable7
        LDR.N    R5,??DataTable7_3
        MOVS     R1,R5
        LDRB     R0,[R4, #+0]
        BL       Cursor
//  166   
//  167   LCD_P6x8Str(0,Cnum,"*");
        ADR.N    R2,??DataTable6  ;; "*"
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+0
        BL       LCD_P6x8Str
//  168   switch(KeyValue)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BEQ.N    ??Menu_Page2_0
        CMP      R0,#+3
        BEQ.N    ??Menu_Page2_1
        CMP      R0,#+5
        BEQ.N    ??Menu_Page2_2
        CMP      R0,#+6
        BEQ.N    ??Menu_Page2_3
        B.N      ??Menu_Page2_4
//  169   {  
//  170   case 2:
//  171     switch(Cnum)
??Menu_Page2_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_Page2_5
        CMP      R0,#+2
        BEQ.N    ??Menu_Page2_6
        BCC.N    ??Menu_Page2_7
        CMP      R0,#+4
        BEQ.N    ??Menu_Page2_8
        BCC.N    ??Menu_Page2_9
        CMP      R0,#+6
        BEQ.N    ??Menu_Page2_10
        BCC.N    ??Menu_Page2_11
        CMP      R0,#+7
        BEQ.N    ??Menu_Page2_12
        B.N      ??Menu_Page2_13
//  172     {
//  173     case 0:
//  174       
//  175       break;
??Menu_Page2_5:
        B.N      ??Menu_Page2_14
//  176     case 1:
//  177       
//  178       break;
??Menu_Page2_7:
        B.N      ??Menu_Page2_14
//  179     case 2:
//  180       
//  181       break;
??Menu_Page2_6:
        B.N      ??Menu_Page2_14
//  182     case 3:
//  183       
//  184       break;
??Menu_Page2_9:
        B.N      ??Menu_Page2_14
//  185     case 4:
//  186       
//  187       break;
??Menu_Page2_8:
        B.N      ??Menu_Page2_14
//  188     case 5:
//  189       
//  190       break;
??Menu_Page2_11:
        B.N      ??Menu_Page2_14
//  191     case 6:
//  192       break;
??Menu_Page2_10:
        B.N      ??Menu_Page2_14
//  193     case 7:
//  194       
//  195       
//  196       break;
??Menu_Page2_12:
        B.N      ??Menu_Page2_14
//  197     default:break;
//  198     }
//  199     break;
??Menu_Page2_13:
??Menu_Page2_14:
        B.N      ??Menu_Page2_15
//  200   case 3:
//  201     break;
??Menu_Page2_1:
        B.N      ??Menu_Page2_15
//  202   case 5:
//  203     switch(Cnum)
??Menu_Page2_2:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_Page2_16
        CMP      R0,#+2
        BEQ.N    ??Menu_Page2_17
        BCC.N    ??Menu_Page2_18
        CMP      R0,#+4
        BEQ.N    ??Menu_Page2_19
        BCC.N    ??Menu_Page2_20
        CMP      R0,#+6
        BEQ.N    ??Menu_Page2_21
        BCC.N    ??Menu_Page2_22
        CMP      R0,#+7
        BEQ.N    ??Menu_Page2_23
        B.N      ??Menu_Page2_24
//  204     {
//  205     case 0:
//  206       
//  207       break;
??Menu_Page2_16:
        B.N      ??Menu_Page2_25
//  208     case 1:
//  209 
//  210       break;
??Menu_Page2_18:
        B.N      ??Menu_Page2_25
//  211     case 2:
//  212 
//  213       break;
??Menu_Page2_17:
        B.N      ??Menu_Page2_25
//  214     case 3:
//  215 
//  216       break;
??Menu_Page2_20:
        B.N      ??Menu_Page2_25
//  217     case 4:
//  218 
//  219       break;
??Menu_Page2_19:
        B.N      ??Menu_Page2_25
//  220     case 5:
//  221 
//  222       break;
??Menu_Page2_22:
        B.N      ??Menu_Page2_25
//  223     case 6:
//  224       break;
??Menu_Page2_21:
        B.N      ??Menu_Page2_25
//  225     case 7:
//  226 
//  227       break;
??Menu_Page2_23:
        B.N      ??Menu_Page2_25
//  228     default:break;
//  229     }
//  230     
//  231     break;
??Menu_Page2_24:
??Menu_Page2_25:
        B.N      ??Menu_Page2_15
//  232   case 6:Page=0;LCD_CLS();break;
??Menu_Page2_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
        BL       LCD_CLS
        B.N      ??Menu_Page2_15
//  233   
//  234   default:break;
//  235   
//  236   }
//  237   
//  238   KeyValue=0;
??Menu_Page2_4:
??Menu_Page2_15:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  239 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Menu_Page2::Cnum`:
        DS8 1
//  240 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void Menu_Page3(void)//圆环
//  242 { 
//  243   
//  244 
//  245   KeyValue=0;
Menu_Page3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  246 }
        BX       LR               ;; return
//  247 
//  248 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 void Menu_Page4(void)//图像显示
//  250 {
Menu_Page4:
        PUSH     {R7,LR}
//  251   img_display();
        BL       img_display
//  252   
//  253   KeyValue=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  254 }
        POP      {R0,PC}          ;; return
//  255 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void Menu_Page5(void)
//  257 {
//  258   
//  259   KeyValue=0;
Menu_Page5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  260 }
        BX       LR               ;; return
//  261 
//  262 
//  263 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  264 void BOOT(void)
//  265 {
//  266   navFlag = 0;
BOOT:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_4
        STRB     R0,[R1, #+0]
//  267   Page = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  268   isStop = Run_Wait;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_5
        STRB     R0,[R1, #+0]
//  269 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DATA8
        DC8      "*",0x0,0x0
//  270 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  271 void Menu(void)
//  272 {
Menu:
        PUSH     {R4-R6,LR}
//  273   static uint8 CLSflag = 0;
//  274   
//  275   if(!navFlag)
        LDR.N    R1,??DataTable7_4
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??Menu_0
//  276   {
//  277     if(KeyValue) 
        LDR.N    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_1
//  278     {
//  279       navFlag = 1;
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
//  280       isStop = Run_Init;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_5
        STRB     R0,[R1, #+0]
//  281       LCD_Init(); 
        BL       LCD_Init
//  282       LCD_CLS();
        BL       LCD_CLS
        B.N      ??Menu_1
//  283     }
//  284   }
//  285   else
//  286   {
//  287     switch(Page)
??Menu_0:
        LDR.N    R4,??DataTable7_2
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ.N    ??Menu_2
        BCC.N    ??Menu_3
        CMP      R0,#+3
        BEQ.N    ??Menu_4
        BCC.N    ??Menu_5
        CMP      R0,#+5
        BEQ.N    ??Menu_6
        BCC.N    ??Menu_7
        CMP      R0,#+6
        BEQ.N    ??Menu_8
        B.N      ??Menu_3
//  288     {
//  289       case 1:Menu_Page1();break;//发车设置
??Menu_2:
        BL       Menu_Page1
        B.N      ??Menu_1
//  290       case 2:Menu_Page2();break;//舵机设置
??Menu_5:
        BL       Menu_Page2
        B.N      ??Menu_1
//  291       case 3:Menu_Page3();break;//电机设置
??Menu_4:
        BL       Menu_Page3
        B.N      ??Menu_1
//  292       case 4:Menu_Page4();break;//查看图像
??Menu_7:
        BL       Menu_Page4
        B.N      ??Menu_1
//  293       case 5:Menu_Page5();break;//赛道标志位
??Menu_6:
        BL       Menu_Page5
        B.N      ??Menu_1
//  294       case 6:BOOT();break;
??Menu_8:
        BL       BOOT
        B.N      ??Menu_1
//  295       
//  296       default:
//  297       LCD_P6x8Str(0,7,"ov7725");
??Menu_3:
        LDR.N    R2,??DataTable7_6
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       LCD_P6x8Str
//  298       switch(isStop)
        LDR.N    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_9
        CMP      R0,#+2
        BEQ.N    ??Menu_10
        BCC.N    ??Menu_11
        B.N      ??Menu_12
//  299     {
//  300     case Run_Init:
//  301       LCD_P6x8Str(85,7,"Init");
??Menu_9:
        LDR.N    R2,??DataTable7_7
        MOVS     R1,#+7
        MOVS     R0,#+85
        BL       LCD_P6x8Str
//  302       break;
        B.N      ??Menu_13
//  303     case Run_Wait:
//  304       LCD_P6x8Str(85,7,"Wait");
??Menu_11:
        LDR.N    R2,??DataTable7_8
        MOVS     R1,#+7
        MOVS     R0,#+85
        BL       LCD_P6x8Str
//  305       break;
        B.N      ??Menu_13
//  306     case Run_Boot:
//  307       LCD_P6x8Str(85,7,"Boot");
??Menu_10:
        LDR.N    R2,??DataTable7_9
        MOVS     R1,#+7
        MOVS     R0,#+85
        BL       LCD_P6x8Str
//  308       break;
        B.N      ??Menu_13
//  309     default:break;
//  310     }
//  311     
//  312     
//  313       
//  314     switch(btRcvInfo.Connect)
??Menu_12:
??Menu_13:
        LDR.N    R5,??DataTable7_10
        LDRSB    R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_14
        CMP      R0,#+1
        BEQ.N    ??Menu_15
        B.N      ??Menu_16
//  315     {
//  316     case 0:
//  317       LCD_P6x8Str(0,1,"BtUnConnect");
??Menu_14:
        LDR.N    R2,??DataTable7_11
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LCD_P6x8Str
//  318       break;
        B.N      ??Menu_17
//  319     case 1:
//  320       LCD_P6x8Str(0,1,"BtConnectting");
??Menu_15:
        LDR.N    R2,??DataTable7_12
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LCD_P6x8Str
//  321       break;
        B.N      ??Menu_17
//  322     default:break;
//  323     }
//  324     if(CLSflag != btRcvInfo.Connect)
??Menu_16:
??Menu_17:
        LDR.N    R6,??DataTable7_13
        LDRB     R0,[R6, #+0]
        LDRSB    R1,[R5, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BEQ.N    ??Menu_18
//  325     {
//  326       LCD_CLS();
        BL       LCD_CLS
//  327     }
//  328     CLSflag = btRcvInfo.Connect;
??Menu_18:
        LDRB     R0,[R5, #+0]
        STRB     R0,[R6, #+0]
//  329     
//  330       Page=KeyValue;
        LDR.N    R0,??DataTable7
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+0]
//  331       if(Page!=0)  LCD_CLS();
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??Menu_19
        BL       LCD_CLS
//  332       break;
//  333     }
//  334   }
//  335   KeyValue=0;
??Menu_19:
??Menu_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7
        STRB     R0,[R1, #+0]
//  336 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DATA32
        DC32     KeyValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DATA32
        DC32     `Menu_Page1::Cnum`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DATA32
        DC32     Page

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DATA32
        DC32     `Menu_Page2::Cnum`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DATA32
        DC32     navFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DATA32
        DC32     isStop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DATA32
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DATA32
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DATA32
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DATA32
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DATA32
        DC32     btRcvInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DATA32
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DATA32
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DATA32
        DC32     `Menu::CLSflag`

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Menu::CLSflag`:
        DS8 1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "*"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "ov7725"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "Init"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "Wait"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC8 "Boot"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_5:
        DC8 "BtUnConnect"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_6:
        DC8 "BtConnectting"
        DATA16
        DC8 0, 0

        END
//  337 
//  338 /*=====================================================================*/
// 
//   4 bytes in section .bss
//   1 byte  in section .data
//  62 bytes in section .rodata
// 816 bytes in section .text
// 
// 816 bytes of CODE  memory
//  62 bytes of CONST memory
//   5 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
