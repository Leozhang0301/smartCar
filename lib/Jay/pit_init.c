/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"

#define delayStart 1
PIT_InitTypeDef pit0_init_struct;

uint8 isCountSec = 1;
uint8 isRun = Run_Init;//车辆开关
uint8 isStop = Run_Init;
uint32 Secs = 888;
void pit0_init(void)
{
  nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 3;
  nvic_init_struct.NVIC_IRQChannelSubPriority        = 2;
  LPLD_NVIC_Init(nvic_init_struct);
  
  pit0_init_struct.PIT_Pitx = PIT0;
  pit0_init_struct.PIT_PeriodMs = 2;     //定时周期2毫秒,500个周期等于1秒
  pit0_init_struct.PIT_Isr =Isr;  //设置中断函数
  LPLD_PIT_Init(pit0_init_struct);  
  LPLD_PIT_EnableIrq(pit0_init_struct);
}

void Counter(uint32 *s)
{
  static uint32 Ms_Cnt = 0;
  
  Ms_Cnt++;
  if(Ms_Cnt > 500)
  { 
    (*s)++;
    Ms_Cnt = 0;
  }
}

void CarJoinCounter(uint32 *s)
{
  static uint32 CJ_Cnt = 0;
  
  CJ_Cnt++;
  if(CJ_Cnt > 500)
  {
    (*s)++;
    CJ_Cnt = 0;
  }
}




void Run(void)
{
  static uint32 cnt = 0;
  static uint8 CarStart = 0;
  left_reSpeed = get_qd1_val();
  right_reSpeed = get_qd2_val();
  
  if(0 == CarModel)
  {
    if(Run_Init == isStop)
    {
      isRun = Run_Init;
      cnt = 0;
      speed_out();
    }
    else if(Run_Wait == isStop)
    {
      if(cnt > delayStart && cnt <= Secs + delayStart)
      { isStop = Run_Boot;  }
    }
    else if(Run_Boot == isStop)
    {
      isRun = Run_Forward;
      speed_out();
    }
    else
    { 
      isRun = Run_Stop;
      speed_out(); 
    }
  }
  else
  {
    if(Run_Init == isStop)
    {
      isRun = Run_Init;
      cnt = 0;
      speed_out();
    }
    else if(Run_Wait == isStop)
    {
      if(cnt > delayStart && cnt <= Secs + delayStart)
      { isStop = Run_Boot;  }
    }
    else if(Run_Boot == isStop)
    {
      if(1 == btRcvInfo.isStop)
      {
        CarStart = 1;
      }
      if(1 == CarStart)
      {
        isRun = Run_Forward;
      }
      else
      {
        isRun = Run_Stop;
      }
      speed_out();
    }
    else
    { 
      isRun = Run_Stop;
      speed_out(); 
    }
  }

  if((Run_Wait == isStop) || (Run_Boot == isStop))
  { 
    Counter(&cnt);
  }
  
  
  if(cnt >= Secs + delayStart)
  {
    isStop = Run_Stop;
    cnt = 0;
  }
}

//---------------------定时器中断-----------------------//
void Isr(void)
{ 
 // KeyScan();
  
  
  //Run();
  //speed_left.val = get_qd1_val();
  speed_right.val = get_qd2_val();
 // get_adc_val();
  //get_ind_range();
  //distAddUpCh1();
 // distAddUpCh2();
  /*if(1 == carmodel)
  {
    bluetooth_decoder();
  }*/
  
}
