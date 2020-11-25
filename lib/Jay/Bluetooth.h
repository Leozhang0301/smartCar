/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef __BLUETOOTH_H__
#define __BLUETOOTH_H__

//蓝牙发送数据结构体
typedef struct {
  signed char Connect;//查询是否连接另一辆车  1代表连接，0代表没有连接
  char isStop;//启动开关
  char CarJoinArea;//汇车模式   1代表汇车区汇车，0代表圆环汇车
  char CarJoinEnd;//
  char RingStop;//圆环停车标志位
  char Rings;//车辆是否经过指定圆环
  char buf6;    
  char buf7;  
}btInfo;

extern int8 BtSndMsg;
extern int8 BtRcvMsg;
extern btInfo btSndInfo,btRcvInfo;
void btInfoInit(void);
void bt_Isr(void);
extern float OutData[4]; 
uint16 CRC_CHECK(uint8 *Buf, uint8 CRC_CNT);
void Bluetooth_Init(void);
//示波器以及上位机传送图像
void OutPut_Data(void);
void fusion_visualscope(float index1,float index2,float index3,float index4);
void send_img_data(void);
void Bluetooth_Encoder(void);
void Bluetooth_Decoder(void);
#endif