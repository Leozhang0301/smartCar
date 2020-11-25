/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef _IMG_H
#define _IMG_H

#define IMG_TOP        10      //图像顶端 一米处，根据摄像头实际距离确认
#define IMG_BOTTOM     69      //图像底端
#define IMG_LEFT       1       //图像左端
#define IMG_RIGHT      158     //图像右端
#define IMG_COL_CENTER 79      //图像中端
#define IMG_BEGIN      55
#define FWD_40CM       28
#define FWD_45CM       26
#define FWD_60CM       22
#define FWD_30CM       35

enum RING
{
      PREIN = 1,
      IN,               //圆环标志位
      INSIDE,           //圆环入口
      OUT,              //圆环出口
      OUTSIDE,          //圆环内
      REIN              //重复进环岛
};


extern int16 FastVal;
extern int16 img_error;


extern int16 img_centers[IMG_ROWS];
extern int16 get_img_error();
void get_img_center(void);
#endif