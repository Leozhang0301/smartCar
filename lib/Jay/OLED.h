/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#ifndef _OLED_H_
#define _OLED_H_

/*
4��SPIʹ��˵����
VBT ���ڲ�DC-DC��ѹ��3.3~4.3V�����ʹ��5V��ѹ��Ϊ���������һ��100~500ŷ�ĵ���
VCC ���ڲ��߼���ѹ 1.8~6V   
GND ��

BS0 �͵�ƽ
BS1 �͵�ƽ
BS2 �͵�ƽ

CS  Ƭѡ�ܽ�
DC  ��������ѡ��ܽ�
RES ģ�鸴λ�ܽ� 
D0��SCLK�� ��ʱ�ӽţ���MCU����
D1��MOSI�� ����������������ݽţ���MCU����

D2 ����      
D3-D7 �� �͵�ƽ �� Ҳ�����գ��������Ϊ�͵�ƽ
RD  �͵�ƽ ��Ҳ�����գ��������Ϊ�͵�ƽ
RW  �͵�ƽ ��Ҳ�����գ��������Ϊ�͵�ƽ
RD  �͵�ƽ ��Ҳ�����գ��������Ϊ�͵�ƽ   
*/
#define LCD_SCL PTC8_O  /*D0*///K60�Ĺܽ����� PTE3�����//PTA14_O
#define LCD_SDA	PTC7_O  /*D1*///PTA16_O
#define LCD_RST PTC10_O  /*RST*/// PTB21_O
#define LCD_DC  PTC9_O  /*DC*/ //PTB20_O

#define XLevelL		0x00
#define XLevelH		0x10
#define XLevel		((XLevelH&0x0F)*16+XLevelL)
#define Max_Column	128
#define Max_Row		  64
#define	Brightness	0xCF 

#define Dot_Size 3                  // С�������λ

#define X_WIDTH 128
#define Y_WIDTH 64

extern uint8 LIBLOGO60x58[480];

extern uint8 str1[6];
extern uint8 str2[6];
extern uint8 str3[8];

extern uint8 str4[6];
extern uint8 str5[6];
extern uint8 str6[8];

void init_gpio_OLED();
int Dly_ms(int ms);
void LCD_WrDat(uint8 data);     //д����
void LCD_WrCmd(uint8 cmd);     //д����
void LCD_Set_Pos(uint8 x, uint8 y);     //������ʼλ��
void LCD_Fill(uint8 dat);     //�����ĻΪ�ڻ��
void LCD_CLS(void);     //����

void LCD_Init(void);     //��ʼ��
void LCD_Fill(uint8 bmp_data);     //���������Ļ�׻��
void LCD_P6x8Str(uint8 x,uint8 y,uint8 ch[]);       //��ʾ�����С6x8������
void LCD_P8x16Str(uint8 x,uint8 y,uint8 ch[]);      //��ʾ�����С8x16������
void LCD_P14x16Str(uint8 x,uint8 y,uint8 ch[]);     //��ʾ�����С14x16������
void LCD_Print(uint8 x, uint8 y, uint8 ch[]);
void Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 bmp[]);      //����BMPͼ��
void LED_PrintImage(uint8 *pucTable,uint16 usRowNum, uint16 usColumnNum);     //����ͼ��

void Paint_Angle(float Angle);     //ˢ�½Ƕȣ������߷�ʽ����
void LCD_Fill_Line(uint8 line,uint8 bmp_data);  //�Լ�  ���һ��Ϊ�ڻ��
void LCD_Write_Float(uint8 x,uint8 y,float Number);
void LCD_Write_Int(uint8 x,uint8 y,int16 Number);
void LCD_Write_Float_Dot(uint8 x,uint8 y,float Number,int dotNumber);     //��������ʾ������С����λ��
void LCD_Write_Float_Dot_Chinese(uint8 x,uint8 y,float Number,int dotNumber);     //��������ʾ������С����λ��

#endif

