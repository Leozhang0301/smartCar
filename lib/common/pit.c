#include "common.h"
#include "include.h"
PIT_InitTypeDef pit1_init_struct;
PIT_InitTypeDef pit_init_struct;
void ic_isr();
void cheak(void);
//void clear();


float LC = 0.0f;
float RC = 0.0f;
float K = 0.0f;
//int twinkle_delay = 10;
int a = 0;
boolean sctl = 1;
boolean cctl = 0;
void pit_init();
boolean CCD_CTL_OPEN = 0;
boolean CCD_TIME_OPEN = 0;
boolean LuBang = 1;


int CCD_TIME = 0;




/*
* 初始化PIT定时器
*
*/

int back_count = 0;
int back_stop = 0;
int two_ms=0;
int daoche_ms=500;
u8 inct = 0;
void pit_init()
{
  //配置定时周期中断参数
  pit_init_struct.PIT_Pitx = PIT0;
  pit_init_struct.PIT_PeriodMs = 2;    //2毫秒产生一起中断
  pit_init_struct.PIT_Isr = ic_isr;
  //初始化PIT
  LPLD_PIT_Init(pit_init_struct);
  //使能PIT定时中断
  LPLD_PIT_EnableIrq(pit_init_struct);
}

int P1,P2,P3,P4;

void delay_p(void)
{
  inct++;
}
/*
* PIT中断函数
*/
void ic_isr()
{
    two_ms++;
    if(two_ms%500==0)
    {
      fps1_n = fps_num1_n;
      fps_num1_n=0;
    }
    daoche();

    l1_reSpeed=right_getSpeed();
    r1_reSpeed=ftm2_getSpeed();

    r2_reSpeed=ftm1_getSpeed();

    l2_reSpeed=getspeed(); 
    KeyScan();
    //倒车
    if(back==0)
    {
      cheak();
    }
    else
    {
      back_stop++;
      if(back_stop>350)
      {
        back_stop=0;
        back=0;
      }
    }
    
    
    P1=2000;
    P2=2000;
    P3=2000;
    P4=2000;
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,P1 );//zuo
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
//    
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0);  
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, P2);
//   
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, P3); 
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  0);
////    
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
//    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,P4 ); 
//Motor_control();
//if(1)//FACHEflag
//{
   P1 = (int)rPID_Control(r1_reSpeed, Left_front_goalspeed);
   P2 = (int)rPID_Control(r2_reSpeed, Right_front_goalspeed);
   P3 = (int)rPID_Control(l1_reSpeed, Left_rear_goalspeed);
   P4 = (int)rPID_Control(l2_reSpeed, Right_rear_goalspeed);   
  
   Motor_control();
//}

    

}

void cheak(void)
{
  if(PTA17_I==0||PTB5_I==0)
  {
    back_count++;
    if(back_count > 500)
    {
      back_count = 0;
      back = 1;
      //init_Speed(0,0);
    }  
  }
  else 
    back_count = 0;    
}


