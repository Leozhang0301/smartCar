/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef __DEV_SCCB_H__
#define __DEV_SCCB_H__


#define SCL_H()         PTA12_O = 1  
#define SCL_L()         PTA12_O = 0
#define SCL_DDR_OUT()   DDRA12 = 1
#define SCL_DDR_IN()    DDRA12 = 0

#define SDA_H()         PTA13_O  = 1
#define SDA_L()         PTA13_O  = 0
#define SDA_IN()        PTA13_I 
#define SDA_DDR_OUT()   DDRA13 = 1
#define SDA_DDR_IN()    DDRA13 = 0

#define ADDR_OV7725   0x42

#define DEV_ADR  ADDR_OV7725             /*设备地址定义*/

#define SCCB_DELAY()    SCCB_delay(400)


extern void SCCB_GPIO_init(void);
extern int SCCB_WriteByte( uint16 WriteAddress , uint8 SendByte);
extern int SCCB_ReadByte(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress);


#endif      
