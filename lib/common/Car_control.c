#include "Car_Control.h"
//#include "SEEKFREE_MT9V032.h"

float Distance;
u8 force_left =0;
u8 force_right = 0;
s16 Barrier_X=0;
s16 Barrier_Y=0;
s16 zbpiancha=20;//已調好
s16 niupiancha=40;//已調好
int congcongcong = 0;
//static u16 beacon_maybe_blocked =0;
void Car_Control()
{
  delay_flag = 0;
  Barrier_flag = 0;
  force_left =0;
if(light_flag)
{

      if(light_y <40)
      {
           set_speed_l = 0;
          set_speed_s = basic_speed;
          excursion_x = light_x;   
          excursion_y = light_y+zbpiancha;
      }
      else
      {
          set_speed_l = 0;
          
          set_speed_s = basic_speed;
          excursion_x = light_x;   
          excursion_y = light_y+niupiancha;
      }

}
 
  else
  {
         set_speed_l=0;
         excursion_x = 0;   
         excursion_y = 0;
         set_speed_s = 20;
   }
  Speed_Conversion(set_speed_l,set_speed_s,excursion_x,excursion_y);

}

