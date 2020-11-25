/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
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
extern uint8 fieldCnt;//������
typedef enum
{
    IMG_NOTINIT = 0,
    IMG_FINISH,             //ͼ��ɼ����
    IMG_FAIL,               //ͼ��ɼ�ʧ��(�ɼ���������)
    IMG_GATHER,             //ͼ��ɼ���
    IMG_START,              //��ʼ�ɼ�ͼ��
    IMG_STOP,               //��ֹͼ��ɼ�
} IMG_STATUS_e;

#endif 
