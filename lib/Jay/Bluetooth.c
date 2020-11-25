/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"
#include "stdbool.h"


float OutData[4];           //数组中四个元素为全局变量，供OutPut_Data调用
                            //只需向数组中写入数据即可
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
  
  bluetooth_init_structure.UART_RxIntEnable = TRUE;    //使能接收中断
  bluetooth_init_structure.UART_RxIsr = bt_Isr;   //设置接收中断函数
  LPLD_UART_Init(bluetooth_init_structure);           //初始化UART
  LPLD_UART_EnableIrq(bluetooth_init_structure);      //使能UART中断
}


int8 BtSndMsg = 0;
int8 BtRcvMsg = 0;
bool isConnect = 0;
uint8 BinaryNumberBuffer[8];//蓝牙二进制八位缓存buf



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
//蓝牙发送数据编码
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


//蓝牙接收数据译码
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
  
  //////////////////////////////////////////////轮询法检测蓝牙是否连接//////////////////////////////////////////////
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
  //////////////////////////////////////////////轮询法检测蓝牙是否连接//////////////////////////////////////////////
}

/*
 *  创口中断
 *  测试专用
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
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
////////////////////////////////////////////////////以下为蓝牙示波器专用函数///////////////////////////////////////////////////////////
/********************************************************************************
*函数名称:CRC_CHECK
----------------------------------------
此函数为数据校验函数，被OutPut_Data调用。
不需改动
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
*函数名称：OutPut_Data
*输入参数：无
*输出参数：无
*函数功能：将数据发送到Serial Scope显示
------------------------------------------------
根据硬件mcu编写串口发送一个字节的函数供本函数调用
调用本函数即可将OutData数组中的四个元素显示到Serial Scope中
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
    LPLD_UART_PutChar(UART4,databuf[i]);                                    //此处根据硬件修改 
  //串口发送一个字节
}

void fusion_visualscope(float index1,float index2,float index3,float index4)
{
  OutData[0] = index1;
  OutData[1] = index2;
  OutData[2] = index3;
  OutData[3] = index4;
  OutPut_Data();
}

