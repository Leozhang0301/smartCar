/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#include  "common.h"
#include "include.h"

//Flash����궨�壬�ڲ�ʹ��
#define   RD1BLK    0x00   // ������Flash
#define   RD1SEC    0x01   // ����������
#define   PGMCHK    0x02   // д����
#define   RDRSRC    0x03   // ��Ŀ������
#define   PGM4      0x06   // д�볤��
#define   ERSBLK    0x08   // ��������Flash
#define   ERSSCR    0x09   // ����Flash����
#define   PGMSEC    0x0B   // д������
#define   RD1ALL    0x40   // �����еĿ�
#define   RDONCE    0x41   // ֻ��һ��
#define   PGMONCE   0x43   // ֻдһ��
#define   ERSALL    0x44   // �������п�
#define   VFYKEY    0x45   // ��֤���ŷ���Կ��
#define   PGMPART   0x80   // д�����
#define   SETRAM    0x81   // �趨FlexRAM����


//=================�ڲ�����ʵ��=============================================

//==========================================================================
//�������ƣ�flash_cmd_launch
//�������أ�0-�ɹ� 1-ʧ��
//����˵������
//���ܸ�Ҫ������Flash����
//==========================================================================
__RAMFUN static uint32 flash_cmd_launch(void)
{
    
    FTFL->FSTAT = 	(0
				  	|	FTFL_FSTAT_CCIF_MASK 		// ��������
					|	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
					| 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
					);	
    									
    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������

    // �������־
    if( FTFL->FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 				//ִ���������
  
    return 0; 					//ִ������ɹ�
}

//===========================================================================

//=================�ⲿ�ӿں���==============================================
//==========================================================================
//�������ƣ�flash_init
//�������أ���
//����˵������
//���ܸ�Ҫ����ʼ��flashģ��
//==========================================================================
__RAMFUN void flash_init(void)
{
	// ���FlashԤ��ȡ������
    FMC->PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC->PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������
    
	FTFL->FSTAT = 	(0
					|	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
					| 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
					);	
}

//==========================================================================
//�������ƣ�flash_erase_sector
//�������أ�����ִ��ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo�������ţ�K60N512ʵ��ʹ��0~255��
//���ܸ�Ҫ������ָ��flash����
//==========================================================================
__RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
	addr.DW = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 
    
    //dest.word    = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 

    // ���ò�������
    FTFL->FCCOB0  = ERSSCR; // ������������
    
    // ����Ŀ���ַ
    FTFL->FCCOB1 = addr.B[2];
    FTFL->FCCOB2 = addr.B[1];
    FTFL->FCCOB3 = addr.B[0];
    
    // ִ����������
    if(1 == flash_cmd_launch())    //��ִ��������ִ���
        return 1;     //�����������
   
    // ������sector0ʱ��������豸
    if(sectorNo ==0)
    {
        // д��4�ֽ�
        FTFL->FCCOB0 = PGM4; 
        // ����Ŀ���ַ
        FTFL->FCCOB1 = 0x00;
        FTFL->FCCOB2 = 0x04;
        FTFL->FCCOB3 = 0x0C;
        // ����
        FTFL->FCCOB4 = 0xFF;
        FTFL->FCCOB5 = 0xFF;
        FTFL->FCCOB6 = 0xFF;
        FTFL->FCCOB7 = 0xFE;
        // ִ����������
        if(1 == flash_cmd_launch())  //��ִ��������ִ���
            return 2;   //�����������
    }  
    
    return 0;  //�ɹ�����
}

//==========================================================================
//�������ƣ�flash_write
//�������أ�����ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//         cnt��д���ֽ���Ŀ��0~2043��
//         buf��Դ���ݻ������׵�ַ
//���ܸ�Ҫ��flashд�����
//==========================================================================
__RAMFUN uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
	Dtype	addr;	
    Dtype	Data;
	
	ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
									//�˴���ʾ���棬���ǰ�ȫ�ġ���
	ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
									//�˴���ʾ���棬���ǰ�ȫ�ġ���
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
	Data.DW	= data;	
	    
        FTFL->FCCOB0 = PGM4;				// ����д������

	FTFL->FCCOB1 = addr.B[2];		// ����Ŀ���ַ
	FTFL->FCCOB2 = addr.B[1];
	FTFL->FCCOB3 = addr.B[0];


	FTFL->FCCOB4 = Data.B[3];        // ����д������
	FTFL->FCCOB5 = Data.B[2];
	FTFL->FCCOB6 = Data.B[1];
	FTFL->FCCOB7 = Data.B[0];
	
	if(1 == flash_cmd_launch()) 	return 2;  //д���������

    return 0;  //�ɹ�ִ��
}


//==========================================================================
//�������ƣ�flash_write
//�������أ�����ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//         cnt��д���ֽ���Ŀ��0~2043��
//         buf��Դ���ݻ������׵�ַ
//���ܸ�Ҫ��flashд�����
//==========================================================================
__RAMFUN uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
{
    uint32 size;
 
	Dtype	addr;	
    
	 ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
									//�˴���ʾ���棬���ǰ�ȫ�ġ���
	 ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
									//�˴���ʾ���棬���ǰ�ȫ�ġ���
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
	
    // ����д������
    FTFL->FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
    {
        
        FTFL->FCCOB1 = addr.B[2];						// ����Ŀ���ַ
        FTFL->FCCOB2 = addr.B[1];
        FTFL->FCCOB3 = addr.B[0];
 
        FTFL->FCCOB4 = buf[3];							// ��������
        FTFL->FCCOB5 = buf[2];
        FTFL->FCCOB6  = buf[1];
        FTFL->FCCOB7 = buf[0];
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//д���������
    }
    
    return 0;  //�ɹ�ִ��
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

/*-----------------*DFLASH��ȡ������*-----------------*/

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
    
/*---------------------*DFLASHд����*---------------------*/ 
    

void DFlash_Write_Int(uint16 Block_Now,uint16 Order,int16 Write_Int)   
{
  flash_write(Block_Now,Order*4,Write_Int);
}
/*---------------------*DFLASH������*---------------------*/ 

int16 DFlash_Read_Int(uint16 Block_Now,uint16 Order)
{
  return flash_read(Block_Now,Order*4,uint32);
}

void User_Flash_Write(void)//дflash
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



void User_Flash_Read(void)//��flash
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
