#ifndef _ADC_H_
#define _ADC_H_

extern int16 setMaxIndLeft;
extern int16 setMaxIndRight;
extern int16 setMaxIndMid;
extern uint8 IndModel;// 0代表限定值AD归一，1代表采集最大值归一
extern uint8 isGetInd;
extern int16 ind_error;
extern int16 ind1_left_val;
extern int16 ind1_right_val;
extern int16 ind_center_val;
extern int16 ind_sum_val;


void ADC_Init(void);
void get_adc_val(void);
void get_ind_error(void);
void get_ind_range(void);






#endif