#ifndef _pit_H_
#define _pit_H_


extern void pit1_init(void);
extern void pit1_isr(void);
extern  PIT_InitTypeDef pit1_init_struct;
extern int a;

void ic_init();
void pit_init();
void ic_isr();

extern int P1,P2,P3,P4;
extern boolean CCD_TIME_OPEN;
extern float LC;
extern float RC;
extern float K;

extern boolean CCD_CTL_OPEN;
extern boolean LuBang;
extern boolean sctl;
extern boolean cctl;
#endif