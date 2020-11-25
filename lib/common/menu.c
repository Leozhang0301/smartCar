#include "include.h"


int Py=0;//焦点坐标  第一行为0  每行加2
int page=1;//页数  1为图像显示  2为模式选择   3为参数设置
void Menu();
void ShowMainMune();
void ShowCamera();
void ShowMode();
void ShowSetting();


void Menu()
{
  if(page == 1)
  {
    ShowCamera();
    KeyValue=0;
  }
  if(page == 2)
  {
    ShowMode();
    KeyValue=0;
  }
  if (page == 3)
  {
    ShowSetting();
    KeyValue=0;
  }
    if (page == 4)
  {
    tiaocan();
    KeyValue=0;
  }
}

void ShowCamera()
{    
    img_display();
    LCD_Write_Int(80, 4,  ImgThreshold);
    LCD_Write_Int(80, 5,  light_flag);
    LCD_Write_Int(80, 6,  zbpiancha);
    switch(KeyValue)
    {
      case 4:
        ImgThreshold-=5;
        SCCB_WriteByte(OV7725_CNST,ImgThreshold);
        break;
      case 6:
        ImgThreshold+=5;
        SCCB_WriteByte(OV7725_CNST,ImgThreshold);
        break;
      case 1:
        zbpiancha-=1;
        niupiancha-=2;
        break;
      case 3:
        zbpiancha+=1;
        niupiancha+=2;
        break;
      case 9:
        page++;
        if(page >4) {page = 1;}
        LCD_CLS(); 
        break;
    case 8:
      send_img_data();
      break;
      default:
        break;
    }
  
}

void tiaocan()
{
    LCD_P6x8Str(10,0,"p");
    LCD_P6x8Str(10,1,"i"); 
    LCD_P6x8Str(1,Py,"*");
   // LCD_Write_Float(80,0,shuliang);
   // LCD_Write_Int(80,1,carspeed);
    switch(KeyValue)
    {
  case 2:
    Py--;
    if(Py<0){Py=0;}
    LCD_CLS();
    break;
  case 8:
    Py++;
    if(Py>1){Py=1;}
    LCD_CLS();
    break;
  case 1:
    nbpid_kP-= 0.5;
    break;
  case 3:
    nbpid_kP+= 0.5;
    break;
  case 4:
nbpid_kI -= 0.1;
      break;
        case 6:
nbpid_kI += 0.1;
      break;
         case 9:
     page++;
     if(page>4){page=1;}
     LCD_CLS();
     break;
    default:
      break;
    }
}

void ShowSetting()
{
  LCD_P6x8Str(10,0,"vx");
  LCD_P6x8Str(10,1,"vy"); 
  LCD_P6x8Str(10,2,"vz"); 
  LCD_P6x8Str(1,Py,"*");
  LCD_Write_Int(80,0,XValue);
  LCD_Write_Int(80,1,YValue);
  LCD_Write_Int(80,2,ZValue);
  
  switch(KeyValue)
  {
  case 2:
    Py--;
    if(Py<0){Py=0;}
    LCD_CLS();
    break;
  case 8:
    Py++;
    if(Py>2){Py=2;}
    LCD_CLS();
    break;
  case 4:
    if(Py==0){XValue-=10;}
    else if(Py==1){YValue-=10;
                    RValue-=10;}
    else if(Py==2){ZValue-=10;}
    break;
  case 6:
    if(Py==0){XValue+=10;}
    else if(Py==1){YValue+=10;
                    RValue+=10;}
    else if(Py==2){ZValue+=10;}
    break;
   case 9:
     page++;
     if(page>4){page=1;}
     LCD_CLS();
     break;
  default:
    break;
  }
}

//void ShowMode()
//{
////    LCD_P6x8Str(10,0,"normol");
////    LCD_P6x8Str(10,2,"high"); 
////    LCD_P6x8Str(1,Py,"*");
//    LCD_Write_Float(80,0,shuliang);
//    LCD_Write_Int(80,1,carspeed);
//    switch(KeyValue)
//    {
//    case 1:
//      //正常模式
//    shuliang -= 0.1f;
//      break;
//    case 3:
//    shuliang +=0.1f;
//      break;
//    case 4:
//      //正常模式
//    carspeed -= 20;
//      break;
//    case 6:
//    carspeed += 20;
//      break;
//    case 9:
//      page++;
//      if(page>4){page=1;}
//      LCD_CLS();
//      break;
//    default:
//      break;
//    }
//}

void ShowMode()
{
//    LCD_P6x8Str(10,0,"normol");
//    LCD_P6x8Str(10,2,"high"); 
//    LCD_P6x8Str(1,Py,"*");
    LCD_Write_Float(80,0,shuliang);
    LCD_Write_Int(80,1,carspeed);
    switch(KeyValue)
    {
    case 1:
      //正常模式
        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch5,4000 );//zuo
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch4, 0);
      break;
    case 2:
          LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch6, 0);  
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch7, 4000);
    break;
    case 3:
        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0); 
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,  4000);
      break;
    case 4:
        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 4000);
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0 ); 
      break;
    case 6:
    //carspeed += 20;
      break;
    case 9:
      page++;
      if(page>4){page=1;}
      LCD_CLS();
      break;
    default:
      break;
    }
}
