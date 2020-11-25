/**
* --------------基于"拉普兰德K60底层库V3"的工程（LPLD_QuadratureDecoder）-----------------
* @file LPLD_QuadratureDecoder.c
* @version 0.1
* @date 2013-9-29
* @BRIEF 利用FTM模块的正交解码功能，实现编码器的正反转测速。
*
* 版权所有:北京拉普兰德电子技术有限公司
* http://www.lpld.cn
* mail:support@lpld.cn
* 硬件平台:  LPLD K60 Card / LPLD K60 Nano
*
* 本工程基于"拉普兰德K60底层库V3"开发，
* 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
* 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
* 底层库使用方法见相关文档。
*
*/
#include "include.h"



/****************************************
说明：
*分别将编码器的AB相信号接入PTB0、PTB1引脚
*将MiniUSB线插入RUSH Kinetis开发板的USB
插座，并连接至电脑USB接口。
*使用串口调试助手波特率设置为115200
*使用串口调试助手查看运行结果。
*使编码器产生正反转，查看运行结果。
****************************************/

//函数声明
void L1_init();
void L2_init();
void R1_init();
void R2_init();
void porta_isr(void);



//变量定义
int left_getSpeed();
int right_getSpeed();
int left_reSpeed;
int right_reSpeed;
int r1_reSpeed=0;
int r2_reSpeed=0;
int l1_reSpeed=0;
int l2_reSpeed=0;
int speed=0;
int gpioSpeed;

int flag1;
int flag;

FTM_InitTypeDef ftm1_init_struct; 
LPTMR_InitTypeDef lptmr_init_structure;
GPIO_InitTypeDef gpio_init_struct;

void encorder_init()
{
  L1_init();
  L2_init();
  R1_init();
  R2_init();
}

/*********************************
编码器R1
**********************************/ 
void R1_init(void)
{
  
  //配置正交解码功能参数
  ftm1_init_struct.FTM_Ftmx = FTM2;              //只有FTM1和FTM2有正交解码功能
  ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
  ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
  //初始化FTM
  LPLD_FTM_Init(ftm1_init_struct);
  //PTB0引脚接A相输入、PTB1引脚接B相输入
  LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);
  
}


/*********************************
编码器L2
**********************************/ 
void L2_init(void)
{
  
      gpio_init_struct.GPIO_PTx = PTA;
  gpio_init_struct.GPIO_Dir =DIR_INPUT;
  gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
  gpio_init_struct.GPIO_Pins = GPIO_Pin8;     //A8 判断正反转
  LPLD_GPIO_Init(gpio_init_struct);
  
    gpio_init_struct.GPIO_PTx = PTA;
  gpio_init_struct.GPIO_Dir =DIR_INPUT;
  gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_RI;//自拉低
  gpio_init_struct.GPIO_Pins = GPIO_Pin9;
  gpio_init_struct.GPIO_Isr=porta_isr;//中断函数 gpio_interrupt
  flag = LPLD_GPIO_Init(gpio_init_struct);
  flag1 = LPLD_GPIO_EnableIrq(gpio_init_struct);//使能中断
}


/*********************************
编码器R2
**********************************/ 
void R2_init(void)
{
  
  //配置正交解码功能参数
  ftm1_init_struct.FTM_Ftmx = FTM1;              //只有FTM1和FTM2有正交解码功能
  ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //使能输入捕获模式
  ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //计数和方向解码模式
  //初始化FTM
  LPLD_FTM_Init(ftm1_init_struct);
  //PTB0引脚接A相输入、PTB1引脚接B相输入
  LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
  

  
}



/*********************************
编码器L1
**********************************/ 

void L1_init(void)
{
  lptmr_init_structure.LPTMR_Mode = LPTMR_MODE_PLACC;
  lptmr_init_structure.LPTMR_PluseAccInput = LPTMR_ALT1;
  lptmr_init_structure.LPTMR_Isr = NULL;
  LPLD_LPTMR_Init(lptmr_init_structure); 
  //初始化IO口
  gpio_init_struct.GPIO_PTx = PTC;
  gpio_init_struct.GPIO_Dir =DIR_INPUT;
  gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
  gpio_init_struct.GPIO_Pins = GPIO_Pin5;
  LPLD_GPIO_Init(gpio_init_struct);
}

int getspeed()
{
  int val=0;
  val=10*gpioSpeed;
  gpioSpeed=0;
  if(1==PTA8_I)
  {return -val;}
  else if(0==PTA8_I)
  {return val;}
  return 0;
}

int right_getSpeed()
{
  int16 val=0;
  val=10*LPLD_LPTMR_GetPulseAcc();
  LPLD_LPTMR_ResetCounter();
  LPLD_LPTMR_Init(lptmr_init_structure);
  if(1==PTC5_I)
  {return val;}
  else if(0==PTC5_I)
  {return -val;}
  return 0;
}

int ftm1_getSpeed()
{
  
  int16 val=0;
  val=10*LPLD_FTM_GetCounter(FTM1);
  LPLD_FTM_ClearCounter(FTM1);
  return -val;
}

int ftm2_getSpeed()
{
  
  int16 val=0;
  val=10*LPLD_FTM_GetCounter(FTM2);
  LPLD_FTM_ClearCounter(FTM2);
  return val;
}

void porta_isr()
{
 // if(LPLD_GPIO_IsPinxExt(PORTA,GPIO_Pin9)>0)
 // {
   gpioSpeed++;

  //  LPLD_GPIO_ClearIntFlag(PORTA);
 // }
  //PTA_9=0;
}

  


