#ifndef __FINDTRACK_H__
#define __FINDTRACK_H__

//#define WHITE 255        //�궨���
//#define BLACK 0          //�궨���

void ifpass(void);
void find_next(void);
void findtrack(void);
void cheak(void);
int Calculate();
int target_offset(int y);
void wheel_EDS(int speed);

extern int16 i_max; //�ж���ǰ����
extern int16 i_min; //�ж���ǰ����
extern int16 offset; //Ŀ��ƫ����
extern float offset_k;  //ϵ��

extern boolean lamp_pass;
extern boolean back ;
extern int WHITE_SUM ;
extern int BLACK_PICTURE;
extern int MIDDLE_I;
extern int MIDDLE_J;

extern int GO;
extern int EDS;
#endif