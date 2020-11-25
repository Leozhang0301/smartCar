/**
* --------------����"��������K60�ײ��V3"�Ĺ��̣�LPLD_QuadratureDecoder��-----------------
* @file LPLD_QuadratureDecoder.c
* @version 0.1
* @date 2013-9-29
* @BRIEF ����FTMģ����������빦�ܣ�ʵ�ֱ�����������ת���١�
*
* ��Ȩ����:�����������µ��Ӽ������޹�˾
* http://www.lpld.cn
* mail:support@lpld.cn
* Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
*
* �����̻���"��������K60�ײ��V3"������
* ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
* �����û������豣����"project"�ļ����£��Թ����������ļ�������
* �ײ��ʹ�÷���������ĵ���
*
*/
#include "include.h"



/****************************************
˵����
*�ֱ𽫱�������AB���źŽ���PTB0��PTB1����
*��MiniUSB�߲���RUSH Kinetis�������USB
������������������USB�ӿڡ�
*ʹ�ô��ڵ������ֲ���������Ϊ115200
*ʹ�ô��ڵ������ֲ鿴���н����
*ʹ��������������ת���鿴���н����
****************************************/

//��������
void L1_init();
void L2_init();
void R1_init();
void R2_init();
void porta_isr(void);



//��������
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
������R1
**********************************/ 
void R1_init(void)
{
  
  //�����������빦�ܲ���
  ftm1_init_struct.FTM_Ftmx = FTM2;              //ֻ��FTM1��FTM2���������빦��
  ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //ʹ�����벶��ģʽ
  ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //�����ͷ������ģʽ
  //��ʼ��FTM
  LPLD_FTM_Init(ftm1_init_struct);
  //PTB0���Ž�A�����롢PTB1���Ž�B������
  LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);
  
}


/*********************************
������L2
**********************************/ 
void L2_init(void)
{
  
      gpio_init_struct.GPIO_PTx = PTA;
  gpio_init_struct.GPIO_Dir =DIR_INPUT;
  gpio_init_struct.GPIO_PinControl = INPUT_PULL_UP;
  gpio_init_struct.GPIO_Pins = GPIO_Pin8;     //A8 �ж�����ת
  LPLD_GPIO_Init(gpio_init_struct);
  
    gpio_init_struct.GPIO_PTx = PTA;
  gpio_init_struct.GPIO_Dir =DIR_INPUT;
  gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_RI;//������
  gpio_init_struct.GPIO_Pins = GPIO_Pin9;
  gpio_init_struct.GPIO_Isr=porta_isr;//�жϺ��� gpio_interrupt
  flag = LPLD_GPIO_Init(gpio_init_struct);
  flag1 = LPLD_GPIO_EnableIrq(gpio_init_struct);//ʹ���ж�
}


/*********************************
������R2
**********************************/ 
void R2_init(void)
{
  
  //�����������빦�ܲ���
  ftm1_init_struct.FTM_Ftmx = FTM1;              //ֻ��FTM1��FTM2���������빦��
  ftm1_init_struct.FTM_Mode = FTM_MODE_QD;       //ʹ�����벶��ģʽ
  ftm1_init_struct.FTM_QdMode = QD_MODE_CNTDIR;    //�����ͷ������ģʽ
  //��ʼ��FTM
  LPLD_FTM_Init(ftm1_init_struct);
  //PTB0���Ž�A�����롢PTB1���Ž�B������
  LPLD_FTM_QD_Enable(FTM1, PTB0, PTB1);
  

  
}



/*********************************
������L1
**********************************/ 

void L1_init(void)
{
  lptmr_init_structure.LPTMR_Mode = LPTMR_MODE_PLACC;
  lptmr_init_structure.LPTMR_PluseAccInput = LPTMR_ALT1;
  lptmr_init_structure.LPTMR_Isr = NULL;
  LPLD_LPTMR_Init(lptmr_init_structure); 
  //��ʼ��IO��
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

  


