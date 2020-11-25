///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:46
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\LPLD\HW\HW_LPTMR.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW370E.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\LPLD\HW\HW_LPTMR.c -D LPLD_K60
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\HW_LPTMR.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC LPLD_LPTMR_Deinit
        PUBLIC LPLD_LPTMR_DelayMs
        PUBLIC LPLD_LPTMR_DisableIrq
        PUBLIC LPLD_LPTMR_EnableIrq
        PUBLIC LPLD_LPTMR_GetPulseAcc
        PUBLIC LPLD_LPTMR_Init
        PUBLIC LPLD_LPTMR_ResetCounter
        PUBLIC LPTMR_ISR
        PUBLIC LPT_IRQHandler

// G:\AIcar\@@\k60_144\smartcar\lib\LPLD\HW\HW_LPTMR.c
//    1 /**
//    2  * @file HW_LPTMR.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief LPTMR底层模块相关函数
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn_Type)
__NVIC_EnableIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable7  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn_Type)
__NVIC_DisableIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable7_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   24 #include "HW_LPTMR.h"
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 LPTMR_ISR_CALLBACK LPTMR_ISR[1];
LPTMR_ISR:
        DS8 4
//   27 
//   28 /*
//   29  * LPLD_LPTMR_Init
//   30  * LPTMR初始化函数
//   31  * 
//   32  * 参数:
//   33  *    lptmr_init_structure--LPTMR初始化结构体，
//   34  *                         具体定义见LPTMR_InitTypeDef 
//   35  * 输出:
//   36  *    0--配置错误
//   37  *    1--配置成功
//   38  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 uint8 LPLD_LPTMR_Init(LPTMR_InitTypeDef lptmr_init_structure)
//   40 {
LPLD_LPTMR_Init:
        PUSH     {R0-R2,R4-R7,LR}
//   41   uint8  mode = lptmr_init_structure.LPTMR_Mode; 
        LDRB     R7,[SP, #+0]
//   42   uint16 period_ms = lptmr_init_structure.LPTMR_PeriodMs;
        LDRH     R4,[SP, #+2]
//   43   uint8  pluseacc_input = lptmr_init_structure.LPTMR_PluseAccInput;
        LDRB     R5,[SP, #+4]
//   44   LPTMR_ISR_CALLBACK isr_func = lptmr_init_structure.LPTMR_Isr;
        LDR      R6,[SP, #+8]
//   45 
//   46   ASSERT(mode <= LPTMR_MODE_PLACC );
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BLT.N    ??LPLD_LPTMR_Init_0
        MOVS     R1,#+46
        LDR.N    R0,??DataTable7_2
        BL       assert_failed
//   47   ASSERT(pluseacc_input <= LPTMR_ALT2 );
??LPLD_LPTMR_Init_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BLT.N    ??LPLD_LPTMR_Init_1
        MOVS     R1,#+47
        LDR.N    R0,??DataTable7_2
        BL       assert_failed
//   48 
//   49   //初始化LPTMR时钟
//   50   SIM->SCGC5|=SIM_SCGC5_LPTIMER_MASK;  
??LPLD_LPTMR_Init_1:
        LDR.N    R0,??DataTable7_3  ;; 0x40048038
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//   51    
//   52   //清空寄存器
//   53   LPTMR0->CSR = 0x00;                   
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   54   LPTMR0->PSR = 0x00;
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//   55   LPTMR0->CMR = 0x00;
        LDR.N    R2,??DataTable7_6  ;; 0x40040008
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//   56    
//   57   if(mode == LPTMR_MODE_TIMER)          // 配置成低功耗定时器功能
        MOVS     R3,R7
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??LPLD_LPTMR_Init_2
//   58   {    
//   59     /* 配置LPTMR */
//   60     // LPO 1Khz
//   61     //设置比较的值
//   62     //使用内部时钟 分频系数Prescale为 2^(X+1)
//   63     //定时器的一个计数周期=时钟源(Clk_Src)/ 预分频值(Prescale)
//   64     //定时器的定时值=设置的比较值(compare_value)/定时器的一个计数周期
//   65     LPTMR0->CMR = LPTMR_CMR_COMPARE(period_ms);                 //设置比较值
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R4,[R2, #+0]
//   66     LPTMR0->PSR = LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK;       //采用LPO时钟旁路使能
        MOVS     R2,#+5
        STR      R2,[R1, #+0]
        B.N      ??LPLD_LPTMR_Init_3
//   67         
//   68   }
//   69   else if(mode == LPTMR_MODE_PLACC)             //配置成脉冲捕获模式
??LPLD_LPTMR_Init_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_LPTMR_Init_3
//   70   {
//   71     
//   72     if(pluseacc_input == LPTMR_ALT1)            //PTA19引脚
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_LPTMR_Init_4
//   73     {
//   74       PORTA->PCR[19] = PORT_PCR_MUX(0x6);       //设置PTA19为脉冲累加
        MOV      R2,#+1536
        LDR.N    R3,??DataTable7_7  ;; 0x4004904c
        STR      R2,[R3, #+0]
        B.N      ??LPLD_LPTMR_Init_5
//   75     }
//   76     else if(pluseacc_input == LPTMR_ALT2)       //PTC5引脚
??LPLD_LPTMR_Init_4:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_LPTMR_Init_5
//   77     {
//   78       PORTC->PCR[5] = PORT_PCR_MUX(0x4);        //设置PTC5为脉冲累加  
        MOV      R2,#+1024
        LDR.N    R3,??DataTable7_8  ;; 0x4004b014
        STR      R2,[R3, #+0]
//   79     }
//   80                
//   81     //与所用的内部时钟无关
//   82     //外部输入的信号作为计数时钟
//   83     LPTMR0->PSR = LPTMR_PSR_PCS(0x1)|LPTMR_PSR_PBYP_MASK; 
??LPLD_LPTMR_Init_5:
        MOVS     R2,#+5
        STR      R2,[R1, #+0]
//   84     LPTMR0->CSR = LPTMR_CSR_TPS(pluseacc_input);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R5,R5,#+4
        ANDS     R5,R5,#0x30
        STR      R5,[R0, #+0]
//   85     LPTMR0->CSR |= LPTMR_CSR_TMS_MASK; //捕获模式
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//   86     LPTMR0->CSR |= LPTMR_CSR_TFC_MASK; //自由计数模式
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//   87   }
//   88   
//   89   if(lptmr_init_structure.LPTMR_IntEnable == TRUE && isr_func != NULL)
??LPLD_LPTMR_Init_3:
        LDRB     R1,[SP, #+5]
        CMP      R1,#+1
        BNE.N    ??LPLD_LPTMR_Init_6
        MOVS     R1,R6
        CMP      R1,#+0
        BEQ.N    ??LPLD_LPTMR_Init_6
//   90   {
//   91     LPTMR_ISR[0] = isr_func;
        LDR.N    R1,??DataTable7_9
        STR      R6,[R1, #+0]
//   92     LPTMR0->CSR |= LPTMR_CSR_TIE_MASK;
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x40
        STR      R1,[R0, #+0]
//   93   }
//   94 
//   95   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK; //开启LPTMR
??LPLD_LPTMR_Init_6:
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//   96   return 1;
        MOVS     R0,#+1
        POP      {R1-R7,PC}       ;; return
//   97 }
//   98 
//   99 /*
//  100  * LPLD_LPTMR_DeInit
//  101  * LPTMR反初始化函数，关闭lptmrx
//  102  * 
//  103  * 参数:
//  104  *    无
//  105  *
//  106  * 输出:
//  107  *    0--配置错误
//  108  *    1--配置成功
//  109  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 uint8 LPLD_LPTMR_Deinit(void)
//  111 {
LPLD_LPTMR_Deinit:
        PUSH     {R7,LR}
//  112   //清空CSR寄存器
//  113   LPTMR0->CSR=0x00;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//  114   //清空PSR寄存器
//  115   LPTMR0->PSR=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        STR      R0,[R1, #+0]
//  116   //清空CMR寄存器
//  117   LPTMR0->CMR=0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_6  ;; 0x40040008
        STR      R0,[R1, #+0]
//  118   //禁止LPTimer中断
//  119   disable_irq(LPTimer_IRQn);
        MOVS     R0,#+85
        BL       __NVIC_DisableIRQ
//  120   
//  121    //关闭LPTMR时钟
//  122   SIM->SCGC5 &= ~(SIM_SCGC5_LPTIMER_MASK);  
        LDR.N    R0,??DataTable7_3  ;; 0x40048038
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  123   
//  124   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  125 }
//  126 
//  127 /*
//  128  *  LPLD_LPTMR_Reset
//  129  *  低功耗定时器复位，复位以后清空低功耗定时器Counter
//  130  * 
//  131  *  参数:
//  132  *      无
//  133  *  输出:
//  134  *      无
//  135  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void  LPLD_LPTMR_ResetCounter(void)
//  137 {
//  138   
//  139   LPTMR0->CSR&=(~LPTMR_CSR_TEN_MASK);       //Reset LPTMR0 Counter
LPLD_LPTMR_ResetCounter:
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  140 }
        BX       LR               ;; return
//  141 /*
//  142  * LPLD_LPTMR_EnableIrq
//  143  * 使能LPTMR中断功能，在该函数中使能TIE位和LPTMR模块中断
//  144  * 
//  145  * 参数:
//  146  *    无
//  147  *
//  148  * 输出:
//  149  *    0--配置错误
//  150  *    1--配置成功
//  151  *
//  152  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 uint8 LPLD_LPTMR_EnableIrq(void)
//  154 {
LPLD_LPTMR_EnableIrq:
        PUSH     {R7,LR}
//  155   enable_irq(LPTimer_IRQn);
        MOVS     R0,#+85
        BL       __NVIC_EnableIRQ
//  156   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  157 }
//  158 
//  159 /*
//  160  * LPLD_LPTMR_DisableIrq
//  161  * 禁止LPTMR中断
//  162  * 
//  163  * 参数:
//  164  *    无
//  165  *
//  166  * 输出:
//  167  *    0--配置错误
//  168  *    1--配置成功
//  169  *
//  170  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 uint8 LPLD_LPTMR_DisableIrq(void)
//  172 {
LPLD_LPTMR_DisableIrq:
        PUSH     {R7,LR}
//  173   disable_irq(LPTimer_IRQn); 
        MOVS     R0,#+85
        BL       __NVIC_DisableIRQ
//  174   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
//  175 }
//  176 
//  177 /*
//  178  *  LPLD_LPTMR_GetPulseAcc
//  179  *  得到脉冲累加的值
//  180  * 
//  181  *  参数:
//  182  *      无
//  183  *  输出:
//  184  *      脉冲累加值
//  185  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 uint16 LPLD_LPTMR_GetPulseAcc(void)
//  187 {
//  188    LPTMR0->CNR = 0X00;
LPLD_LPTMR_GetPulseAcc:
        LDR.N    R0,??DataTable7_10  ;; 0x4004000c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  189    return (uint16)LPTMR0->CNR;
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  190 }
//  191 
//  192 /*
//  193  *  LPLD_LPTMR_DelayMs
//  194  *  低功耗定时器延时n个ms
//  195  * 
//  196  * 参数:
//  197  *    period_ms--设定定时器的定时值 单位ms
//  198  *    最大65535ms
//  199  *
//  200  *  输出:
//  201  *      无
//  202  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 void LPLD_LPTMR_DelayMs(uint16 period_ms)
//  204 {
//  205   if(!period_ms)
LPLD_LPTMR_DelayMs:
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??LPLD_LPTMR_DelayMs_0
//  206     return;
//  207   
//  208   /* 开启LPTMR时钟 */
//  209   SIM->SCGC5|=SIM_SCGC5_LPTIMER_MASK; 
??LPLD_LPTMR_DelayMs_1:
        LDR.N    R1,??DataTable7_3  ;; 0x40048038
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x1
        STR      R2,[R1, #+0]
//  210   
//  211   /* 设置毫秒延时计数 */
//  212   LPTMR0->CMR = period_ms; 
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable7_6  ;; 0x40040008
        STR      R0,[R1, #+0]
//  213   
//  214   /* 设置LPTMR不分频采用1kHz LPO为时钟源 */
//  215   LPTMR0->PSR = 0|LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK; 
        MOVS     R0,#+5
        LDR.N    R1,??DataTable7_5  ;; 0x40040004
        STR      R0,[R1, #+0]
//  216   
//  217   /* 开启定时器 */
//  218   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK; 
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  219 
//  220   /* 等待计数达到设定值 */
//  221   while (!(LPTMR0->CSR & LPTMR_CSR_TCF_MASK));
??LPLD_LPTMR_DelayMs_2:
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??LPLD_LPTMR_DelayMs_2
//  222   
//  223   /*清除定时比较标志 */
//  224   LPTMR0->CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  225   
//  226 }
??LPLD_LPTMR_DelayMs_0:
        BX       LR               ;; return
//  227 
//  228 
//  229 /*
//  230  * LPTMR中断处理函数
//  231  * 与启动文件startup_K60.s中的中断向量表关联
//  232  * 用户无需修改，程序自动进入对应通道中断函数
//  233  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void LPT_IRQHandler(void)
//  235 {
LPT_IRQHandler:
        PUSH     {R7,LR}
//  236   LPTMR0->CSR|=LPTMR_CSR_TCF_MASK;  //清除LPT比较标志
        LDR.N    R0,??DataTable7_4  ;; 0x40040000
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x80
        STR      R1,[R0, #+0]
//  237   LPTMR_ISR[0]();
        LDR.N    R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        BLX      R0
//  238 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DATA32
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DATA32
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DATA32
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DATA32
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DATA32
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DATA32
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DATA32
        DC32     0x4004904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DATA32
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DATA32
        DC32     LPTMR_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DATA32
        DC32     0x4004000c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 47H, 3AH, 5CH, 41H, 49H, 63H, 61H, 72H
        DC8 5CH, 0E4H, 0BFH, 0A1H, 0E6H, 0A0H, 87H, 5CH
        DC8 6BH, 36H, 30H, 5FH, 31H, 34H, 34H, 5CH
        DC8 73H, 6DH, 61H, 72H, 74H, 63H, 61H, 72H
        DC8 5CH, 6CH, 69H, 62H, 5CH, 4CH, 50H, 4CH
        DC8 44H, 5CH, 48H, 57H, 5CH, 48H, 57H, 5FH
        DC8 4CH, 50H, 54H, 4DH, 52H, 2EH, 63H, 0

        END
// 
//   4 bytes in section .bss
//  56 bytes in section .rodata
// 474 bytes in section .text
// 
// 474 bytes of CODE  memory
//  56 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
