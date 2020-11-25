#ifndef __FINDTRACK_H__
#define __FINDTRACK_H__

//#define WHITE 255        //宏定义白
//#define BLACK 0          //宏定义黑

void ifpass(void);
void find_next(void);
void findtrack(void);
void cheak(void);
int Calculate();
int target_offset(int y);
void wheel_EDS(int speed);

extern int16 i_max; //判断提前拐弯
extern int16 i_min; //判断提前拐弯
extern int16 offset; //目标偏移量
extern float offset_k;  //系数

extern boolean lamp_pass;
extern boolean back ;
extern int WHITE_SUM ;
extern int BLACK_PICTURE;
extern int MIDDLE_I;
extern int MIDDLE_J;

extern int GO;
extern int EDS;
#endif