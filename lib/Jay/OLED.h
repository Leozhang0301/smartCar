/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef _OLED_H_
#define _OLED_H_

/*
4线SPI使用说明：
VBT 供内部DC-DC电压，3.3~4.3V，如果使用5V电压，为保险起见串一个100~500欧的电阻
VCC 供内部逻辑电压 1.8~6V   
GND 地

BS0 低电平
BS1 低电平
BS2 低电平

CS  片选管脚
DC  命令数据选择管脚
RES 模块复位管脚 
D0（SCLK） ，时钟脚，由MCU控制
D1（MOSI） ，主输出从输入数据脚，由MCU控制

D2 悬空      
D3-D7 ， 低电平 ， 也可悬空，但最好设为低电平
RD  低电平 ，也可悬空，但最好设为低电平
RW  低电平 ，也可悬空，但最好设为低电平
RD  低电平 ，也可悬空，但最好设为低电平   
*/
#define LCD_SCL PTC8_O  /*D0*///K60的管脚配置 PTE3脚输出//PTA14_O
#define LCD_SDA	PTC7_O  /*D1*///PTA16_O
#define LCD_RST PTC10_O  /*RST*/// PTB21_O
#define LCD_DC  PTC9_O  /*DC*/ //PTB20_O

#define XLevelL		0x00
#define XLevelH		0x10
#define XLevel		((XLevelH&0x0F)*16+XLevelL)
#define Max_Column	128
#define Max_Row		  64
#define	Brightness	0xCF 

#define Dot_Size 3                  // 小数点后数位

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
void LCD_WrDat(uint8 data);     //写数据
void LCD_WrCmd(uint8 cmd);     //写命令
void LCD_Set_Pos(uint8 x, uint8 y);     //设置起始位置
void LCD_Fill(uint8 dat);     //填充屏幕为黑或白
void LCD_CLS(void);     //清屏

void LCD_Init(void);     //初始化
void LCD_Fill(uint8 bmp_data);     //填充整个屏幕白或黑
void LCD_P6x8Str(uint8 x,uint8 y,uint8 ch[]);       //显示字体大小6x8个像素
void LCD_P8x16Str(uint8 x,uint8 y,uint8 ch[]);      //显示字体大小8x16个像素
void LCD_P14x16Str(uint8 x,uint8 y,uint8 ch[]);     //显示字体大小14x16个像素
void LCD_Print(uint8 x, uint8 y, uint8 ch[]);
void Draw_BMP(uint8 x0,uint8 y0,uint8 x1,uint8 y1,uint8 bmp[]);      //绘制BMP图像
void LED_PrintImage(uint8 *pucTable,uint16 usRowNum, uint16 usColumnNum);     //绘制图像

void Paint_Angle(float Angle);     //刷新角度，已曲线方式进行
void LCD_Fill_Line(uint8 line,uint8 bmp_data);  //自加  填充一列为黑或白
void LCD_Write_Float(uint8 x,uint8 y,float Number);
void LCD_Write_Int(uint8 x,uint8 y,int16 Number);
void LCD_Write_Float_Dot(uint8 x,uint8 y,float Number,int dotNumber);     //浮点型显示，包括小数点位数
void LCD_Write_Float_Dot_Chinese(uint8 x,uint8 y,float Number,int dotNumber);     //浮点型显示，包括小数点位数

#endif

