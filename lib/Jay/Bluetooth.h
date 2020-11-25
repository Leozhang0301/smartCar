/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#ifndef __BLUETOOTH_H__
#define __BLUETOOTH_H__

//�����������ݽṹ��
typedef struct {
  signed char Connect;//��ѯ�Ƿ�������һ����  1�������ӣ�0����û������
  char isStop;//��������
  char CarJoinArea;//�㳵ģʽ   1����㳵���㳵��0����Բ���㳵
  char CarJoinEnd;//
  char RingStop;//Բ��ͣ����־λ
  char Rings;//�����Ƿ񾭹�ָ��Բ��
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
//ʾ�����Լ���λ������ͼ��
void OutPut_Data(void);
void fusion_visualscope(float index1,float index2,float index3,float index4);
void send_img_data(void);
void Bluetooth_Encoder(void);
void Bluetooth_Decoder(void);
#endif