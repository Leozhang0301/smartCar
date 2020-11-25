///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        08/Jul/2019  00:40:59
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\common\menu.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW7133.tmp
//        (G:\AIcar\@@\xiugai\lib\common\menu.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\menu.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ImgThreshold
        EXTERN KeyValue
        EXTERN LCD_CLS
        EXTERN LCD_P6x8Str
        EXTERN LCD_Write_Float
        EXTERN LCD_Write_Int
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN RValue
        EXTERN SCCB_WriteByte
        EXTERN XValue
        EXTERN YValue
        EXTERN ZValue
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN carspeed
        EXTERN img_display
        EXTERN light_flag
        EXTERN nbpid_kI
        EXTERN nbpid_kP
        EXTERN niupiancha
        EXTERN send_img_data
        EXTERN shuliang
        EXTERN zbpiancha

        PUBLIC Menu
        PUBLIC Py
        PUBLIC ShowCamera
        PUBLIC ShowMode
        PUBLIC ShowSetting
        PUBLIC page
        PUBLIC tiaocan

// G:\AIcar\@@\xiugai\lib\common\menu.c
//    1 #include "include.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 int Py=0;//焦点坐标  第一行为0  每行加2
Py:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    5 int page=1;//页数  1为图像显示  2为模式选择   3为参数设置
page:
        DATA32
        DC32 1
//    6 void Menu();
//    7 void ShowMainMune();
//    8 void ShowCamera();
//    9 void ShowMode();
//   10 void ShowSetting();
//   11 
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void Menu()
//   14 {
Menu:
        PUSH     {R4,LR}
//   15   if(page == 1)
        LDR.W    R4,??DataTable4_3
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??Menu_0
//   16   {
//   17     ShowCamera();
        BL       ShowCamera
//   18     KeyValue=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_4
        STRB     R0,[R1, #+0]
//   19   }
//   20   if(page == 2)
??Menu_0:
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??Menu_1
//   21   {
//   22     ShowMode();
        BL       ShowMode
//   23     KeyValue=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_4
        STRB     R0,[R1, #+0]
//   24   }
//   25   if (page == 3)
??Menu_1:
        LDR      R0,[R4, #+0]
        CMP      R0,#+3
        BNE.N    ??Menu_2
//   26   {
//   27     ShowSetting();
        BL       ShowSetting
//   28     KeyValue=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_4
        STRB     R0,[R1, #+0]
//   29   }
//   30     if (page == 4)
??Menu_2:
        LDR      R0,[R4, #+0]
        CMP      R0,#+4
        BNE.N    ??Menu_3
//   31   {
//   32     tiaocan();
        BL       tiaocan
//   33     KeyValue=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_4
        STRB     R0,[R1, #+0]
//   34   }
//   35 }
??Menu_3:
        POP      {R4,PC}          ;; return
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void ShowCamera()
//   38 {    
ShowCamera:
        PUSH     {R3-R5,LR}
//   39     img_display();
        BL       img_display
//   40     LCD_Write_Int(80, 4,  ImgThreshold);
        LDR.W    R4,??DataTable4_5
        LDRSH    R0,[R4, #+0]
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   41     LCD_Write_Int(80, 5,  light_flag);
        LDR.W    R0,??DataTable4_6
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+5
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   42     LCD_Write_Int(80, 6,  zbpiancha);
        LDR.W    R5,??DataTable4_7
        LDRSH    R2,[R5, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   43     switch(KeyValue)
        LDR.W    R0,??DataTable4_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ShowCamera_0
        CMP      R0,#+3
        BEQ.N    ??ShowCamera_1
        CMP      R0,#+4
        BEQ.N    ??ShowCamera_2
        CMP      R0,#+6
        BEQ.N    ??ShowCamera_3
        CMP      R0,#+8
        BEQ.N    ??ShowCamera_4
        CMP      R0,#+9
        BEQ.N    ??ShowCamera_5
        B.N      ??ShowCamera_6
//   44     {
//   45       case 4:
//   46         ImgThreshold-=5;
??ShowCamera_2:
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,#+5
        STRH     R0,[R4, #+0]
//   47         SCCB_WriteByte(OV7725_CNST,ImgThreshold);
        LDRH     R1,[R4, #+0]
        MOVS     R0,#+156
        BL       SCCB_WriteByte
//   48         break;
        B.N      ??ShowCamera_7
//   49       case 6:
//   50         ImgThreshold+=5;
??ShowCamera_3:
        LDRH     R0,[R4, #+0]
        ADDS     R0,R0,#+5
        STRH     R0,[R4, #+0]
//   51         SCCB_WriteByte(OV7725_CNST,ImgThreshold);
        LDRH     R1,[R4, #+0]
        MOVS     R0,#+156
        BL       SCCB_WriteByte
//   52         break;
        B.N      ??ShowCamera_7
//   53       case 1:
//   54         zbpiancha-=1;
??ShowCamera_0:
        LDRH     R0,[R5, #+0]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+0]
//   55         niupiancha-=2;
        LDR.W    R0,??DataTable4_8
        LDRH     R1,[R0, #+0]
        SUBS     R1,R1,#+2
        STRH     R1,[R0, #+0]
//   56         break;
        B.N      ??ShowCamera_7
//   57       case 3:
//   58         zbpiancha+=1;
??ShowCamera_1:
        LDRH     R0,[R5, #+0]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+0]
//   59         niupiancha+=2;
        LDR.W    R0,??DataTable4_8
        LDRH     R1,[R0, #+0]
        ADDS     R1,R1,#+2
        STRH     R1,[R0, #+0]
//   60         break;
        B.N      ??ShowCamera_7
//   61       case 9:
//   62         page++;
??ShowCamera_5:
        LDR.W    R0,??DataTable4_3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   63         if(page >4) {page = 1;}
        LDR      R1,[R0, #+0]
        CMP      R1,#+5
        BLT.N    ??ShowCamera_8
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   64         LCD_CLS(); 
??ShowCamera_8:
        BL       LCD_CLS
//   65         break;
        B.N      ??ShowCamera_7
//   66     case 8:
//   67       send_img_data();
??ShowCamera_4:
        BL       send_img_data
//   68       break;
        B.N      ??ShowCamera_7
//   69       default:
//   70         break;
//   71     }
//   72   
//   73 }
??ShowCamera_6:
??ShowCamera_7:
        POP      {R0,R4,R5,PC}    ;; return
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void tiaocan()
//   76 {
tiaocan:
        PUSH     {R4,LR}
//   77     LCD_P6x8Str(10,0,"p");
        ADR.N    R2,??DataTable3  ;; "p"
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       LCD_P6x8Str
//   78     LCD_P6x8Str(10,1,"i"); 
        ADR.N    R2,??DataTable3_1  ;; "i"
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       LCD_P6x8Str
//   79     LCD_P6x8Str(1,Py,"*");
        LDR.N    R4,??DataTable4_9
        ADR.N    R2,??DataTable3_2  ;; "*"
        LDR      R0,[R4, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+1
        BL       LCD_P6x8Str
//   80    // LCD_Write_Float(80,0,shuliang);
//   81    // LCD_Write_Int(80,1,carspeed);
//   82     switch(KeyValue)
        LDR.N    R0,??DataTable4_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??tiaocan_0
        CMP      R0,#+2
        BEQ.N    ??tiaocan_1
        CMP      R0,#+3
        BEQ.N    ??tiaocan_2
        CMP      R0,#+4
        BEQ.N    ??tiaocan_3
        CMP      R0,#+6
        BEQ.N    ??tiaocan_4
        CMP      R0,#+8
        BEQ.N    ??tiaocan_5
        CMP      R0,#+9
        BEQ.N    ??tiaocan_6
        B.N      ??tiaocan_7
//   83     {
//   84   case 2:
//   85     Py--;
??tiaocan_1:
        LDR      R0,[R4, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+0]
//   86     if(Py<0){Py=0;}
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BPL.N    ??tiaocan_8
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   87     LCD_CLS();
??tiaocan_8:
        BL       LCD_CLS
//   88     break;
        B.N      ??tiaocan_9
//   89   case 8:
//   90     Py++;
??tiaocan_5:
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
//   91     if(Py>1){Py=1;}
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BLT.N    ??tiaocan_10
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
//   92     LCD_CLS();
??tiaocan_10:
        BL       LCD_CLS
//   93     break;
        B.N      ??tiaocan_9
//   94   case 1:
//   95     nbpid_kP-= 0.5;
??tiaocan_0:
        LDR.N    R4,??DataTable4_10
        LDR      R0,[R4, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_11  ;; 0xbfe00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R4, #+0]
//   96     break;
        B.N      ??tiaocan_9
//   97   case 3:
//   98     nbpid_kP+= 0.5;
??tiaocan_2:
        LDR.N    R4,??DataTable4_10
        LDR      R0,[R4, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_12  ;; 0x3fe00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R4, #+0]
//   99     break;
        B.N      ??tiaocan_9
//  100   case 4:
//  101 nbpid_kI -= 0.1;
??tiaocan_3:
        LDR.N    R4,??DataTable4_13
        LDR      R0,[R4, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_14  ;; 0x9999999a
        LDR.N    R3,??DataTable4_15  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R4, #+0]
//  102       break;
        B.N      ??tiaocan_9
//  103         case 6:
//  104 nbpid_kI += 0.1;
??tiaocan_4:
        LDR.N    R4,??DataTable4_13
        LDR      R0,[R4, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_14  ;; 0x9999999a
        LDR.N    R3,??DataTable4_16  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R4, #+0]
//  105       break;
        B.N      ??tiaocan_9
//  106          case 9:
//  107      page++;
??tiaocan_6:
        LDR.N    R0,??DataTable4_3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  108      if(page>4){page=1;}
        LDR      R1,[R0, #+0]
        CMP      R1,#+5
        BLT.N    ??tiaocan_11
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  109      LCD_CLS();
??tiaocan_11:
        BL       LCD_CLS
//  110      break;
        B.N      ??tiaocan_9
//  111     default:
//  112       break;
//  113     }
//  114 }
??tiaocan_7:
??tiaocan_9:
        POP      {R4,PC}          ;; return
//  115 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void ShowSetting()
//  117 {
ShowSetting:
        PUSH     {R3-R7,LR}
//  118   LCD_P6x8Str(10,0,"vx");
        ADR.N    R2,??DataTable4  ;; 0x76, 0x78, 0x00, 0x00
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       LCD_P6x8Str
//  119   LCD_P6x8Str(10,1,"vy"); 
        ADR.N    R2,??DataTable4_1  ;; 0x76, 0x79, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       LCD_P6x8Str
//  120   LCD_P6x8Str(10,2,"vz"); 
        ADR.N    R2,??DataTable4_2  ;; 0x76, 0x7A, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       LCD_P6x8Str
//  121   LCD_P6x8Str(1,Py,"*");
        LDR.N    R4,??DataTable4_9
        ADR.N    R2,??DataTable3_2  ;; "*"
        LDR      R0,[R4, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+1
        BL       LCD_P6x8Str
//  122   LCD_Write_Int(80,0,XValue);
        LDR.N    R5,??DataTable4_17
        LDR      R2,[R5, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+0
        MOVS     R0,#+80
        BL       LCD_Write_Int
//  123   LCD_Write_Int(80,1,YValue);
        LDR.N    R6,??DataTable4_18
        LDR      R2,[R6, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+1
        MOVS     R0,#+80
        BL       LCD_Write_Int
//  124   LCD_Write_Int(80,2,ZValue);
        LDR.N    R7,??DataTable4_19
        LDR      R2,[R7, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       LCD_Write_Int
//  125   
//  126   switch(KeyValue)
        LDR.N    R0,??DataTable4_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??ShowSetting_0
        CMP      R0,#+4
        BEQ.N    ??ShowSetting_1
        CMP      R0,#+6
        BEQ.N    ??ShowSetting_2
        CMP      R0,#+8
        BEQ.N    ??ShowSetting_3
        CMP      R0,#+9
        BEQ.N    ??ShowSetting_4
        B.N      ??ShowSetting_5
//  127   {
//  128   case 2:
//  129     Py--;
??ShowSetting_0:
        LDR      R0,[R4, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  130     if(Py<0){Py=0;}
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BPL.N    ??ShowSetting_6
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  131     LCD_CLS();
??ShowSetting_6:
        BL       LCD_CLS
//  132     break;
        B.N      ??ShowSetting_7
//  133   case 8:
//  134     Py++;
??ShowSetting_3:
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  135     if(Py>2){Py=2;}
        LDR      R0,[R4, #+0]
        CMP      R0,#+3
        BLT.N    ??ShowSetting_8
        MOVS     R0,#+2
        STR      R0,[R4, #+0]
//  136     LCD_CLS();
??ShowSetting_8:
        BL       LCD_CLS
//  137     break;
        B.N      ??ShowSetting_7
//  138   case 4:
//  139     if(Py==0){XValue-=10;}
??ShowSetting_1:
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??ShowSetting_9
        LDR      R0,[R5, #+0]
        SUBS     R0,R0,#+10
        STR      R0,[R5, #+0]
        B.N      ??ShowSetting_10
//  140     else if(Py==1){YValue-=10;
??ShowSetting_9:
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??ShowSetting_11
        LDR      R0,[R6, #+0]
        SUBS     R0,R0,#+10
        STR      R0,[R6, #+0]
//  141                     RValue-=10;}
        LDR.N    R0,??DataTable4_20
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+10
        STR      R1,[R0, #+0]
        B.N      ??ShowSetting_10
//  142     else if(Py==2){ZValue-=10;}
??ShowSetting_11:
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??ShowSetting_10
        LDR      R0,[R7, #+0]
        SUBS     R0,R0,#+10
        STR      R0,[R7, #+0]
//  143     break;
??ShowSetting_10:
        B.N      ??ShowSetting_7
//  144   case 6:
//  145     if(Py==0){XValue+=10;}
??ShowSetting_2:
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??ShowSetting_12
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+10
        STR      R0,[R5, #+0]
        B.N      ??ShowSetting_13
//  146     else if(Py==1){YValue+=10;
??ShowSetting_12:
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??ShowSetting_14
        LDR      R0,[R6, #+0]
        ADDS     R0,R0,#+10
        STR      R0,[R6, #+0]
//  147                     RValue+=10;}
        LDR.N    R0,??DataTable4_20
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+10
        STR      R1,[R0, #+0]
        B.N      ??ShowSetting_13
//  148     else if(Py==2){ZValue+=10;}
??ShowSetting_14:
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??ShowSetting_13
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+10
        STR      R0,[R7, #+0]
//  149     break;
??ShowSetting_13:
        B.N      ??ShowSetting_7
//  150    case 9:
//  151      page++;
??ShowSetting_4:
        LDR.N    R0,??DataTable4_3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  152      if(page>4){page=1;}
        LDR      R1,[R0, #+0]
        CMP      R1,#+5
        BLT.N    ??ShowSetting_15
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  153      LCD_CLS();
??ShowSetting_15:
        BL       LCD_CLS
//  154      break;
        B.N      ??ShowSetting_7
//  155   default:
//  156     break;
//  157   }
//  158 }
??ShowSetting_5:
??ShowSetting_7:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA8
        DC8      "p",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA8
        DC8      "i",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA8
        DC8      "*",0x0,0x0
//  159 
//  160 //void ShowMode()
//  161 //{
//  162 ////    LCD_P6x8Str(10,0,"normol");
//  163 ////    LCD_P6x8Str(10,2,"high"); 
//  164 ////    LCD_P6x8Str(1,Py,"*");
//  165 //    LCD_Write_Float(80,0,shuliang);
//  166 //    LCD_Write_Int(80,1,carspeed);
//  167 //    switch(KeyValue)
//  168 //    {
//  169 //    case 1:
//  170 //      //正常模式
//  171 //    shuliang -= 0.1f;
//  172 //      break;
//  173 //    case 3:
//  174 //    shuliang +=0.1f;
//  175 //      break;
//  176 //    case 4:
//  177 //      //正常模式
//  178 //    carspeed -= 20;
//  179 //      break;
//  180 //    case 6:
//  181 //    carspeed += 20;
//  182 //      break;
//  183 //    case 9:
//  184 //      page++;
//  185 //      if(page>4){page=1;}
//  186 //      LCD_CLS();
//  187 //      break;
//  188 //    default:
//  189 //      break;
//  190 //    }
//  191 //}
//  192 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  193 void ShowMode()
//  194 {
ShowMode:
        PUSH     {R4,LR}
//  195 //    LCD_P6x8Str(10,0,"normol");
//  196 //    LCD_P6x8Str(10,2,"high"); 
//  197 //    LCD_P6x8Str(1,Py,"*");
//  198     LCD_Write_Float(80,0,shuliang);
        LDR.N    R0,??DataTable4_21
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+80
        BL       LCD_Write_Float
//  199     LCD_Write_Int(80,1,carspeed);
        LDR.N    R0,??DataTable4_22
        LDR      R2,[R0, #+0]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+1
        MOVS     R0,#+80
        BL       LCD_Write_Int
//  200     switch(KeyValue)
        LDR.N    R0,??DataTable4_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ShowMode_0
        CMP      R0,#+2
        BEQ.N    ??ShowMode_1
        CMP      R0,#+3
        BEQ.N    ??ShowMode_2
        CMP      R0,#+4
        BEQ.N    ??ShowMode_3
        CMP      R0,#+6
        BEQ.N    ??ShowMode_4
        CMP      R0,#+9
        BEQ.N    ??ShowMode_5
        B.N      ??ShowMode_6
//  201     {
//  202     case 1:
//  203       //正常模式
//  204         LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,4000 );//zuo
??ShowMode_0:
        LDR.N    R4,??DataTable4_23  ;; 0x40038000
        MOV      R2,#+4000
        MOVS     R1,#+5
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  205     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  206       break;
        B.N      ??ShowMode_7
//  207     case 2:
//  208           LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0);  
??ShowMode_1:
        LDR.N    R4,??DataTable4_23  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  209     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 4000);
        MOV      R2,#+4000
        MOVS     R1,#+7
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  210     break;
        B.N      ??ShowMode_7
//  211     case 3:
//  212         LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0); 
??ShowMode_2:
        LDR.N    R4,??DataTable4_23  ;; 0x40038000
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  213     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  4000);
        MOV      R2,#+4000
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  214       break;
        B.N      ??ShowMode_7
//  215     case 4:
//  216         LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 4000);
??ShowMode_3:
        LDR.N    R4,??DataTable4_23  ;; 0x40038000
        MOV      R2,#+4000
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  217     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0 ); 
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,R4
        BL       LPLD_FTM_PWM_ChangeDuty
//  218       break;
        B.N      ??ShowMode_7
//  219     case 6:
//  220     //carspeed += 20;
//  221       break;
??ShowMode_4:
        B.N      ??ShowMode_7
//  222     case 9:
//  223       page++;
??ShowMode_5:
        LDR.N    R0,??DataTable4_3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  224       if(page>4){page=1;}
        LDR      R1,[R0, #+0]
        CMP      R1,#+5
        BLT.N    ??ShowMode_8
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  225       LCD_CLS();
??ShowMode_8:
        BL       LCD_CLS
//  226       break;
        B.N      ??ShowMode_7
//  227     default:
//  228       break;
//  229     }
//  230 }
??ShowMode_6:
??ShowMode_7:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DATA8
        DC8      0x76, 0x78, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DATA8
        DC8      0x76, 0x79, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DATA8
        DC8      0x76, 0x7A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DATA32
        DC32     page

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DATA32
        DC32     KeyValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DATA32
        DC32     ImgThreshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DATA32
        DC32     light_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DATA32
        DC32     zbpiancha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DATA32
        DC32     niupiancha

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DATA32
        DC32     Py

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DATA32
        DC32     nbpid_kP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DATA32
        DC32     0xbfe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DATA32
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DATA32
        DC32     nbpid_kI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DATA32
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DATA32
        DC32     0xbfb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DATA32
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DATA32
        DC32     XValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DATA32
        DC32     YValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DATA32
        DC32     ZValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DATA32
        DC32     RValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DATA32
        DC32     shuliang

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DATA32
        DC32     carspeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DATA32
        DC32     0x40038000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "p"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "i"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "*"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "vx"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "vy"
        DATA8
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "vz"
        DATA8
        DC8 0

        END
// 
//     4 bytes in section .bss
//     4 bytes in section .data
//    18 bytes in section .rodata
// 1 094 bytes in section .text
// 
// 1 094 bytes of CODE  memory
//    18 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
