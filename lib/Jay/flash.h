/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#ifndef _FLASH_H_
#define _FLASH_H_

//k60N512����512K�ĳ���Flash
//512K�ĳ���Flash��Ϊ256��������ÿ������2K��С
//K60X256����256K�ĳ���Flash
//512K�ĳ���Flash��Ϊ128��������ÿ������2K��С
//    sector��2K��Ϊ������С��λ
//    ���֣�32b��Ϊд����С��λ

__RAMFUN	void 	flash_init();													//����ָ��flash����

__RAMFUN 	uint8 	flash_erase_sector	(uint16 sectorNo);									//����ָ��flash����
__RAMFUN 	uint8 	flash_write		(uint16 sectorNo,uint16 offset,uint32 data);						//д��flash����
__RAMFUN 	uint8 	flash_write_buf		(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[]);					//�ӻ�����д��flash����

#define		flash_read(sectorNo,offset,type)		(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//��ȡ����
#define DFLASHN 64
#define UserSectorBegin  200
#define UserSectorEnd    201
#define UserSectorBegin2 202
#define UserSectorEnd2   203

void DFlash_Write_Float(uint16 Block_Now,uint32 Order,float Write_Float);
float DFlash_Read_Float(uint16 Block_Now,uint32 Order);
void DFlash_Write_Int(uint16 Block_Now,uint16 Order,int16 Write_Int);
int16 DFlash_Read_Int(uint16 Block_Now,uint16 Order);
void User_Flash_Write(void);//дflash
void User_Flash_Read(void);//��flash
void User_Flash_ImgThresholdWrite(void);
void User_Flash_WriteClear(void);//��ղ���
#endif