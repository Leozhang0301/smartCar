
#include "common.h"
#include "include.h"


void System_Init(void)
{
    LCD_Init(); 
    LCD_CLS();
    KeyBoard_Init();
    //Encoder_Init();
    //SteeringGear_Init();
    //flash_init();
     Bluetooth_Init();
    // ADC_Init();
    Camera_Init();
    //Param_Init();
    //User_Flash_Read();
    //pit0_init();
    init_Motor();
    //init_PID();
    encorder_init();
    hongwai_init();
    pit_init();
    //ShowMainMune();

}

void DMA_buffer(uint8 flag)
{
  if(flag)
  {
    Unzip(fieldCnt,pixels);
    //img_num++;
    IMG_Handle();
    
   // send_img_data();
   // Scan_Point();

   Menu();
   // img_display();
    DMA_flag=0;
  }
}

//extern int tuxiang ;;
void main(void)
{
  /*---------------------关中断---------------------*/
  //DisableInterrupts;
  /*------------------单片机初始化------------------*/
  System_Init();
  /*---------------------开中断---------------------*/
  //EnableInterrupts; 

  while(1)
  {
    //Key_detect();
          get_img();
    DMA_buffer(DMA_flag);

//    get_img(); //变动
//    DMA_buffer(DMA_flag);
     Car_Control();
//     LCD_Write_Int(80, 1, r1_reSpeed);
//     LCD_Write_Int(80, 2, l1_reSpeed);
//     LCD_Write_Int(80, 3, r2_reSpeed);
//     LCD_Write_Int(80, 4, l2_reSpeed);

//     LCD_Write_Int(80, 1, l1_reSpeed);        
     LCD_Write_Int(100, 2, light_x);
     LCD_Write_Int(100, 3, light_y);
     LCD_Write_Int(100, 4, 1);
          //LCD_Write_Int(100, 5, baidian);
     //LCD_Write_Int(100, 5, KeyValue);
     //fusion_visualscope(l1_reSpeed,r1_reSpeed,r2_reSpeed,l2_reSpeed);
  } 
}





