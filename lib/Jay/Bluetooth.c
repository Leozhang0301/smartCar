/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#include  "common.h"
#include "include.h"
#include "stdbool.h"


float OutData[4];           //�������ĸ�Ԫ��Ϊȫ�ֱ�������OutPut_Data����
                            //ֻ����������д�����ݼ���
                            //0-CH1  1-CH2  2-CH3  3-CH4
static UART_InitTypeDef bluetooth_init_structure; 
 
btInfo btSndInfo,btRcvInfo;
void Bluetooth_Init(void)
{
  nvic_init_struct.NVIC_IRQChannel = UART4_RX_TX_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
  nvic_init_struct.NVIC_IRQChannelSubPriority        = 2;
  LPLD_NVIC_Init(nvic_init_struct);
  
  bluetooth_init_structure.UART_Uartx=UART4;
  bluetooth_init_structure.UART_BaudRate = 115200;
  bluetooth_init_structure.UART_TxPin=PTE24;
  bluetooth_init_structure.UART_RxPin=PTE25;
  
  bluetooth_init_structure.UART_RxIntEnable = TRUE;    //ʹ�ܽ����ж�
  bluetooth_init_structure.UART_RxIsr = bt_Isr;   //���ý����жϺ���
  LPLD_UART_Init(bluetooth_init_structure);           //��ʼ��UART
  LPLD_UART_EnableIrq(bluetooth_init_structure);      //ʹ��UART�ж�
}


int8 BtSndMsg = 0;
int8 BtRcvMsg = 0;
bool isConnect = 0;
uint8 BinaryNumberBuffer[8];//���������ư�λ����buf



void CharToBinaryNumber(int8 index,uint8 *buffer)
{
	for(int16 i = 0;i < 8;i++)
	{ *(buffer + i) = index >> i & 0x01; }
}

void BinaryNumberToChar(int8 *index,uint8 *buffer)
{
	for(int16 i = 0;i < 8;i++)
	{ (*index) |= *(buffer + i) << i; }
}

void btInfoInit(void)
{
  btSndInfo.Connect        = 0;
  btSndInfo.isStop         = 0;
  btSndInfo.CarJoinArea    = 0;
  btSndInfo.CarJoinEnd     = 0;
  btSndInfo.RingStop       = 0;
  btSndInfo.Rings          = 0;
  btSndInfo.buf6           = 0;
  btSndInfo.buf7           = 0;
  
  btRcvInfo.Connect        = 0;
  btRcvInfo.isStop         = 0;
  btRcvInfo.CarJoinArea    = 0;
  btRcvInfo.CarJoinEnd     = 0;
  btRcvInfo.RingStop       = 0;
  btRcvInfo.Rings          = 0;
  btRcvInfo.buf6           = 0;
  btRcvInfo.buf7           = 0;
  
  
  for(int16 i = 0;i < 8;i++)
  {
    BinaryNumberBuffer[i] = 0;
  }
}
//�����������ݱ���
void Bluetooth_Encoder(void)
{ 
  BtSndMsg = 0;
  
  BinaryNumberBuffer[0] = btSndInfo.Connect;
  BinaryNumberBuffer[1] = btSndInfo.isStop;
  BinaryNumberBuffer[2] = btSndInfo.CarJoinArea;
  BinaryNumberBuffer[3] = btSndInfo.CarJoinEnd;
  BinaryNumberBuffer[4] = btSndInfo.RingStop;
  BinaryNumberBuffer[5] = btSndInfo.Rings;
  BinaryNumberBuffer[6] = btSndInfo.buf6;
  BinaryNumberBuffer[7] = btSndInfo.buf7;
  
  BinaryNumberToChar(&BtSndMsg,BinaryNumberBuffer);
  LPLD_UART_PutChar(UART4,BtSndMsg);
  
  for(int16 i = 0;i < 8;i++)
  {
    BinaryNumberBuffer[i] = 0;
  }
}


//����������������
void Bluetooth_Decoder(void)
{

  for(int16 i = 0;i < 8;i++)
  {
    BinaryNumberBuffer[i] = 0;
  }
  
  
  CharToBinaryNumber(BtRcvMsg,BinaryNumberBuffer);
  
  btRcvInfo.Connect         = BinaryNumberBuffer[0];
  btRcvInfo.isStop          = BinaryNumberBuffer[1];
  btRcvInfo.CarJoinArea     = BinaryNumberBuffer[2];
  btRcvInfo.CarJoinEnd      = BinaryNumberBuffer[3];
  btRcvInfo.RingStop        = BinaryNumberBuffer[4];
  btRcvInfo.Rings           = BinaryNumberBuffer[5];
  btRcvInfo.buf6            = BinaryNumberBuffer[6];
  btRcvInfo.buf7            = BinaryNumberBuffer[7];
  
  //////////////////////////////////////////////��ѯ����������Ƿ�����//////////////////////////////////////////////
  static uint8 cnt = 0;
  if(++cnt > 25)
  {
    cnt = 0;
    if(isConnect == false)
    {
      BtRcvMsg = 0;
    }
    isConnect = false;
  }
  //////////////////////////////////////////////��ѯ����������Ƿ�����//////////////////////////////////////////////
}

/*
 *  �����ж�
 *  ����ר��
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
void bt_Isr(void)
{ 
  isConnect = true;
  BtRcvMsg = UART4->D;
}


void send_img_data(void)
{
        LPLD_UART_PutChar(UART4,0x00);
        LPLD_UART_PutChar(UART4,0xff);
        LPLD_UART_PutChar(UART4,0x01);
        LPLD_UART_PutChar(UART4,0x01);
        LPLD_UART_PutCharArr(UART4,(int8 *)imgbuff,IMG_ROWS*IMG_COLS);
}
////////////////////////////////////////////////////����Ϊ����ʾ����ר�ú���///////////////////////////////////////////////////////////
/********************************************************************************
*��������:CRC_CHECK
----------------------------------------
�˺���Ϊ����У�麯������OutPut_Data���á�
����Ķ�
*******************************************************************************/
uint16 CRC_CHECK(uint8 *Buf, uint8 CRC_CNT)
{
    uint16 CRC_Temp;
    uint8 i,j;
    CRC_Temp = 0xffff;

    for (i=0;i<CRC_CNT; i++){      
        CRC_Temp ^= Buf[i];
        for (j=0;j<8;j++) {
            if (CRC_Temp & 0x01)
                CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
            else
                CRC_Temp = CRC_Temp >> 1;
        }
    }
    return(CRC_Temp);
}

/******************************************************************************
*�������ƣ�OutPut_Data
*�����������
*�����������
*�������ܣ������ݷ��͵�Serial Scope��ʾ
------------------------------------------------
����Ӳ��mcu��д���ڷ���һ���ֽڵĺ���������������
���ñ��������ɽ�OutData�����е��ĸ�Ԫ����ʾ��Serial Scope��
*******************************************************************************/
void OutPut_Data(void)
{
  int32 temp[4] = {0};
  uint32 temp1[4] = {0};
  uint8 databuf[10] = {0};
  uint8 i;
  uint16 CRC16 = 0;
  for(i=0;i<4;i++)
  {
    temp[i]  = (int32)OutData[i];
    temp1[i] = (uint32)temp[i];
  }
  
  for(i=0;i<4;i++) 
  {
    databuf[i*2]   = (uint8)(temp1[i]%256);
    databuf[i*2+1] = (uint8)(temp1[i]/256);
  }
  
  CRC16 = CRC_CHECK(databuf,8);
  databuf[8] = CRC16%256;
  databuf[9] = CRC16/256;
  
  for(i=0;i<10;i++)
    LPLD_UART_PutChar(UART4,databuf[i]);                                    //�˴�����Ӳ���޸� 
  //���ڷ���һ���ֽ�
}

void fusion_visualscope(float index1,float index2,float index3,float index4)
{
  OutData[0] = index1;
  OutData[1] = index2;
  OutData[2] = index3;
  OutData[3] = index4;
  OutPut_Data();
}

