/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"


#define   add    1
#define   sub    0

#define StringCol  15
#define NumCol     90

uint8 navFlag = 1;
uint8 Page = 0;




void Menu(void);
void Menu_Page1(void);
void Menu_Page2(void);
void Menu_Page3(void);
void Menu_Page4(void);
void Menu_Page5(void);
void BOOT(void);

void pageTurn(uint8 *page,uint8 pages,uint8 Type)
{
  if(add == Type)
  {
    if((*page) < pages)
    { (*page)++; }
    else
    { (*page) = 1; }
  }
  else
  {
    if((*page) > 1)
    { (*page)--; }
    else
    { (*page) = pages; }
  }

}

void Cursor(uint8 Key,uint8 *Cnum)
{
  switch(Key)
  {
  case 1:
    if((*Cnum) > 0)
    { (*Cnum)--; }
    else if((*Cnum) <= 0)
    { (*Cnum) = 7;}
    LCD_CLS();
    break;
  
  case 4:
    if((*Cnum) < 7)
    { (*Cnum)++; }
    else if((*Cnum) >= 7)
    { (*Cnum) = 0;}
    LCD_CLS();
    break;
  default:break;
  }
}


void Menu_Page1(void)//设置定时
{
  static uint8 Cnum = 0;
  
  Cursor(KeyValue,&Cnum);
  
  
  LCD_P6x8Str(0,Cnum,"*");

  
  switch(KeyValue)
  {
  case 2:
    switch(Cnum)
    {
    case 0:
      
      break;
    case 1:
      
      break;
    case 2:
      
      break;
    case 3:
      
      break;
    case 4:
      
      break;
    case 5:
      
      break;
    case 6:
      
      
      break;
    case 7:
      
      break;
    default:break;
    }
    LCD_CLS();
    break;
  case 3:
    
    break;
  case 5:
    switch(Cnum)
    {
    case 0:
      
      break;
    case 1:
      
      break;
    case 2:
      
      break;
    case 3:
      
      break;
    case 4:
      
      break;
    case 5:
      
      break;
    case 6:
      
      break;
    case 7:
      
      break;
    default:break;
    }
    LCD_CLS();
    break;
  case 6:
    Page=0;
    LCD_CLS();
    break;
  default:break;
  }
  
  KeyValue=0;
}

void Menu_Page2(void)//设置舵机
{
  static uint8 Cnum = 0;
  
  Cursor(KeyValue,&Cnum);
  
  LCD_P6x8Str(0,Cnum,"*");
  switch(KeyValue)
  {  
  case 2:
    switch(Cnum)
    {
    case 0:
      
      break;
    case 1:
      
      break;
    case 2:
      
      break;
    case 3:
      
      break;
    case 4:
      
      break;
    case 5:
      
      break;
    case 6:
      break;
    case 7:
      
      
      break;
    default:break;
    }
    break;
  case 3:
    break;
  case 5:
    switch(Cnum)
    {
    case 0:
      
      break;
    case 1:

      break;
    case 2:

      break;
    case 3:

      break;
    case 4:

      break;
    case 5:

      break;
    case 6:
      break;
    case 7:

      break;
    default:break;
    }
    
    break;
  case 6:Page=0;LCD_CLS();break;
  
  default:break;
  
  }
  
  KeyValue=0;
}

void Menu_Page3(void)//圆环
{ 
  

  KeyValue=0;
}


void Menu_Page4(void)//图像显示
{
  img_display();
  
  KeyValue=0;
}

void Menu_Page5(void)
{
  
  KeyValue=0;
}



void BOOT(void)
{
  navFlag = 0;
  Page = 0;
  isStop = Run_Wait;
}

void Menu(void)
{
  static uint8 CLSflag = 0;
  
  if(!navFlag)
  {
    if(KeyValue) 
    {
      navFlag = 1;
      isStop = Run_Init;
      LCD_Init(); 
      LCD_CLS();
    }
  }
  else
  {
    switch(Page)
    {
      case 1:Menu_Page1();break;//发车设置
      case 2:Menu_Page2();break;//舵机设置
      case 3:Menu_Page3();break;//电机设置
      case 4:Menu_Page4();break;//查看图像
      case 5:Menu_Page5();break;//赛道标志位
      case 6:BOOT();break;
      
      default:
      LCD_P6x8Str(0,7,"ov7725");
      switch(isStop)
    {
    case Run_Init:
      LCD_P6x8Str(85,7,"Init");
      break;
    case Run_Wait:
      LCD_P6x8Str(85,7,"Wait");
      break;
    case Run_Boot:
      LCD_P6x8Str(85,7,"Boot");
      break;
    default:break;
    }
    
    
      
    switch(btRcvInfo.Connect)
    {
    case 0:
      LCD_P6x8Str(0,1,"BtUnConnect");
      break;
    case 1:
      LCD_P6x8Str(0,1,"BtConnectting");
      break;
    default:break;
    }
    if(CLSflag != btRcvInfo.Connect)
    {
      LCD_CLS();
    }
    CLSflag = btRcvInfo.Connect;
    
      Page=KeyValue;
      if(Page!=0)  LCD_CLS();
      break;
    }
  }
  KeyValue=0;
}

/*=====================================================================*/
