#include "include.h"

GPIO_InitTypeDef hongwai_init_structor;
void hongwai_init();
void biZhang();
u8 daoche();


int daoche_num=0;
int daoche_flag=0;

void hongwai_init()
{
  hongwai_init_structor.GPIO_PTx = PTA;
  hongwai_init_structor.GPIO_Dir =DIR_INPUT;
  hongwai_init_structor.GPIO_PinControl = INPUT_PULL_UP;
  hongwai_init_structor.GPIO_Pins = GPIO_Pin17;
  LPLD_GPIO_Init(hongwai_init_structor);
  
  hongwai_init_structor.GPIO_PTx = PTB;
  hongwai_init_structor.GPIO_Dir =DIR_INPUT;
  hongwai_init_structor.GPIO_PinControl = INPUT_PULL_UP;
  hongwai_init_structor.GPIO_Pins = GPIO_Pin5;
  LPLD_GPIO_Init(hongwai_init_structor);
}

void biZhang()
{
//  if(PTA17_I==0)
//  {
//    //×ó±ÜÕÏ
//    bizhang_flag1=1;
//    LCD_Write_Int(80,2,1);
//  }
//  else if(PTB5_I==0)
//  {
//    //ÓÒ±ÜÕÏ
//        bizhang_flag1=2;
//    LCD_Write_Int(80,2,0);
//  }
//  else if(PTA17_I==0&&PTB5_I==0)
//  {
//    //×ó±ÜÕÏ
//        bizhang_flag1=3;
//  }
//  else
//  {
//    //›]ÓÐ±ÜÕÏ
//   // bizhang_flag1=0;
//  }
}
  
u8 daoche()
{
    if(PTA17_I==0&&PTB5_I==0)
    {
       daoche_num++;
    }
    else
    {
      daoche_num=0;
    }
    if(daoche_num>=500&&daoche_num<=1000)
    {
      //µ¹³µ
      //daoche_flag=1;
    }
}