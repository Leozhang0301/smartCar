/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"

//Flash命令宏定义，内部使用
#define   RD1BLK    0x00   // 读整块Flash
#define   RD1SEC    0x01   // 读整个扇区
#define   PGMCHK    0x02   // 写入检查
#define   RDRSRC    0x03   // 读目标数据
#define   PGM4      0x06   // 写入长字
#define   ERSBLK    0x08   // 擦除整块Flash
#define   ERSSCR    0x09   // 擦除Flash扇区
#define   PGMSEC    0x0B   // 写入扇区
#define   RD1ALL    0x40   // 读所有的块
#define   RDONCE    0x41   // 只读一次
#define   PGMONCE   0x43   // 只写一次
#define   ERSALL    0x44   // 擦除所有块
#define   VFYKEY    0x45   // 验证后门访问钥匙
#define   PGMPART   0x80   // 写入分区
#define   SETRAM    0x81   // 设定FlexRAM功能


//=================内部函数实现=============================================

//==========================================================================
//函数名称：flash_cmd_launch
//函数返回：0-成功 1-失败
//参数说明：无
//功能概要：启动Flash命令
//==========================================================================
__RAMFUN static uint32 flash_cmd_launch(void)
{
    
    FTFL->FSTAT = 	(0
				  	|	FTFL_FSTAT_CCIF_MASK 		// 启动命令
					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
					);	
    									
    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成

    // 检查错误标志
    if( FTFL->FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 				//执行命令出错
  
    return 0; 					//执行命令成功
}

//===========================================================================

//=================外部接口函数==============================================
//==========================================================================
//函数名称：flash_init
//函数返回：无
//参数说明：无
//功能概要：初始化flash模块
//==========================================================================
__RAMFUN void flash_init(void)
{
	// 清除Flash预读取缓冲区
    FMC->PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC->PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
    
	FTFL->FSTAT = 	(0
					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
					);	
}

//==========================================================================
//函数名称：flash_erase_sector
//函数返回：函数执行执行状态：0=正常；非0=异常。
//参数说明：sectorNo：扇区号（K60N512实际使用0~255）
//功能概要：擦除指定flash扇区
//==========================================================================
__RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
	addr.DW = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
    
    //dest.word    = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 

    // 设置擦除命令
    FTFL->FCCOB0  = ERSSCR; // 擦除扇区命令
    
    // 设置目标地址
    FTFL->FCCOB1 = addr.B[2];
    FTFL->FCCOB2 = addr.B[1];
    FTFL->FCCOB3 = addr.B[0];
    
    // 执行命令序列
    if(1 == flash_cmd_launch())    //若执行命令出现错误
        return 1;     //擦除命令错误
   
    // 若擦除sector0时，则解锁设备
    if(sectorNo ==0)
    {
        // 写入4字节
        FTFL->FCCOB0 = PGM4; 
        // 设置目标地址
        FTFL->FCCOB1 = 0x00;
        FTFL->FCCOB2 = 0x04;
        FTFL->FCCOB3 = 0x0C;
        // 数据
        FTFL->FCCOB4 = 0xFF;
        FTFL->FCCOB5 = 0xFF;
        FTFL->FCCOB6 = 0xFF;
        FTFL->FCCOB7 = 0xFE;
        // 执行命令序列
        if(1 == flash_cmd_launch())  //若执行命令出现错误
            return 2;   //解锁命令错误
    }  
    
    return 0;  //成功返回
}

//==========================================================================
//函数名称：flash_write
//函数返回：函数执行状态：0=正常；非0=异常。
//参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//         offset:写入扇区内部偏移地址（0~2043）
//         cnt：写入字节数目（0~2043）
//         buf：源数据缓冲区首地址
//功能概要：flash写入操作
//==========================================================================
__RAMFUN uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
	Dtype	addr;	
    Dtype	Data;
	
	ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
									//此处提示警告，但是安全的……
	ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
									//此处提示警告，但是安全的……
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
	Data.DW	= data;	
	    
        FTFL->FCCOB0 = PGM4;				// 设置写入命令

	FTFL->FCCOB1 = addr.B[2];		// 设置目标地址
	FTFL->FCCOB2 = addr.B[1];
	FTFL->FCCOB3 = addr.B[0];


	FTFL->FCCOB4 = Data.B[3];        // 设置写入数据
	FTFL->FCCOB5 = Data.B[2];
	FTFL->FCCOB6 = Data.B[1];
	FTFL->FCCOB7 = Data.B[0];
	
	if(1 == flash_cmd_launch()) 	return 2;  //写入命令错误

    return 0;  //成功执行
}


//==========================================================================
//函数名称：flash_write
//函数返回：函数执行状态：0=正常；非0=异常。
//参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//         offset:写入扇区内部偏移地址（0~2043）
//         cnt：写入字节数目（0~2043）
//         buf：源数据缓冲区首地址
//功能概要：flash写入操作
//==========================================================================
__RAMFUN uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
{
    uint32 size;
 
	Dtype	addr;	
    
	 ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
									//此处提示警告，但是安全的……
	 ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
									//此处提示警告，但是安全的……
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
	
    // 设置写入命令
    FTFL->FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
    {
        
        FTFL->FCCOB1 = addr.B[2];						// 设置目标地址
        FTFL->FCCOB2 = addr.B[1];
        FTFL->FCCOB3 = addr.B[0];
 
        FTFL->FCCOB4 = buf[3];							// 拷贝数据
        FTFL->FCCOB5 = buf[2];
        FTFL->FCCOB6  = buf[1];
        FTFL->FCCOB7 = buf[0];
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//写入命令错误
    }
    
    return 0;  //成功执行
}




//==========================================================================

void Delayms(uint16 ms)
{                         
  uint16 a;
  while(ms)
  {
    a=1335;
    while(a--);
    ms--;
  }
  return;
}

void DFlash_Write_Float(uint16 Block_Now,uint32 Order,float Write_Float)   
{

  union
  {
    float Temp_Data;
    uint32 Data_Part;
  }_Float_;
  
  _Float_.Temp_Data=Write_Float;
  flash_write(Block_Now,Order,_Float_.Data_Part);

  
}

/*-----------------*DFLASH读取浮点数*-----------------*/

float DFlash_Read_Float(uint16 Block_Now,uint32 Order)
{
  union
  {
    float Temp_Data;
    uint32 Data_Part;
  }_Float_;
  
  _Float_.Data_Part=flash_read(Block_Now,Order,uint32);

  return(_Float_.Temp_Data);
}
    
/*---------------------*DFLASH写整数*---------------------*/ 
    

void DFlash_Write_Int(uint16 Block_Now,uint16 Order,int16 Write_Int)   
{
  flash_write(Block_Now,Order*4,Write_Int);
}
/*---------------------*DFLASH读整数*---------------------*/ 

int16 DFlash_Read_Int(uint16 Block_Now,uint16 Order)
{
  return flash_read(Block_Now,Order*4,uint32);
}

void User_Flash_Write(void)//写flash
{
  flash_erase_sector(UserSectorBegin);
  Delayms(500);
  flash_erase_sector(UserSectorEnd);
  Delayms(500);

//  DFlash_Write_Int(UserSectorBegin,0, setMaxIndLeft);
//  DFlash_Write_Int(UserSectorBegin,16,setMaxIndRight);
//  DFlash_Write_Int(UserSectorBegin,32,setMaxIndMid);
//  IndModel = 1;
//  DFlash_Write_Int(UserSectorBegin,48,(int16)IndModel);
}



void User_Flash_Read(void)//读flash
{
  Delayms(500);
//  setMaxIndLeft             = DFlash_Read_Int(UserSectorBegin,0);    
//  setMaxIndRight            = DFlash_Read_Int(UserSectorBegin,16);
//  setMaxIndMid              = DFlash_Read_Int(UserSectorBegin,32);
//  IndModel                  = (uint8)DFlash_Read_Int(UserSectorBegin,48);
//  ImgThreshold              = DFlash_Read_Int(UserSectorBegin2,0);
}


void User_Flash_WriteClear(void)
{
//  setMaxIndLeft = 0;
//  setMaxIndRight = 0;
//  setMaxIndMid = 0;
//  IndModel = 0;
//  
//  flash_erase_sector(UserSectorBegin);
//  Delayms(500);
//  flash_erase_sector(UserSectorEnd);
//  Delayms(500);
//
//  DFlash_Write_Int(UserSectorBegin,0, setMaxIndLeft);
//  DFlash_Write_Int(UserSectorBegin,16,setMaxIndRight);
//  DFlash_Write_Int(UserSectorBegin,32,setMaxIndMid);
//  DFlash_Write_Int(UserSectorBegin,48,(int16)IndModel);
}
