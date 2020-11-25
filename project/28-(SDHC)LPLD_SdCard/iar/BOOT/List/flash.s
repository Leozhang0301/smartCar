///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        23/Apr/2019  21:09:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  G:\AIcar\@@\k60_144\smartcar\lib\Jay\flash.c
//    Command line =  
//        -f C:\Users\admin\AppData\Local\Temp\EW2B0A.tmp
//        (G:\AIcar\@@\k60_144\smartcar\lib\Jay\flash.c -D LPLD_K60 -lCN
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
//        G:\AIcar\@@\k60_144\smartcar\project\28-(SDHC)LPLD_SdCard\iar\BOOT\List\flash.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN assert_failed

        PUBLIC DFlash_Read_Float
        PUBLIC DFlash_Read_Int
        PUBLIC DFlash_Write_Float
        PUBLIC DFlash_Write_Int
        PUBLIC Delayms
        PUBLIC User_Flash_Read
        PUBLIC User_Flash_Write
        PUBLIC User_Flash_WriteClear
        PUBLIC flash_erase_sector
        PUBLIC flash_init
        PUBLIC flash_write
        PUBLIC flash_write_buf

// G:\AIcar\@@\k60_144\smartcar\lib\Jay\flash.c
//    1 /*
//    2  *  
//    3  *  
//    4  *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
//    5  */
//    6 #include  "common.h"
//    7 #include "include.h"
//    8 
//    9 //Flash命令宏定义，内部使用
//   10 #define   RD1BLK    0x00   // 读整块Flash
//   11 #define   RD1SEC    0x01   // 读整个扇区
//   12 #define   PGMCHK    0x02   // 写入检查
//   13 #define   RDRSRC    0x03   // 读目标数据
//   14 #define   PGM4      0x06   // 写入长字
//   15 #define   ERSBLK    0x08   // 擦除整块Flash
//   16 #define   ERSSCR    0x09   // 擦除Flash扇区
//   17 #define   PGMSEC    0x0B   // 写入扇区
//   18 #define   RD1ALL    0x40   // 读所有的块
//   19 #define   RDONCE    0x41   // 只读一次
//   20 #define   PGMONCE   0x43   // 只写一次
//   21 #define   ERSALL    0x44   // 擦除所有块
//   22 #define   VFYKEY    0x45   // 验证后门访问钥匙
//   23 #define   PGMPART   0x80   // 写入分区
//   24 #define   SETRAM    0x81   // 设定FlexRAM功能
//   25 
//   26 
//   27 //=================内部函数实现=============================================
//   28 
//   29 //==========================================================================
//   30 //函数名称：flash_cmd_launch
//   31 //函数返回：0-成功 1-失败
//   32 //参数说明：无
//   33 //功能概要：启动Flash命令
//   34 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   35 __RAMFUN static uint32 flash_cmd_launch(void)
//   36 {
//   37     
//   38     FTFL->FSTAT = 	(0
//   39 				  	|	FTFL_FSTAT_CCIF_MASK 		// 启动命令
//   40 					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
//   41 					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
//   42 					);	
flash_cmd_launch:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        MOVS     R1,#+176
        STRB     R1,[R0, #+0]
//   43     									
//   44     while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
??flash_cmd_launch_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??flash_cmd_launch_0
//   45 
//   46     // 检查错误标志
//   47     if( FTFL->FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        LDRB     R0,[R0, #+0]
        TST      R0,#0x31
        BEQ.N    ??flash_cmd_launch_1
//   48         return 1 ; 				//执行命令出错
        MOVS     R0,#+1
        B.N      ??flash_cmd_launch_2
//   49   
//   50     return 0; 					//执行命令成功
??flash_cmd_launch_1:
        MOVS     R0,#+0
??flash_cmd_launch_2:
        BX       LR               ;; return
//   51 }
//   52 
//   53 //===========================================================================
//   54 
//   55 //=================外部接口函数==============================================
//   56 //==========================================================================
//   57 //函数名称：flash_init
//   58 //函数返回：无
//   59 //参数说明：无
//   60 //功能概要：初始化flash模块
//   61 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   62 __RAMFUN void flash_init(void)
//   63 {
//   64 	// 清除Flash预读取缓冲区
//   65     FMC->PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
flash_init:
        LDR.N    R0,??DataTable4_1  ;; 0x4001f004
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x80000
        STR      R1,[R0, #+0]
//   66     FMC->PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
        LDR.N    R0,??DataTable4_2  ;; 0x4001f008
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x80000
        STR      R1,[R0, #+0]
//   67     
//   68     while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
??flash_init_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??flash_init_0
//   69     
//   70 	FTFL->FSTAT = 	(0
//   71 					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
//   72 					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
//   73 					);	
        MOVS     R1,#+48
        STRB     R1,[R0, #+0]
//   74 }
        BX       LR               ;; return
//   75 
//   76 //==========================================================================
//   77 //函数名称：flash_erase_sector
//   78 //函数返回：函数执行执行状态：0=正常；非0=异常。
//   79 //参数说明：sectorNo：扇区号（K60N512实际使用0~255）
//   80 //功能概要：擦除指定flash扇区
//   81 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//   82 __RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
//   83 {
flash_erase_sector:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
//   84     Dtype	addr;	
//   85 	addr.DW = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSLS     R0,R0,#+11
        STR      R0,[SP, #+0]
//   86     
//   87     //dest.word    = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
//   88 
//   89     // 设置擦除命令
//   90     FTFL->FCCOB0  = ERSSCR; // 擦除扇区命令
        LDR.N    R5,??DataTable4_3  ;; 0x40020007
        MOVS     R0,#+9
        STRB     R0,[R5, #+0]
//   91     
//   92     // 设置目标地址
//   93     FTFL->FCCOB1 = addr.B[2];
        LDR.N    R6,??DataTable4_4  ;; 0x40020006
        LDRB     R0,[SP, #+2]
        STRB     R0,[R6, #+0]
//   94     FTFL->FCCOB2 = addr.B[1];
        LDR.N    R7,??DataTable4_5  ;; 0x40020005
        LDRB     R0,[SP, #+1]
        STRB     R0,[R7, #+0]
//   95     FTFL->FCCOB3 = addr.B[0];
        LDR.W    R8,??DataTable4_6  ;; 0x40020004
        LDRB     R0,[SP, #+0]
        STRB     R0,[R8, #+0]
//   96     
//   97     // 执行命令序列
//   98     if(1 == flash_cmd_launch())    //若执行命令出现错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_0
//   99         return 1;     //擦除命令错误
        MOVS     R0,#+1
        B.N      ??flash_erase_sector_1
//  100    
//  101     // 若擦除sector0时，则解锁设备
//  102     if(sectorNo ==0)
??flash_erase_sector_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??flash_erase_sector_2
//  103     {
//  104         // 写入4字节
//  105         FTFL->FCCOB0 = PGM4; 
        MOVS     R0,#+6
        STRB     R0,[R5, #+0]
//  106         // 设置目标地址
//  107         FTFL->FCCOB1 = 0x00;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  108         FTFL->FCCOB2 = 0x04;
        MOVS     R0,#+4
        STRB     R0,[R7, #+0]
//  109         FTFL->FCCOB3 = 0x0C;
        MOVS     R0,#+12
        STRB     R0,[R8, #+0]
//  110         // 数据
//  111         FTFL->FCCOB4 = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  112         FTFL->FCCOB5 = 0xFF;
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  113         FTFL->FCCOB6 = 0xFF;
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  114         FTFL->FCCOB7 = 0xFE;
        MOVS     R0,#+254
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  115         // 执行命令序列
//  116         if(1 == flash_cmd_launch())  //若执行命令出现错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_2
//  117             return 2;   //解锁命令错误
        MOVS     R0,#+2
        B.N      ??flash_erase_sector_1
//  118     }  
//  119     
//  120     return 0;  //成功返回
??flash_erase_sector_2:
        MOVS     R0,#+0
??flash_erase_sector_1:
        POP      {R1,R2,R4-R8,PC}  ;; return
//  121 }
//  122 
//  123 //==========================================================================
//  124 //函数名称：flash_write
//  125 //函数返回：函数执行状态：0=正常；非0=异常。
//  126 //参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  127 //         offset:写入扇区内部偏移地址（0~2043）
//  128 //         cnt：写入字节数目（0~2043）
//  129 //         buf：源数据缓冲区首地址
//  130 //功能概要：flash写入操作
//  131 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  132 __RAMFUN uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
//  133 {
flash_write:
        PUSH     {R2-R6,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//  134 	Dtype	addr;	
//  135     Dtype	Data;
//  136 	
//  137 	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+4
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BEQ.N    ??flash_write_0
        MOVS     R1,#+137
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  138 									//此处提示警告，但是安全的……
//  139 	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_0:
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+2049
        CMP      R0,R1
        BLT.N    ??flash_write_1
        MOVS     R1,#+139
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  140 									//此处提示警告，但是安全的……
//  141 	
//  142     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R5,R5,#+11
        UXTAH    R0,R5,R6
        STR      R0,[SP, #+4]
//  143 	Data.DW	= data;	
        STR      R4,[SP, #+0]
//  144 	    
//  145         FTFL->FCCOB0 = PGM4;				// 设置写入命令
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  146 
//  147 	FTFL->FCCOB1 = addr.B[2];		// 设置目标地址
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  148 	FTFL->FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  149 	FTFL->FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+4]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  150 
//  151 
//  152 	FTFL->FCCOB4 = Data.B[3];        // 设置写入数据
        LDRB     R0,[SP, #+3]
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  153 	FTFL->FCCOB5 = Data.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  154 	FTFL->FCCOB6 = Data.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  155 	FTFL->FCCOB7 = Data.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  156 	
//  157 	if(1 == flash_cmd_launch()) 	return 2;  //写入命令错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_2
        MOVS     R0,#+2
        B.N      ??flash_write_3
//  158 
//  159     return 0;  //成功执行
??flash_write_2:
        MOVS     R0,#+0
??flash_write_3:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  160 }
//  161 
//  162 
//  163 //==========================================================================
//  164 //函数名称：flash_write
//  165 //函数返回：函数执行状态：0=正常；非0=异常。
//  166 //参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  167 //         offset:写入扇区内部偏移地址（0~2043）
//  168 //         cnt：写入字节数目（0~2043）
//  169 //         buf：源数据缓冲区首地址
//  170 //功能概要：flash写入操作
//  171 //==========================================================================

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  172 __RAMFUN uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
//  173 {
flash_write_buf:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  174     uint32 size;
//  175  
//  176 	Dtype	addr;	
//  177     
//  178 	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+4
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BEQ.N    ??flash_write_buf_0
        MOVS     R1,#+178
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  179 									//此处提示警告，但是安全的……
//  180 	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_buf_0:
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+2049
        CMP      R0,R1
        BLT.N    ??flash_write_buf_1
        MOVS     R1,#+180
        LDR.N    R0,??DataTable4_11
        BL       assert_failed
//  181 									//此处提示警告，但是安全的……
//  182 	
//  183     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_buf_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R6,R6,#+11
        UXTAH    R0,R6,R7
        STR      R0,[SP, #+0]
//  184 	
//  185     // 设置写入命令
//  186     FTFL->FCCOB0 = PGM4;
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  187 
//  188     for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
        MOVS     R6,#+0
        B.N      ??flash_write_buf_2
??flash_write_buf_3:
        ADDS     R6,R6,#+4
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+4
        STR      R0,[SP, #+0]
        ADDS     R5,R5,#+4
??flash_write_buf_2:
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R6,R0
        BCS.N    ??flash_write_buf_4
//  189     {
//  190         
//  191         FTFL->FCCOB1 = addr.B[2];						// 设置目标地址
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  192         FTFL->FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  193         FTFL->FCCOB3 = addr.B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  194  
//  195         FTFL->FCCOB4 = buf[3];							// 拷贝数据
        LDRB     R0,[R5, #+3]
        LDR.N    R1,??DataTable4_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  196         FTFL->FCCOB5 = buf[2];
        LDRB     R0,[R5, #+2]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  197         FTFL->FCCOB6  = buf[1];
        LDRB     R0,[R5, #+1]
        LDR.N    R1,??DataTable4_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  198         FTFL->FCCOB7 = buf[0];
        LDRB     R0,[R5, #+0]
        LDR.N    R1,??DataTable4_10  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  199         
//  200         if(1 == flash_cmd_launch()) 
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_buf_3
//  201             return 2;  									//写入命令错误
        MOVS     R0,#+2
        B.N      ??flash_write_buf_5
//  202     }
//  203     
//  204     return 0;  //成功执行
??flash_write_buf_4:
        MOVS     R0,#+0
??flash_write_buf_5:
        POP      {R1,R4-R7,PC}    ;; return
//  205 }

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4:
        DATA32
        DC32     0x40020000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_1:
        DATA32
        DC32     0x4001f004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_2:
        DATA32
        DC32     0x4001f008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_3:
        DATA32
        DC32     0x40020007

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_4:
        DATA32
        DC32     0x40020006

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_5:
        DATA32
        DC32     0x40020005

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_6:
        DATA32
        DC32     0x40020004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_7:
        DATA32
        DC32     0x4002000b

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_8:
        DATA32
        DC32     0x4002000a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_9:
        DATA32
        DC32     0x40020009

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_10:
        DATA32
        DC32     0x40020008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_11:
        DATA32
        DC32     ?_0
//  206 
//  207 
//  208 
//  209 
//  210 //==========================================================================
//  211 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void Delayms(uint16 ms)
//  213 {                         
Delayms:
        B.N      ??Delayms_0
//  214   uint16 a;
//  215   while(ms)
//  216   {
//  217     a=1335;
??Delayms_1:
        MOVW     R2,#+1335
//  218     while(a--);
??Delayms_2:
        MOVS     R1,R2
        SUBS     R2,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??Delayms_2
//  219     ms--;
        SUBS     R0,R0,#+1
//  220   }
??Delayms_0:
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??Delayms_1
//  221   return;
        BX       LR               ;; return
//  222 }
//  223 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 void DFlash_Write_Float(uint16 Block_Now,uint32 Order,float Write_Float)   
//  225 {
DFlash_Write_Float:
        PUSH     {R7,LR}
//  226 
//  227   union
//  228   {
//  229     float Temp_Data;
//  230     uint32 Data_Part;
//  231   }_Float_;
//  232   
//  233   _Float_.Temp_Data=Write_Float;
//  234   flash_write(Block_Now,Order,_Float_.Data_Part);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       flash_write
//  235 
//  236   
//  237 }
        POP      {R0,PC}          ;; return
//  238 
//  239 /*-----------------*DFLASH读取浮点数*-----------------*/
//  240 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 float DFlash_Read_Float(uint16 Block_Now,uint32 Order)
//  242 {
//  243   union
//  244   {
//  245     float Temp_Data;
//  246     uint32 Data_Part;
//  247   }_Float_;
//  248   
//  249   _Float_.Data_Part=flash_read(Block_Now,Order,uint32);
DFlash_Read_Float:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADDS     R1,R1,R0, LSL #+11
        LDR      R0,[R1, #+0]
//  250 
//  251   return(_Float_.Temp_Data);
        BX       LR               ;; return
//  252 }
//  253     
//  254 /*---------------------*DFLASH写整数*---------------------*/ 
//  255     
//  256 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 void DFlash_Write_Int(uint16 Block_Now,uint16 Order,int16 Write_Int)   
//  258 {
DFlash_Write_Int:
        PUSH     {R7,LR}
//  259   flash_write(Block_Now,Order*4,Write_Int);
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R1,R1,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       flash_write
//  260 }
        POP      {R0,PC}          ;; return
//  261 /*---------------------*DFLASH读整数*---------------------*/ 
//  262 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 int16 DFlash_Read_Int(uint16 Block_Now,uint16 Order)
//  264 {
//  265   return flash_read(Block_Now,Order*4,uint32);
DFlash_Read_Int:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSLS     R0,R0,#+11
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  266 }
//  267 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  268 void User_Flash_Write(void)//写flash
//  269 {
User_Flash_Write:
        PUSH     {R7,LR}
//  270   flash_erase_sector(UserSectorBegin);
        MOVS     R0,#+200
        BL       flash_erase_sector
//  271   Delayms(500);
        MOV      R0,#+500
        BL       Delayms
//  272   flash_erase_sector(UserSectorEnd);
        MOVS     R0,#+201
        BL       flash_erase_sector
//  273   Delayms(500);
        MOV      R0,#+500
        BL       Delayms
//  274 
//  275 //  DFlash_Write_Int(UserSectorBegin,0, setMaxIndLeft);
//  276 //  DFlash_Write_Int(UserSectorBegin,16,setMaxIndRight);
//  277 //  DFlash_Write_Int(UserSectorBegin,32,setMaxIndMid);
//  278 //  IndModel = 1;
//  279 //  DFlash_Write_Int(UserSectorBegin,48,(int16)IndModel);
//  280 }
        POP      {R0,PC}          ;; return
//  281 
//  282 
//  283 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  284 void User_Flash_Read(void)//读flash
//  285 {
User_Flash_Read:
        PUSH     {R7,LR}
//  286   Delayms(500);
        MOV      R0,#+500
        BL       Delayms
//  287 //  setMaxIndLeft             = DFlash_Read_Int(UserSectorBegin,0);    
//  288 //  setMaxIndRight            = DFlash_Read_Int(UserSectorBegin,16);
//  289 //  setMaxIndMid              = DFlash_Read_Int(UserSectorBegin,32);
//  290 //  IndModel                  = (uint8)DFlash_Read_Int(UserSectorBegin,48);
//  291 //  ImgThreshold              = DFlash_Read_Int(UserSectorBegin2,0);
//  292 }
        POP      {R0,PC}          ;; return
//  293 
//  294 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  295 void User_Flash_WriteClear(void)
//  296 {
//  297 //  setMaxIndLeft = 0;
//  298 //  setMaxIndRight = 0;
//  299 //  setMaxIndMid = 0;
//  300 //  IndModel = 0;
//  301 //  
//  302 //  flash_erase_sector(UserSectorBegin);
//  303 //  Delayms(500);
//  304 //  flash_erase_sector(UserSectorEnd);
//  305 //  Delayms(500);
//  306 //
//  307 //  DFlash_Write_Int(UserSectorBegin,0, setMaxIndLeft);
//  308 //  DFlash_Write_Int(UserSectorBegin,16,setMaxIndRight);
//  309 //  DFlash_Write_Int(UserSectorBegin,32,setMaxIndMid);
//  310 //  DFlash_Write_Int(UserSectorBegin,48,(int16)IndModel);
//  311 }
User_Flash_WriteClear:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "G:\\AIcar\\\344\277\241\346\240\207\\k60_144\\smartcar\\lib\\Jay\\flash.c"
        DC8 0, 0, 0

        END
// 
//  52 bytes in section .rodata
// 130 bytes in section .text
// 534 bytes in section .textrw
// 
// 664 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: 10
