/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef __PIT_INIT_H__
#define __PIT_INIT_H__

extern uint8 isRun;
extern uint8 isStop;
extern uint32 Secs;
extern uint8 isCountSec;

enum RunModel
{
      Run_Init=0, Run_Wait, Run_Boot, Run_Forward, Run_Back, Run_Stop
};

void pit0_init(void);
void Isr(void);










#endif