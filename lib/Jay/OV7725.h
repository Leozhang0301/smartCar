/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef __OV7725_H__
#define __OV7725_H__


#define IMG_ROWS 60
#define IMG_COLS 80

#define pixels   600
#define BLACK    0x00
#define WHITE    0xff

extern uint16 ImgThreshold;
extern uint16 GrayValue;
extern uint8 Pix_Data0[pixels];
extern uint8 Pix_Data1[pixels];
extern uint8 imgbuff[IMG_ROWS][IMG_COLS];


void img_extract(uint8 *dst, uint8 *src, uint32);
void get_img(void);
void Camera_Init(void);
void Unzip(uint8 index,uint16 srcLen);
void img_display(void);
void delay(void);
extern uint8 DMA_flag;
extern uint8 fieldCnt;//场计数
typedef enum
{
    IMG_NOTINIT = 0,
    IMG_FINISH,             //图像采集完毕
    IMG_FAIL,               //图像采集失败(采集行数少了)
    IMG_GATHER,             //图像采集中
    IMG_START,              //开始采集图像
    IMG_STOP,               //禁止图像采集
} IMG_STATUS_e;

#endif 
