///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        21/May/2019  22:07:19
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\menu.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW3FDD.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\menu.c -D
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
//        C:\Users\que\Desktop\AAA_xinbiao\xiugai\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\menu.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ImgThreshold
        EXTERN KeyValue
        EXTERN LCD_CLS
        EXTERN LCD_Write_Int
        EXTERN LuBang
        EXTERN SCCB_WriteByte
        EXTERN display_flag
        EXTERN img_display

        PUBLIC CCD_Show
        PUBLIC CCD_flag
        PUBLIC Camera_Show
        PUBLIC Camera_flag
        PUBLIC Menu
        PUBLIC Menu_Open
        PUBLIC Motor_OPEN
        PUBLIC Parameter_Setting
        PUBLIC goal
        PUBLIC page

// C:\Users\que\Desktop\AAA_xinbiao\xiugai\lib\common\menu.c
//    1 #include "include.h"
//    2 //extern u8 state_flag;

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//    3 boolean Menu_Open = 1;
Menu_Open:
        DATA8
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    4 boolean Camera_flag = 0;
Camera_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    5 boolean CCD_flag = 0;
CCD_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    6 boolean Motor_OPEN = 0;
Motor_OPEN:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 int goal = 0;
goal:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 int page = 0;
page:
        DS8 4
//    9 
//   10 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 void Menu()
//   12 {
Menu:
        PUSH     {R4,LR}
//   13   if(page == 0)
        LDR.N    R4,??DataTable3
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??Menu_0
//   14   {
//   15     Camera_Show();
        BL       Camera_Show
//   16     KeyValue=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
//   17   }
//   18   if(page == 1)
??Menu_0:
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??Menu_1
//   19   {
//   20     CCD_Show();
        BL       CCD_Show
//   21     KeyValue=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
        B.N      ??Menu_2
//   22   }
//   23   else if (page == 2)
??Menu_1:
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??Menu_3
//   24   {
//   25     Parameter_Setting();
        BL       Parameter_Setting
//   26     KeyValue=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
        B.N      ??Menu_2
//   27   }
//   28     else if (page == 3)
??Menu_3:
        LDR      R0,[R4, #+0]
        CMP      R0,#+3
        BNE.N    ??Menu_2
//   29   {
//   30     Parameter_Setting();
        BL       Parameter_Setting
//   31     KeyValue=7;
        MOVS     R0,#+7
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
//   32   }
//   33 }
??Menu_2:
        POP      {R4,PC}          ;; return
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void Camera_Show()
//   36 {
Camera_Show:
        PUSH     {R4,LR}
//   37   
//   38   if(display_flag==1)
        LDR.N    R4,??DataTable3_2
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??Camera_Show_0
//   39   {
//   40     img_display();
        BL       img_display
//   41     display_flag=0;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   42   }
//   43 
//   44 LCD_Write_Int(80, 4,  ImgThreshold);
??Camera_Show_0:
        LDR.N    R4,??DataTable3_3
        LDRSH    R0,[R4, #+0]
        MOVS     R2,R0
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       LCD_Write_Int
//   45 
//   46   switch(KeyValue) {
        LDR.N    R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Camera_Show_1
        BCC.N    ??Camera_Show_2
        CMP      R0,#+3
        BEQ.N    ??Camera_Show_3
        BCC.N    ??Camera_Show_4
        CMP      R0,#+5
        BEQ.N    ??Camera_Show_5
        BCC.N    ??Camera_Show_6
        CMP      R0,#+7
        BEQ.N    ??Camera_Show_7
        BCC.N    ??Camera_Show_8
        CMP      R0,#+9
        BEQ.N    ??Camera_Show_9
        BCC.N    ??Camera_Show_10
        B.N      ??Camera_Show_2
//   47   case 1:
//   48     LCD_CLS();
??Camera_Show_1:
        BL       LCD_CLS
//   49     break;
        B.N      ??Camera_Show_2
//   50   case 2:
//   51     if(LuBang == 1)LuBang =0;
??Camera_Show_4:
        LDR.N    R1,??DataTable3_4
        LDRB     R0,[R1, #+0]
        CMP      R0,#+1
        BNE.N    ??Camera_Show_11
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
        B.N      ??Camera_Show_12
//   52     else if(LuBang == 0)LuBang =1;     
??Camera_Show_11:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??Camera_Show_12
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
//   53     break;
??Camera_Show_12:
        B.N      ??Camera_Show_2
//   54   case 3:
//   55     if(Motor_OPEN == 0)
??Camera_Show_3:
        LDR.N    R1,??DataTable3_5
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??Camera_Show_13
//   56     { 
//   57       Motor_OPEN = 1;
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
        B.N      ??Camera_Show_14
//   58       //GO =SpeedHigh;
//   59     }
//   60     else if (Motor_OPEN == 1)
//   61     {
//   62      // GO = 0;
//   63     } 
//   64     break;
??Camera_Show_13:
??Camera_Show_14:
        B.N      ??Camera_Show_2
//   65   case 4:
//   66         ImgThreshold+=5;
??Camera_Show_6:
        LDRH     R0,[R4, #+0]
        ADDS     R0,R0,#+5
        STRH     R0,[R4, #+0]
//   67     SCCB_WriteByte(OV7725_CNST,ImgThreshold);
        LDRH     R1,[R4, #+0]
        MOVS     R0,#+156
        BL       SCCB_WriteByte
//   68     break;
        B.N      ??Camera_Show_2
//   69   case 5:
//   70 
//   71     break;
??Camera_Show_5:
        B.N      ??Camera_Show_2
//   72   case 6:
//   73     ImgThreshold-=5;
??Camera_Show_8:
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,#+5
        STRH     R0,[R4, #+0]
//   74     SCCB_WriteByte(OV7725_CNST,ImgThreshold);
        LDRH     R1,[R4, #+0]
        MOVS     R0,#+156
        BL       SCCB_WriteByte
//   75     break;
        B.N      ??Camera_Show_2
//   76   case 7:
//   77     //P--;
//   78     break;
??Camera_Show_7:
        B.N      ??Camera_Show_2
//   79   case 8:
//   80     page --;
??Camera_Show_10:
        LDR.N    R0,??DataTable3
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   81     if(page < 0) page = 2;
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BPL.N    ??Camera_Show_15
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
//   82     LCD_CLS(); 
??Camera_Show_15:
        BL       LCD_CLS
//   83     break;
        B.N      ??Camera_Show_2
//   84   case 9:
//   85     //P++;
//   86     break;
//   87   }
//   88 }
??Camera_Show_9:
??Camera_Show_2:
        POP      {R4,PC}          ;; return
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void CCD_Show()
//   91 {
CCD_Show:
        PUSH     {R7,LR}
//   92   LCD_Write_Int(0,4,2);
        MOVS     R2,#+2
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_Write_Int
//   93   /*Camera_flag = 0; 
//   94   CCD_flag = 1;
//   95   LCD_P6x8Str(1,1,"yz:");
//   96   //LCD_Write_Float_Dot(40,1,__threshold,0);
//   97   //  LCD_P6x8Str(1,1,"SCTL:");
//   98   //  LCD_Write_Float_Dot(40,1,sctl,0);
//   99   //  LCD_P6x8Str(61,1,"CCTL:");
//  100   //  LCD_Write_Float_Dot(101,1,cctl,0);
//  101   LCD_P6x8Str(1,2,"NUM:");
//  102   //LCD_Write_Float_Dot(40,2,white_num,0);
//  103   LCD_P6x8Str(61,2,"M_I:");
//  104   LCD_Write_Float_Dot(101,2,MIDDLE_I,0);*/
//  105   switch(KeyValue) {
        LDR.N    R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??CCD_Show_0
        BCC.N    ??CCD_Show_1
        CMP      R0,#+3
        BEQ.N    ??CCD_Show_2
        BCC.N    ??CCD_Show_3
        CMP      R0,#+5
        BEQ.N    ??CCD_Show_4
        BCC.N    ??CCD_Show_5
        CMP      R0,#+7
        BEQ.N    ??CCD_Show_6
        BCC.N    ??CCD_Show_7
        CMP      R0,#+9
        BEQ.N    ??CCD_Show_8
        BCC.N    ??CCD_Show_9
        B.N      ??CCD_Show_1
//  106   case 1:
//  107     LCD_CLS();
??CCD_Show_0:
        BL       LCD_CLS
//  108     break;
        B.N      ??CCD_Show_1
//  109   case 2:
//  110     break;
??CCD_Show_3:
        B.N      ??CCD_Show_1
//  111   case 3:
//  112     break;
??CCD_Show_2:
        B.N      ??CCD_Show_1
//  113   case 4:
//  114     break;
??CCD_Show_5:
        B.N      ??CCD_Show_1
//  115   case 5:
//  116     //__threshold++;
//  117     break;
??CCD_Show_4:
        B.N      ??CCD_Show_1
//  118   case 6:
//  119     //__threshold--;
//  120     break;
??CCD_Show_7:
        B.N      ??CCD_Show_1
//  121   case 7:
//  122     break;
??CCD_Show_6:
        B.N      ??CCD_Show_1
//  123   case 8:
//  124     page --;
??CCD_Show_9:
        LDR.N    R0,??DataTable3
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  125     if(page < 0) page = 2;
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BPL.N    ??CCD_Show_10
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
//  126     LCD_CLS(); 
??CCD_Show_10:
        BL       LCD_CLS
//  127     break;
        B.N      ??CCD_Show_1
//  128   case 9:
//  129     page ++;
??CCD_Show_8:
        LDR.N    R0,??DataTable3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  130     if(page > 2) page = 0;
        LDR      R1,[R0, #+0]
        CMP      R1,#+3
        BLT.N    ??CCD_Show_11
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  131     LCD_CLS(); 
??CCD_Show_11:
        BL       LCD_CLS
//  132     break;
//  133   }
//  134 }
??CCD_Show_1:
        POP      {R0,PC}          ;; return
//  135 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void Parameter_Setting()
//  137 {
Parameter_Setting:
        PUSH     {R7,LR}
//  138     LCD_Write_Int(0,4,3);
        MOVS     R2,#+3
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_Write_Int
//  139   /*Camera_flag = 0; 
//  140   CCD_flag = 0;
//  141   LCD_P6x8Str(0,goal,"*");
//  142   LCD_P6x8Str(10,0,"speedhigh:");
//  143   LCD_Write_Float_Dot(90,0,SpeedHigh,0);
//  144   LCD_P6x8Str(10,1,"speedlow:");
//  145   LCD_Write_Float_Dot(90,1,SpeedLow,0);
//  146   LCD_P6x8Str(10,2,"offset:");
//  147   LCD_Write_Float_Dot(90,2,offset,0);
//  148   LCD_P6x8Str(10,3,"offset_k:"); 
//  149   LCD_Write_Float_Dot(90,3,offset_k,1);
//  150   LCD_P6x8Str(10,4,"i_max:"); 
//  151   LCD_Write_Float_Dot(90,4,i_max,0);
//  152   LCD_P6x8Str(10,5,"i_min:"); 
//  153   LCD_Write_Float_Dot(90,5,i_min,0);
//  154   LCD_P6x8Str(10,6,"EDS_MAX:"); 
//  155   LCD_Write_Float_Dot(90,6,EDS_MAX,0);
//  156   LCD_P6x8Str(0,7,"-Parameter_Setting-");*/
//  157   switch(KeyValue) {
        LDR.N    R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Parameter_Setting_0
        BCC.N    ??Parameter_Setting_1
        CMP      R0,#+3
        BEQ.N    ??Parameter_Setting_2
        BCC.N    ??Parameter_Setting_3
        CMP      R0,#+5
        BEQ.N    ??Parameter_Setting_4
        BCC.N    ??Parameter_Setting_5
        CMP      R0,#+7
        BEQ.N    ??Parameter_Setting_6
        BCC.N    ??Parameter_Setting_7
        CMP      R0,#+9
        BEQ.N    ??Parameter_Setting_8
        BCC.N    ??Parameter_Setting_9
        B.N      ??Parameter_Setting_1
//  158   case 1:
//  159     //LCD_CLS();
//  160     break;
??Parameter_Setting_0:
        B.N      ??Parameter_Setting_1
//  161   case 2:
//  162     //goal ++ ;
//  163     //if(goal>6)
//  164       //goal=6;
//  165     //LCD_CLS();
//  166     break;
??Parameter_Setting_3:
        B.N      ??Parameter_Setting_1
//  167   case 3:
//  168     //goal --;    
//  169 //    if(goal<0)
//  170 //      goal=0;  
//  171 //    LCD_CLS();
//  172     break;
??Parameter_Setting_2:
        B.N      ??Parameter_Setting_1
//  173   case 4:
//  174     break;
??Parameter_Setting_5:
        B.N      ??Parameter_Setting_1
//  175   case 5:
//  176 //    if(goal == 0) SpeedHigh++;
//  177 //    else if(goal == 1) SpeedLow ++;
//  178 //    else if(goal == 2) offset ++;
//  179 //    else if(goal == 3) offset_k +=0.1f;
//  180 //    else if(goal == 4) i_max ++;
//  181 //    else if(goal == 5) i_min ++;
//  182 //    else if(goal == 6) EDS_MAX ++;
//  183     break;
??Parameter_Setting_4:
        B.N      ??Parameter_Setting_1
//  184   case 6:
//  185 //    if(goal == 0) SpeedHigh--;
//  186 //    else if(goal == 1) SpeedLow --;
//  187 //    else if(goal == 2) offset --;
//  188 //    else if(goal == 3) offset_k -=0.1f;
//  189 //    else if(goal == 4) i_max --;
//  190 //    else if(goal == 5) i_min --;
//  191 //    else if(goal == 6) EDS_MAX --;
//  192     break;
??Parameter_Setting_7:
        B.N      ??Parameter_Setting_1
//  193   case 7:
//  194     break;
??Parameter_Setting_6:
        B.N      ??Parameter_Setting_1
//  195   case 8:
//  196     page --;
??Parameter_Setting_9:
        LDR.N    R0,??DataTable3
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  197     if(page < 0) page = 2;
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BPL.N    ??Parameter_Setting_10
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
//  198     LCD_CLS(); 
??Parameter_Setting_10:
        BL       LCD_CLS
//  199     break;
        B.N      ??Parameter_Setting_1
//  200   case 9:
//  201     page ++;
??Parameter_Setting_8:
        LDR.N    R0,??DataTable3
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  202     if(page > 2) page = 0;
        LDR      R1,[R0, #+0]
        CMP      R1,#+3
        BLT.N    ??Parameter_Setting_11
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  203     LCD_CLS(); 
??Parameter_Setting_11:
        BL       LCD_CLS
//  204     break;
//  205   }
//  206 }
??Parameter_Setting_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DATA32
        DC32     page

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DATA32
        DC32     KeyValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DATA32
        DC32     display_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DATA32
        DC32     ImgThreshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DATA32
        DC32     LuBang

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DATA32
        DC32     Motor_OPEN

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  11 bytes in section .bss
//   1 byte  in section .data
// 504 bytes in section .text
// 
// 504 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: 1
