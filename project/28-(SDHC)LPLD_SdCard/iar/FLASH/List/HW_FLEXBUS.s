///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        02/Jul/2019  17:59:15
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_FLEXBUS.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW4FE2.tmp
//        (G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_FLEXBUS.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\xiugai\project\28-(SDHC)LPLD_SdCard\iar\FLASH\List\HW_FLEXBUS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC FB_PORT
        PUBLIC LPLD_FlexBus_Init

// G:\AIcar\@@\xiugai\lib\LPLD\HW\HW_FLEXBUS.c
//    1 /**
//    2  * @file HW_FLEXBUS.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FLEXBUS底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 
//   23 #include "common.h"
//   24 #include "HW_FLEXBUS.h"
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   26 const uint32* FB_PORT[32] = {(uint32*)&PORTD->PCR[6], (uint32*)&PORTD->PCR[5], (uint32*)&PORTD->PCR[4], (uint32*)&PORTD->PCR[3],
FB_PORT:
        DATA32
        DC32 4004C018H, 4004C014H, 4004C010H, 4004C00CH, 4004C008H, 4004B028H
        DC32 4004B024H, 4004B020H, 4004B01CH, 4004B018H, 4004B014H, 4004B010H
        DC32 4004B008H, 4004B004H, 4004B000H, 4004A048H, 4004A044H, 4004A040H
        DC32 4004A02CH, 4004A028H, 4004A024H, 4004A020H, 4004A01CH, 4004A018H
        DC32 4004B03CH, 4004B038H, 4004B034H, 4004B030H, 4004A05CH, 4004A058H
        DC32 4004A054H, 4004A050H
//   27                              (uint32*)&PORTD->PCR[2], (uint32*)&PORTC->PCR[10], (uint32*)&PORTC->PCR[9], (uint32*)&PORTC->PCR[8],
//   28                              (uint32*)&PORTC->PCR[7], (uint32*)&PORTC->PCR[6], (uint32*)&PORTC->PCR[5], (uint32*)&PORTC->PCR[4],
//   29                              (uint32*)&PORTC->PCR[2], (uint32*)&PORTC->PCR[1], (uint32*)&PORTC->PCR[0], (uint32*)&PORTB->PCR[18],
//   30                              (uint32*)&PORTB->PCR[17], (uint32*)&PORTB->PCR[16], (uint32*)&PORTB->PCR[11], (uint32*)&PORTB->PCR[10],
//   31                              (uint32*)&PORTB->PCR[9], (uint32*)&PORTB->PCR[8], (uint32*)&PORTB->PCR[7], (uint32*)&PORTB->PCR[6],
//   32                              (uint32*)&PORTC->PCR[15], (uint32*)&PORTC->PCR[14], (uint32*)&PORTC->PCR[13], (uint32*)&PORTC->PCR[12],
//   33                              (uint32*)&PORTB->PCR[23], (uint32*)&PORTB->PCR[22], (uint32*)&PORTB->PCR[21], (uint32*)&PORTB->PCR[20]};
//   34 
//   35 /*
//   36  * LPLD_FlexBus_Init
//   37  * FlexBux通用初始化函数
//   38  * 
//   39  * 参数:
//   40  *    fb_init_struct--FlexBus初始化结构体，
//   41  *                        具体定义见FB_InitTypeDef
//   42  *
//   43  * 输出:
//   44  *    0--配置错误
//   45  *    1--配置成功
//   46  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 uint8 LPLD_FlexBus_Init(FB_InitTypeDef fb_init_struct)
//   48 {
LPLD_FlexBus_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   49   FBx Fbx = fb_init_struct.FB_Fbx;
        LDRB     R6,[SP, #+40]
//   50   uint32 base_addr = fb_init_struct.FB_ChipSelAddress;
        LDR      R7,[SP, #+44]
//   51   uint32 addr_space = fb_init_struct.FB_AddressSpace;
        LDR      R4,[SP, #+48]
//   52   uint8 size = fb_init_struct.FB_PortSize;
        LDRB     R8,[SP, #+52]
//   53   boolean justied = fb_init_struct.FB_IsRightJustied;
        LDRB     R9,[SP, #+53]
//   54   boolean aa = fb_init_struct.FB_AutoAckEnable;
        LDRB     R0,[SP, #+54]
        STRB     R0,[SP, #+2]
//   55   uint8 ws = fb_init_struct.FB_WateStates;
        LDRB     R0,[SP, #+55]
        STRB     R0,[SP, #+1]
//   56   uint8 rah = fb_init_struct.FB_ReadAddrHold; 
        LDRB     R0,[SP, #+56]
        STRB     R0,[SP, #+0]
//   57   uint8 wah = fb_init_struct.FB_WriteAddrHold;
        LDRB     R10,[SP, #+57]
//   58   uint32* pcr;
//   59   uint8 n=0;
        MOVS     R11,#+0
//   60   
//   61   //参数检查
//   62   ASSERT( Fbx <= 5);    //判断FB通道号
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+6
        BLT.N    ??LPLD_FlexBus_Init_1
        MOVS     R1,#+62
        LDR.N    R0,??LPLD_FlexBus_Init_0
        BL       assert_failed
//   63   ASSERT( base_addr >= 0x60000000 && base_addr <= 0xDFFFFFFF);    //判断基地址合法性
??LPLD_FlexBus_Init_1:
        CMP      R7,#+1610612736
        BCC.N    ??LPLD_FlexBus_Init_2
        CMP      R7,#-536870912
        BCC.N    ??LPLD_FlexBus_Init_3
??LPLD_FlexBus_Init_2:
        MOVS     R1,#+63
        LDR.N    R0,??LPLD_FlexBus_Init_0
        BL       assert_failed
//   64   ASSERT( addr_space != 0);    //寻址空间大小
??LPLD_FlexBus_Init_3:
        CMP      R4,#+0
        BNE.N    ??LPLD_FlexBus_Init_4
        MOVS     R1,#+64
        LDR.N    R0,??LPLD_FlexBus_Init_0
        BL       assert_failed
//   65   ASSERT( size <= 3);    //判断数据位宽
??LPLD_FlexBus_Init_4:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??LPLD_FlexBus_Init_5
        MOVS     R1,#+65
        LDR.N    R0,??LPLD_FlexBus_Init_0
        BL       assert_failed
//   66   ASSERT( rah <= 3);     //判断读地址保持时间
??LPLD_FlexBus_Init_5:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+4
        BLT.N    ??LPLD_FlexBus_Init_6
        MOVS     R1,#+66
        LDR.N    R0,??LPLD_FlexBus_Init_0
        BL       assert_failed
//   67   ASSERT( wah <= 3);     //判断写地址保持时间
??LPLD_FlexBus_Init_6:
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BLT.N    ??LPLD_FlexBus_Init_7
        MOVS     R1,#+67
        LDR.N    R0,??LPLD_FlexBus_Init_0
        BL       assert_failed
//   68   
//   69   FB->CS[Fbx].CSMR = 0;
??LPLD_FlexBus_Init_7:
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x4  ;; 0x4000c000
        MOVS     R2,#+12
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MULS     R0,R2,R0
        ADD      R0,R1,R0
        MOVS     R3,#+0
        STR      R3,[R0, #+4]
//   70       
//   71   //设置基地址
//   72   FB->CS[Fbx].CSAR = base_addr;
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MULS     R0,R2,R0
        STR      R7,[R1, R0]
//   73   //端口位宽
//   74   FB->CS[Fbx].CSCR  = FB_CSCR_PS(size);      
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MULS     R0,R2,R0
        ADD      R0,R1,R0
        MOV      R3,R8
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R3,R3,#+6
        ANDS     R3,R3,#0xC0
        STR      R3,[R0, #+8]
//   75   
//   76   if(justied)
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_FlexBus_Init_8
//   77   {
//   78     FB->CS[Fbx].CSCR |= FB_CSCR_BLS_MASK;   // 数据右对齐
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MULS     R0,R2,R0
        ADD      R0,R1,R0
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MULS     R3,R2,R3
        ADD      R3,R1,R3
        LDR      R3,[R3, #+8]
        ORRS     R3,R3,#0x200
        STR      R3,[R0, #+8]
//   79   }
//   80       
//   81   if(aa)    
??LPLD_FlexBus_Init_8:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_FlexBus_Init_9
//   82   {
//   83     FB->CS[Fbx].CSCR |= FB_CSCR_AA_MASK;   //使能内部应答
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MULS     R0,R2,R0
        ADD      R0,R1,R0
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MULS     R3,R2,R3
        ADD      R3,R1,R3
        LDR      R3,[R3, #+8]
        ORRS     R3,R3,#0x100
        STR      R3,[R0, #+8]
//   84   }
//   85   
//   86   FB->CS[Fbx].CSCR |= FB_CSCR_WS(ws)    // 在内部应答信号之前加入ws个WS
//   87                      | FB_CSCR_RDAH(rah)
//   88                      | FB_CSCR_WRAH(wah);
??LPLD_FlexBus_Init_9:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MULS     R0,R2,R0
        ADD      R0,R1,R0
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MULS     R3,R2,R3
        ADD      R3,R1,R3
        LDR      R12,[R3, #+8]
        LDRB     R3,[SP, #+1]
        LSLS     R3,R3,#+10
        ANDS     R3,R3,#0xFC00
        LDRB     LR,[SP, #+0]
        LSLS     LR,LR,#+18
        ANDS     LR,LR,#0xC0000
        ORRS     R3,LR,R3
        MOV      LR,R10
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LSLS     LR,LR,#+16
        ANDS     LR,LR,#0x30000
        ORRS     R3,LR,R3
        ORRS     R3,R3,R12
        STR      R3,[R0, #+8]
//   89   
//   90   //根据寻址空间大小计算基地址掩码
//   91   addr_space = (addr_space-1)>>16;
        SUBS     R4,R4,#+1
        LSRS     R4,R4,#+16
//   92   FB->CS[Fbx].CSMR = FB_CSMR_BAM(addr_space)  //设置基地址掩码为128K地址空间 =2^n(n=BAM+16)
//   93                 | FB_CSMR_V_MASK;    //使能CS信号
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MUL      R2,R2,R0
        ADD      R0,R1,R2
        LSLS     R1,R4,#+16
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+4]
//   94   
//   95   //使能复用功能的FB_CSn及引脚复用
//   96   if(Fbx == FB0)
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_FlexBus_Init_10
//   97   {
//   98     PORTD->PCR[1]  = PORT_PCR_MUX(5);       // FB_CS0     
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x8  ;; 0x4004c004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//   99   }
//  100   else if(Fbx == FB1)
??LPLD_FlexBus_Init_10:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_FlexBus_Init_12
//  101   {
//  102     FB->CSPMCR &= ~(FB_CSPMCR_GROUP1_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_0+0xC  ;; 0x4000c060
        LDR      R1,[R0, #+0]
        BIC      R1,R1,#0xF0000000
        STR      R1,[R0, #+0]
//  103     FB->CSPMCR |= FB_CSPMCR_GROUP1(1);      
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000000
        STR      R1,[R0, #+0]
//  104     PORTD->PCR[0]  = PORT_PCR_MUX(5);       // FB_CS1  
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x10  ;; 0x4004c000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  105   }
//  106   else if(Fbx == FB2)
??LPLD_FlexBus_Init_12:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??LPLD_FlexBus_Init_13
//  107   {
//  108     FB->CSPMCR &= ~(FB_CSPMCR_GROUP4_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_0+0xC  ;; 0x4000c060
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xF0000
        STR      R1,[R0, #+0]
//  109     FB->CSPMCR |= FB_CSPMCR_GROUP4(1);     
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000
        STR      R1,[R0, #+0]
//  110     PORTC->PCR[18]  = PORT_PCR_MUX(5);       // FB_CS2
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x14  ;; 0x4004b048
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  111   }
//  112   else if(Fbx == FB3)
??LPLD_FlexBus_Init_13:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_FlexBus_Init_14
//  113   {
//  114     FB->CSPMCR &= ~(FB_CSPMCR_GROUP5_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_0+0xC  ;; 0x4000c060
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xF000
        STR      R1,[R0, #+0]
//  115     FB->CSPMCR |= FB_CSPMCR_GROUP5(1);     
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1000
        STR      R1,[R0, #+0]
//  116     PORTC->PCR[19]  = PORT_PCR_MUX(5);       // FB_CS3
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x18  ;; 0x4004b04c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  117   }
//  118   else if(Fbx == FB4)
??LPLD_FlexBus_Init_14:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BNE.N    ??LPLD_FlexBus_Init_15
//  119   {
//  120     FB->CSPMCR &= ~(FB_CSPMCR_GROUP2_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_0+0xC  ;; 0x4000c060
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xF000000
        STR      R1,[R0, #+0]
//  121     FB->CSPMCR |= FB_CSPMCR_GROUP2(0);      
        LDR      R1,[R0, #+0]
        STR      R1,[R0, #+0]
//  122     PORTC->PCR[17]  = PORT_PCR_MUX(5);       // FB_CS4
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x1C  ;; 0x4004b044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  123   }
//  124   else if(Fbx == FB5)
??LPLD_FlexBus_Init_15:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BNE.N    ??LPLD_FlexBus_Init_11
//  125   {
//  126     FB->CSPMCR &= ~(FB_CSPMCR_GROUP3_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_0+0xC  ;; 0x4000c060
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xF00000
        STR      R1,[R0, #+0]
//  127     FB->CSPMCR |= FB_CSPMCR_GROUP3(0);     
        LDR      R1,[R0, #+0]
        STR      R1,[R0, #+0]
//  128     PORTC->PCR[16]  = PORT_PCR_MUX(5);       // FB_CS5
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x20  ;; 0x4004b040
        STR      R0,[R1, #+0]
//  129   }
//  130   
//  131   //使能总线地址、数据引脚复用功能
//  132   //先使能低16位地址总线
//  133   for(uint8 i=0; i<16; i++)
??LPLD_FlexBus_Init_11:
        MOVS     R0,#+0
??LPLD_FlexBus_Init_16:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BGE.N    ??LPLD_FlexBus_Init_17
//  134   {
//  135     pcr = (uint32 *)FB_PORT[i];
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x24
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R1,[R1, R2, LSL #+2]
        MOVS     R5,R1
//  136     *pcr = PORT_PCR_MUX(5);    
        MOV      R1,#+1280
        STR      R1,[R5, #+0]
//  137   }
        ADDS     R0,R0,#+1
        B.N      ??LPLD_FlexBus_Init_16
//  138   //使能其余的地址总线
//  139   n=16;
??LPLD_FlexBus_Init_17:
        MOVS     R0,#+16
//  140   for(uint8 i=0; i<16; i++)
        MOVS     R1,#+0
??LPLD_FlexBus_Init_18:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+16
        BGE.N    ??LPLD_FlexBus_Init_19
//  141   {
//  142     if((addr_space>>i)&0x01)
        MOVS     R2,R4
        LSRS     R2,R2,R1
        LSLS     R2,R2,#+31
        BPL.N    ??LPLD_FlexBus_Init_20
//  143     {
//  144       pcr = (uint32 *)FB_PORT[n++];
        LDR.N    R2,??LPLD_FlexBus_Init_0+0x24
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R2,[R2, R3, LSL #+2]
        MOVS     R5,R2
        ADDS     R0,R0,#+1
//  145       *pcr = PORT_PCR_MUX(5); 
        MOV      R2,#+1280
        STR      R2,[R5, #+0]
//  146     }
//  147   }
??LPLD_FlexBus_Init_20:
        ADDS     R1,R1,#+1
        B.N      ??LPLD_FlexBus_Init_18
//  148   //如果是32位宽，则使能高16位
//  149   n=0;
??LPLD_FlexBus_Init_19:
        MOVS     R1,#+0
//  150   if(size == 0)
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FlexBus_Init_21
//  151   {   
//  152     n=16;
        MOVS     R0,#+16
        MOVS     R1,R0
        B.N      ??LPLD_FlexBus_Init_22
//  153   }else if(justied==0 && size == 0x10)
??LPLD_FlexBus_Init_21:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_FlexBus_Init_23
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BNE.N    ??LPLD_FlexBus_Init_23
//  154   {
//  155     n=16;
        MOVS     R0,#+16
        MOVS     R1,R0
        B.N      ??LPLD_FlexBus_Init_22
//  156   }else if(justied==0 && size == 0x01)
??LPLD_FlexBus_Init_23:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_FlexBus_Init_22
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_FlexBus_Init_22
//  157   {
//  158     n=8;
        MOVS     R0,#+8
        MOVS     R1,R0
//  159   }
//  160   if(n!=0)
??LPLD_FlexBus_Init_22:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_FlexBus_Init_24
//  161   {
//  162     for(uint8 i=31; i>31-n; i--)
        MOVS     R0,#+31
??LPLD_FlexBus_Init_25:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        RSBS     R2,R2,#+31
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R2,R3
        BGE.N    ??LPLD_FlexBus_Init_24
//  163     {
//  164       pcr = (uint32 *)FB_PORT[i];
        LDR.N    R2,??LPLD_FlexBus_Init_0+0x24
        MOVS     R3,R0
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R2,[R2, R3, LSL #+2]
        MOVS     R5,R2
//  165       *pcr = PORT_PCR_MUX(5);    
        MOV      R2,#+1280
        STR      R2,[R5, #+0]
//  166     }
        SUBS     R0,R0,#+1
        B.N      ??LPLD_FlexBus_Init_25
//  167   }
//  168   
//  169   //控制信号线
//  170   PORTB->PCR[19] = PORT_PCR_MUX(5);          // fb_oe_b
??LPLD_FlexBus_Init_24:
        MOV      R0,#+1280
        LDR.N    R2,??LPLD_FlexBus_Init_0+0x28  ;; 0x4004a04c
        STR      R0,[R2, #+0]
//  171   PORTC->PCR[11] = PORT_PCR_MUX(5);          // fb_rw_b  
        LDR.N    R2,??LPLD_FlexBus_Init_0+0x2C  ;; 0x4004b02c
        STR      R0,[R2, #+0]
//  172               
//  173   return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
        DATA
??LPLD_FlexBus_Init_0:
        DATA32
        DC32     ?_0
        DC32     0x4000c000
        DC32     0x4004c004
        DC32     0x4000c060
        DC32     0x4004c000
        DC32     0x4004b048
        DC32     0x4004b04c
        DC32     0x4004b044
        DC32     0x4004b040
        DC32     FB_PORT
        DC32     0x4004a04c
        DC32     0x4004b02c
//  174 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "G:\\AIcar\\\344\277\241\346\240\207\\xiugai\\lib\\LPLD\\HW\\HW_FLEXBUS.c"

        END
// 
// 128 bytes in section .data
//  48 bytes in section .rodata
// 792 bytes in section .text
// 
// 792 bytes of CODE  memory
//  48 bytes of CONST memory
// 128 bytes of DATA  memory
//
//Errors: none
//Warnings: none
