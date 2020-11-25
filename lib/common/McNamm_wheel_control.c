#include "McNamm_wheel_control.h"
#include "math.h"
#include "include.h"

int carspeed = 200;
int XValue=160;  //150
int YValue=0;  //
int ZValue=80;   //80
int RValue=0;   //
float shuliang = 1.5f;//200-1.5   
//#define a_PARAMETER          (0.09f)               
//#define b_PARAMETER          (0.09f) 

void McNamm_wheel_control(s16 Vx,s16 Vy,s16 Vz,s16 Vr)
{
    Left_front_goalspeed   = (int)(Vx-Vy-Vz);  //*(a_PARAMETER+b_PARAMETER)
    Left_rear_goalspeed    = (int)(Vx+Vy-Vz);  //zuohou*(a_PARAMETER+b_PARAMETER)
    Right_front_goalspeed  = (int)(Vx+Vy+Vz);//*(a_PARAMETER+b_PARAMETER)
    Right_rear_goalspeed   = (int)(Vx-Vy+Vz);//*(a_PARAMETER+b_PARAMETER)
}

//void Speed_Conversion2() //≤‚ ‘”√
//{
//  float coefficient = 0;
//  float vx=0,vy=0,vz = 0;
//  coefficient = (float)(basic_speed*basic_speed)/(coordinate_X*coordinate_X+coordinate_Y*coordinate_Y);
//  coefficient = (float)sqrt(coefficient);
//	
//  vx = coefficient*coordinate_X;
//  vy = coefficient*coordinate_Y;
//  vz = 1;
//  McNamm_wheel_control(vx,vy,vz);
//}

void Speed_Conversion(u8 setspeedl,s16 setspeeds,s16 x,s16 y)//zhi,0,x,y
{
    // biZhang();
   s16 speedl,speeds,vx,vy,vz,vr;
   speedl = (int)setspeedl;
   speeds = (int)setspeeds;
   if(light_flag)
   {
     
//         if(bizhang_flag1 == 1||bizhang_flag1==3)
//       {
//         vx = carspeed;
//         vy =  (100+carspeed);
//         vz = 0;
//         vr = 0;
//       }
//        else if(bizhang_flag1 == 2)
//       {
//         vx = carspeed;
//         vy =  -(100+carspeed);
//         vz =0;
//         vr = 0;
//       }
//       else
//       {
         vx = carspeed;
         vy = 0;//shuliang*lun_Pid(y,speeds);  //0’˝or∏∫
         vz = shuliang*lun_Pid(speeds,y);
         vr = 0;
       //}
//     P3=3000;
//     P4=3000;
   }
   else 
   {
     vx = XValue;    //80 -20 -40 -20
     vy = YValue;    
     vz = ZValue;
     vr = RValue;
//     P3=60;
//     P4=140;
   }


  McNamm_wheel_control(vx,vy,vz,vr);
}


