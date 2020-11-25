#include  "common.h"
#include "include.h"
   
   
GPIO_InitTypeDef KeyBoard_init_struct;
#define 	KEY_IN_0  PTE0_I
#define 	KEY_IN_1  PTE1_I
#define 	KEY_IN_2  PTE2_I

#define 	KEY_OUT_0  PTE3_O
#define 	KEY_OUT_1  PTE4_O
#define 	KEY_OUT_2  PTE5_O


//#define 	KEY_OUT_0  PTE4_O
//#define 	KEY_OUT_1  PTE3_O
//����״̬ 1������ 0������
//u8 KeyStatus[3][3]={0};
uint8 KeyStatus[3][3]={0};
//��ֵ
uint8 KeyValue = 0;

/*************************
������:KeyScan
����ֵ:��
����:��
����: ����ɨ�躯��
������֧�ֶల��ͬʱ����
�뽫������������ʱ���ж�
**************************/
void KeyScan(void)
{

  static unsigned char i = 0;
  unsigned char j = 0; 
  static unsigned char keybuf[3][3]= {0};
  static unsigned char backup[3][3] = {{0,0,0},{0,0,0},{0,0,0}}; //������
  
  keybuf[i][0] = (keybuf[i][0] << 1)| KEY_IN_0;
  keybuf[i][1] = (keybuf[i][1] << 1)| KEY_IN_1;
  keybuf[i][2] = (keybuf[i][2] << 1)| KEY_IN_2;
  
  for(j=0; j<3; j++)
  {
	if((keybuf[i][j] & 0x07) == 0x00)
	{
		KeyStatus[i][j] = 0;
               
	}
	else if((keybuf[i][j] & 0x07) == 0x07)
	{
		KeyStatus[i][j] = 1;
	}
        if(backup[i][j] != KeyStatus[i][j])
        {
                if(backup[i][j] == 1)   //�ϴ�״̬Ϊ1�������0,��������
                {                        
                         KeyValue=i*3 + j + 1;
                }
                backup[i][j] = KeyStatus[i][j];
        }
  }
  (i >= 2)?i=0:i++;
  //Ϊ��һ��ɨ����׼��
  switch(i)
  {
          case 0:KEY_OUT_0=1;KEY_OUT_1=0;KEY_OUT_2=0;break;
          case 1:KEY_OUT_0=0;KEY_OUT_1=1;KEY_OUT_2=0;break;
          case 2:KEY_OUT_0=0;KEY_OUT_1=0;KEY_OUT_2=1;break;
          default:break;
  }
 
}


void KeyBoard_Init(void)
{
  
  KeyBoard_init_struct.GPIO_PTx = PTE;
  KeyBoard_init_struct.GPIO_PinControl=IRQC_DIS;
  KeyBoard_init_struct.GPIO_Output = OUTPUT_L;
  KeyBoard_init_struct.GPIO_Dir =DIR_OUTPUT;
  KeyBoard_init_struct.GPIO_Pins = GPIO_Pin3|GPIO_Pin4|GPIO_Pin5;
  LPLD_GPIO_Init(KeyBoard_init_struct);
  
  KeyBoard_init_struct.GPIO_PTx = PTE;
  KeyBoard_init_struct.GPIO_Dir =DIR_INPUT;
  KeyBoard_init_struct.GPIO_PinControl = INPUT_PULL_DOWN;
  KeyBoard_init_struct.GPIO_Pins = GPIO_Pin0|GPIO_Pin1|GPIO_Pin2;
  LPLD_GPIO_Init(KeyBoard_init_struct);



  KEY_OUT_0=1;KEY_OUT_1=0;KEY_OUT_2=0;
  
}