/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#ifndef _IMG_H
#define _IMG_H

#define IMG_TOP        10      //ͼ�񶥶� һ�״�����������ͷʵ�ʾ���ȷ��
#define IMG_BOTTOM     69      //ͼ��׶�
#define IMG_LEFT       1       //ͼ�����
#define IMG_RIGHT      158     //ͼ���Ҷ�
#define IMG_COL_CENTER 79      //ͼ���ж�
#define IMG_BEGIN      55
#define FWD_40CM       28
#define FWD_45CM       26
#define FWD_60CM       22
#define FWD_30CM       35

enum RING
{
      PREIN = 1,
      IN,               //Բ����־λ
      INSIDE,           //Բ�����
      OUT,              //Բ������
      OUTSIDE,          //Բ����
      REIN              //�ظ�������
};


extern int16 FastVal;
extern int16 img_error;


extern int16 img_centers[IMG_ROWS];
extern int16 get_img_error();
void get_img_center(void);
#endif