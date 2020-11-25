///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        18/May/2019  16:18:18
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_MCG.c
//    Command line =  
//        -f C:\Users\TEMPLA~1.000\AppData\Local\Temp\EW8656.tmp
//        (C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_MCG.c -D
//        LPLD_K60 -lCN
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List"
//        -lB
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List"
//        -o
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\Obj"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\@@\605110 IAR for
//        ARM 8.30\arm\inc\c\DLib_Config_Normal.h" -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\driver\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\USB\class\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Me\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\app\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\common\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\CPU\"
//        -I
//        "C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\..\..\..\lib\Jay\"
//        -Ol -I "D:\@@\605110 IAR for ARM 8.30\arm\CMSIS\Core\Include\" -I
//        "D:\@@\605110 IAR for ARM 8.30\arm\CMSIS\DSP\Include\" -D
//        ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\que\Desktop\AAA_xinbiao\smartcar\project\28-(SDHC)LPLD_SdCard\iar\RAM\List\HW_MCG.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC LPLD_PLL_Setup
        PUBLIC LPLD_Set_SYS_DIV
        PUBLIC g_bus_clock
        PUBLIC g_core_clock
        PUBLIC g_flash_clock
        PUBLIC g_flexbus_clock

// C:\Users\que\Desktop\AAA_xinbiao\smartcar\lib\LPLD\HW\HW_MCG.c
//    1 /**
//    2  * @file HW_MCG.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MCG底层模块相关函数
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
//   22 #include "common.h"
//   23 #include "HW_MCG.h"
//   24 
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   26 uint32 g_core_clock = -1ul;
g_core_clock:
        DATA32
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   27 uint32 g_bus_clock = -1ul;
g_bus_clock:
        DATA32
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   28 uint32 g_flash_clock = -1ul;
g_flash_clock:
        DATA32
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   29 uint32 g_flexbus_clock = -1ul;
g_flexbus_clock:
        DATA32
        DC32 4294967295
//   30 
//   31 /*
//   32  * LPLD_PLL_Setup
//   33  * 初始化内核时钟及其他系统时钟
//   34  * 
//   35  * 参数:
//   36  *    core_clk_mhz--期望内核时钟频率
//   37  *      |__PLLx--参见HAL_MCG.h中的PLL_option定义
//   38  *
//   39  * 输出:
//   40  *    内核频率，单位MHz
//   41  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 uint8 LPLD_PLL_Setup(PllOptionEnum_Type core_clk_mhz)
//   43 {
LPLD_PLL_Setup:
        PUSH     {R3-R9,LR}
        MOVS     R1,R0
//   44   uint8 pll_freq;
//   45   uint8 prdiv, vdiv;
//   46   uint8 core_div, bus_div, flexbus_div, flash_div;
//   47   
//   48 /*
//   49  *************************************************
//   50   【LPLD注解】MCG关键系数
//   51   prdiv(PLL分频系数): 0~31(1~32)
//   52   vdiv(PLL倍频系数): 0~31(24~55)
//   53   PLL参考时钟范围: 2MHz~4MHz
//   54   PLL参考时钟 = 外部参考时钟(CPU_XTAL_CLK_HZ)/prdiv
//   55   CoreClk = PLL参考时钟 x PLL倍频系数 /OUTDIV1
//   56  *************************************************
//   57  */
//   58   
//   59   // 对于MK60DZ10来说，core_clk_mhz建议不要超过100，这里限制为最高200
//   60   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+201
        BCC.N    ??LPLD_PLL_Setup_1
        MOVS     R1,#+200
        B.N      ??LPLD_PLL_Setup_2
//   61   
//   62   // 根据期望主频选择分频和倍频系数
//   63   switch(core_clk_mhz)
??LPLD_PLL_Setup_1:
??LPLD_PLL_Setup_2:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+48
        BEQ.N    ??LPLD_PLL_Setup_3
        CMP      R0,#+50
        BEQ.N    ??LPLD_PLL_Setup_4
        CMP      R0,#+96
        BEQ.N    ??LPLD_PLL_Setup_5
        CMP      R0,#+100
        BEQ.N    ??LPLD_PLL_Setup_6
        CMP      R0,#+120
        BEQ.N    ??LPLD_PLL_Setup_7
        CMP      R0,#+150
        BEQ.N    ??LPLD_PLL_Setup_8
        CMP      R0,#+180
        BEQ.N    ??LPLD_PLL_Setup_9
        CMP      R0,#+200
        BEQ.N    ??LPLD_PLL_Setup_10
        B.N      ??LPLD_PLL_Setup_11
//   64   {
//   65   case PLL_48:
//   66     prdiv = 24u;
??LPLD_PLL_Setup_3:
        MOVS     R12,#+24
//   67     vdiv = 0u;
        MOVS     R6,#+0
//   68     break;
//   69   case PLL_50:
//   70     prdiv = 24u;
//   71     vdiv = 1u;
//   72     break;
//   73   case PLL_96:
//   74     prdiv = 24u;
//   75     vdiv = 24u;
//   76     break;
//   77   case PLL_100:
//   78     prdiv = 24u;
//   79     vdiv = 26u;
//   80     break;
//   81   case PLL_120:
//   82     prdiv = 19u;
//   83     vdiv = 24u;
//   84     break;
//   85   case PLL_150:
//   86     prdiv = 15u;
//   87     vdiv = 24u;
//   88     break;
//   89   case PLL_180:
//   90     prdiv = 14u;
//   91     vdiv = 30u;
//   92     break;
//   93   case PLL_200:
//   94     prdiv = 12u;
//   95     vdiv = 28u;
//   96     break;
//   97   default:
//   98     return LPLD_PLL_Setup(PLL_96);
//   99   }
//  100   
//  101   pll_freq = core_clk_mhz * 1;
??LPLD_PLL_Setup_12:
        MOVS     R5,R1
//  102   core_div = 0;
        MOVS     R0,#+0
//  103   if((bus_div = (uint8)(core_clk_mhz/BUS_CLK_MHZ - 1u)) == (uint8)-1)
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R3,#+50
        UDIV     R2,R2,R3
        SUBS     R4,R2,#+1
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+255
        BNE.N    ??LPLD_PLL_Setup_13
//  104   {
//  105     bus_div = 0;
        MOVS     R4,#+0
        B.N      ??LPLD_PLL_Setup_14
//  106   }
??LPLD_PLL_Setup_4:
        MOVS     R12,#+24
        MOVS     R6,#+1
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_5:
        MOVS     R12,#+24
        MOVS     R6,#+24
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_6:
        MOVS     R12,#+24
        MOVS     R6,#+26
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_7:
        MOVS     R12,#+19
        MOVS     R6,#+24
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_8:
        MOVS     R12,#+15
        MOVS     R6,#+24
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_9:
        MOVS     R12,#+14
        MOVS     R6,#+30
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_10:
        MOVS     R12,#+12
        MOVS     R6,#+28
        B.N      ??LPLD_PLL_Setup_12
??LPLD_PLL_Setup_11:
        MOVS     R0,#+96
        BL       LPLD_PLL_Setup
        B.N      ??LPLD_PLL_Setup_15
//  107   else if(core_clk_mhz/(bus_div+1) > BUS_CLK_MHZ)
??LPLD_PLL_Setup_13:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R3,R3,#+1
        SDIV     R2,R2,R3
        CMP      R2,#+51
        BCC.N    ??LPLD_PLL_Setup_14
//  108   {
//  109     bus_div += 1;
        ADDS     R4,R4,#+1
//  110   }
//  111   if((flexbus_div = (core_clk_mhz/FLEXBUS_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_14:
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R3,#+50
        UDIV     R2,R2,R3
        SUBS     R2,R2,#+1
        MOVS     R3,R2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+255
        BNE.N    ??LPLD_PLL_Setup_16
//  112   {
//  113     flexbus_div = 0;
        MOVS     R2,#+0
        B.N      ??LPLD_PLL_Setup_17
//  114   }
//  115   else if(core_clk_mhz/(flexbus_div+1) > FLEXBUS_CLK_MHZ)
??LPLD_PLL_Setup_16:
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R7,R2
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R7,R7,#+1
        SDIV     R3,R3,R7
        CMP      R3,#+51
        BCC.N    ??LPLD_PLL_Setup_17
//  116   {
//  117     flexbus_div += 1;
        ADDS     R2,R2,#+1
//  118   }
//  119   if((flash_div = (core_clk_mhz/FLASH_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_17:
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R7,#+25
        UDIV     R3,R3,R7
        SUBS     R3,R3,#+1
        MOVS     R7,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+255
        BNE.N    ??LPLD_PLL_Setup_18
//  120   {
//  121     flash_div = 0;
        MOVS     R3,#+0
        B.N      ??LPLD_PLL_Setup_19
//  122   }
//  123   else if(core_clk_mhz/(flash_div+1) > FLASH_CLK_MHZ)
??LPLD_PLL_Setup_18:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R7,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R7,R7,#+1
        SDIV     R1,R1,R7
        CMP      R1,#+26
        BCC.N    ??LPLD_PLL_Setup_19
//  124   {
//  125     flash_div += 1;
        ADDS     R3,R3,#+1
//  126   }
//  127   
//  128   // 这里假设复位后 MCG 模块默认为 FEI 模式
//  129   
//  130   // 首先移动到 FBE 模式
//  131   MCG->C2 = 0;
??LPLD_PLL_Setup_19:
        MOVS     R1,#+0
        LDR.N    R7,??LPLD_PLL_Setup_0  ;; 0x40064001
        STRB     R1,[R7, #+0]
//  132   
//  133   // 振荡器初始化完成后,释放锁存状态下的 oscillator 和 GPIO 
//  134   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R1,??LPLD_PLL_Setup_0+0x4  ;; 0x40048034
        LDR      R7,[R1, #+0]
        ORRS     R7,R7,#0x10000000
        STR      R7,[R1, #+0]
//  135   LLWU->CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R1,??LPLD_PLL_Setup_0+0x8  ;; 0x4007c008
        LDRB     R7,[R1, #+0]
        ORRS     R7,R7,#0x80
        STRB     R7,[R1, #+0]
//  136   
//  137   // 选择外部 oscilator 、参考分频器 and 清零 IREFS 启动外部osc
//  138   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  139   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
        LDR.N    R7,??LPLD_PLL_Setup_0+0xC  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R7, #+0]
//  140   
//  141   while (MCG->S & MCG_S_IREFST_MASK){}; // 等待参考时钟清零
??LPLD_PLL_Setup_20:
        LDR.W    R8,??LPLD_PLL_Setup_0+0x10  ;; 0x40064006
        LDRB     R1,[R8, #+0]
        LSLS     R1,R1,#+27
        BMI.N    ??LPLD_PLL_Setup_20
//  142   
//  143   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // 等待时钟状态显示为外部参考时钟(ext ref clk)
??LPLD_PLL_Setup_21:
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+2,#+2
        CMP      R1,#+2
        BNE.N    ??LPLD_PLL_Setup_21
//  144   
//  145   // 进入FBE模式
//  146   // 配置 PLL 参考分频器, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  147   // 用晶振频率来选择 PRDIV 值. 仅在有频率晶振的时候支持
//  148   // 产生 2MHz 的参考时钟给 PLL.
//  149   MCG->C5 = MCG_C5_PRDIV(prdiv); // 设置 PLL 匹配晶振的参考分频数 
        ANDS     R12,R12,#0x1F
        LDR.N    R1,??LPLD_PLL_Setup_0+0x14  ;; 0x40064004
        STRB     R12,[R1, #+0]
//  150   
//  151   // 确保MCG_C6处于复位状态,禁止LOLIE、PLL、和时钟控制器,清PLL VCO分频器
//  152   MCG->C6 = 0x0;
        LDR.W    R9,??LPLD_PLL_Setup_0+0x18  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R9, #+0]
//  153   
//  154   //设置系统时钟分频系数
//  155   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_Set_SYS_DIV
//  156   
//  157   //设置倍频系数
//  158   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
        ANDS     R6,R6,#0x1F
        ORRS     R6,R6,#0x40
        STRB     R6,[R9, #+0]
//  159   
//  160   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??LPLD_PLL_Setup_22:
        LDRB     R0,[R8, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_PLL_Setup_22
//  161   
//  162   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??LPLD_PLL_Setup_23:
        LDRB     R0,[R8, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_PLL_Setup_23
//  163   
//  164   // 已经进入PBE模式
//  165   
//  166   // Transition into PEE by setting CLKS to 0
//  167   // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  168   MCG->C1 &= ~MCG_C1_CLKS_MASK;
        LDRB     R0,[R7, #+0]
        ANDS     R0,R0,#0x3F
        STRB     R0,[R7, #+0]
//  169   
//  170   // Wait for clock status bits to update
//  171   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??LPLD_PLL_Setup_24:
        LDRB     R0,[R8, #+0]
        UBFX     R0,R0,#+2,#+2
        CMP      R0,#+3
        BNE.N    ??LPLD_PLL_Setup_24
//  172   
//  173   // 已经进入PEE模式
//  174   
//  175   return pll_freq;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_PLL_Setup_15:
        POP      {R1,R4-R9,PC}    ;; return
        Nop      
        DATA
??LPLD_PLL_Setup_0:
        DATA32
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
//  176 } 
//  177 
//  178 
//  179 /*
//  180  * LPLD_Set_SYS_DIV
//  181  * 设置系统始终分频
//  182  *
//  183  * 说明:
//  184  * 这段代码必须放置在RAM中，目的是防止程序跑飞，详见官方文档errata e2448.
//  185  * 当Flash时钟分频改变的时候，Flash预读取必须禁用.
//  186  * 禁止从Flash中运行以下代码.
//  187  * 在预读取被重新使能之前必须在时钟分频改变后有一段小的延时.
//  188  *
//  189  * 参数:
//  190  *    outdiv1~outdiv4--分别为core, bus, FlexBus, Flash时钟分频系数
//  191  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  192 RAMFUNC void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  193 {
LPLD_Set_SYS_DIV:
        PUSH     {R4-R6}
//  194   uint32 temp_reg;
//  195   uint8 i;
//  196   
//  197   temp_reg = FMC->PFAPR; // 备份 FMC_PFAPR 寄存器
        LDR.N    R5,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R4,[R5, #+0]
//  198   
//  199   // 设置 M0PFD 到 M7PFD 为 1 禁用预先读取
//  200   FMC->PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  201              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  202              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR      R6,[R5, #+0]
        ORRS     R6,R6,#0xFF0000
        STR      R6,[R5, #+0]
//  203   
//  204   // 设置时钟分频为期望值  
//  205   SIM->CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  206               | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R1,R1,R0, LSL #+28
        LSLS     R2,R2,#+20
        ANDS     R2,R2,#0xF00000
        ORRS     R1,R2,R1
        LSLS     R0,R3,#+16
        ANDS     R0,R0,#0xF0000
        ORRS     R1,R0,R1
        LDR.N    R0,??LPLD_Set_SYS_DIV_0+0x4  ;; 0x40048044
        STR      R1,[R0, #+0]
//  207 
//  208   // 延时一小段时间等待改变
//  209   for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R0,#+0
        B.N      ??LPLD_Set_SYS_DIV_1
??LPLD_Set_SYS_DIV_2:
        ADDS     R0,R0,#+1
??LPLD_Set_SYS_DIV_1:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R3
        BCC.N    ??LPLD_Set_SYS_DIV_2
//  210   {}
//  211   
//  212   FMC->PFAPR = temp_reg; // 回复原先的 FMC_PFAPR 寄存器值
        STR      R4,[R5, #+0]
//  213   
//  214   return;
        POP      {R4-R6}
        BX       LR               ;; return
        DATA
??LPLD_Set_SYS_DIV_0:
        DATA32
        DC32     0x4001f000
        DC32     0x40048044
//  215 } // set_sys_dividers

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  16 bytes in section .data
// 436 bytes in section .text
//  72 bytes in section .textrw
// 
// 508 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
