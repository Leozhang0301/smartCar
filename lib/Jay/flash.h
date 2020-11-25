/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef _FLASH_H_
#define _FLASH_H_

//k60N512包含512K的程序Flash
//512K的程序Flash分为256个扇区，每个扇区2K大小
//K60X256包含256K的程序Flash
//512K的程序Flash分为128个扇区，每个扇区2K大小
//    sector（2K）为擦除最小单位
//    长字（32b）为写的最小单位

__RAMFUN	void 	flash_init();													//擦除指定flash扇区

__RAMFUN 	uint8 	flash_erase_sector	(uint16 sectorNo);									//擦除指定flash扇区
__RAMFUN 	uint8 	flash_write		(uint16 sectorNo,uint16 offset,uint32 data);						//写入flash操作
__RAMFUN 	uint8 	flash_write_buf		(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[]);					//从缓存区写入flash操作

#define		flash_read(sectorNo,offset,type)		(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//读取扇区
#define DFLASHN 64
#define UserSectorBegin  200
#define UserSectorEnd    201
#define UserSectorBegin2 202
#define UserSectorEnd2   203

void DFlash_Write_Float(uint16 Block_Now,uint32 Order,float Write_Float);
float DFlash_Read_Float(uint16 Block_Now,uint32 Order);
void DFlash_Write_Int(uint16 Block_Now,uint16 Order,int16 Write_Int);
int16 DFlash_Read_Int(uint16 Block_Now,uint16 Order);
void User_Flash_Write(void);//写flash
void User_Flash_Read(void);//读flash
void User_Flash_ImgThresholdWrite(void);
void User_Flash_WriteClear(void);//清空参数
#endif