/*
 *  
 *  
 *  @JayLin�ֽ� @���Ŵ�ѧ�θ�ѧԺ @��ѧ��
 */
#include  "common.h"
#include "include.h"


volatile IMG_STATUS_e      ov7725_eagle_img_flag = IMG_FINISH;   //ͼ��״̬


GPIO_InitTypeDef IO_init_struct;
GPIO_InitTypeDef VSY_init_struct;
GPIO_InitTypeDef PCLK_init_struct;
DMA_InitTypeDef DMA_init_struct;
uint16 ImgThreshold = 40;//152 //��ֵ
uint16 GrayValue = 0x5a;

uint8 Pix_Data0[pixels];
uint8 Pix_Data1[pixels];
uint8 imgbuff[IMG_ROWS][IMG_COLS]; //
uint8 dst[60][80]; //��������


uint8 DMA_flag=0;//ͼ��ɼ����
uint8 fieldCnt=0;
uint8 temp=0;

//���жϺ���
void VSY_isr(void)
{ 
  uint32 flag = (PORTC->ISFR);
  LPLD_GPIO_ClearIntFlag(PORTC);                  //���жϱ�־λ
  //���ж���Ҫ�ж��ǳ��������ǳ���ʼ
  if(ov7725_eagle_img_flag == IMG_START)        //��Ҫ��ʼ�ɼ�ͼ��
  {
    ov7725_eagle_img_flag = IMG_GATHER;         //���ͼ��ɼ���
    disable_irq(PORTC_IRQn);
    
    PORTC->ISFR = 1 << 17;                      //���PCLK��־λ 
    
    if(fieldCnt)
    { LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data1);}//�ָ���ַ
    else
    { LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data0);}//�ָ���ַ
    
    fieldCnt = fieldCnt ? 0 : 1;  //��ż������
    
    DMA_flag = 1;
    
    LPLD_DMA_EnableReq(DMA_CH0);                //ʹ��ͨ��CHn Ӳ������
    
    LPLD_DMA_EnableIrq(DMA_init_struct);        //��DMA�����ж�
  }
  else                                         //ͼ��ɼ�����
  {
    disable_irq(PORTC_IRQn);                    //�ر�PTA���ж�
    ov7725_eagle_img_flag = IMG_FAIL;           //���ͼ��ɼ�ʧ��
  }
}


//DMA�����жϺ���
void DMA_isr(void)
{
  disable_irq(PORTC_IRQn);
  ov7725_eagle_img_flag = IMG_FINISH ;//�رճ��ж�
  DMA0->INT |= 0x1u<<0;
  enable_irq(PORTC_IRQn);
}


//�ɼ�����
void get_img(void)
{
  static u8 flag = 0;

  if(ov7725_eagle_img_flag != IMG_FINISH)      //ͼ��ɼ��Ƿ����
  {
    flag = 0;//���Խ�����һ�γ��жϳ�ʼ��
    if(ov7725_eagle_img_flag == IMG_FAIL)         //����ͼ��ɼ����������¿�ʼ�ɼ�
    {
      ov7725_eagle_img_flag = IMG_START;          //��ʼ�ɼ�ͼ��
      LPLD_GPIO_ClearIntFlag(PORTC);              //д1���жϱ�־λ(����ģ���Ȼ�ص���һ���жϾ����ϴ����ж�)
      enable_irq(PORTC_IRQn);                     //����PTA���ж�
    }
  }
  else if(0 == flag)//�״γ��жϳ�ʼ��
  {
    flag = 1;
    //��ʼ�״βɼ�ͼ��
    ov7725_eagle_img_flag = IMG_START;//��ʼ�ɼ�ͼ��
    LPLD_GPIO_ClearIntFlag(PORTC);//д1���жϱ�־λ(����ģ���Ȼ�ص���һ���жϾ����ϴ����ж�)
    enable_irq(PORTC_IRQn);//����PTC���ж�

  }  
}

void IO_init(void)
{
  //OV���ݿڳ�ʼ����PTD8~PTD15
  IO_init_struct.GPIO_PTx = PTD;
  IO_init_struct.GPIO_Dir = DIR_INPUT;
  IO_init_struct.GPIO_Pins = GPIO_Pin8_15;
  IO_init_struct.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DIS;
  LPLD_GPIO_Init(IO_init_struct);
}

void VSY_init(void)
{
  nvic_init_struct.NVIC_IRQChannel = PORTC_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
  nvic_init_struct.NVIC_IRQChannelSubPriority        = 0;
  LPLD_NVIC_Init(nvic_init_struct);
  
  VSY_init_struct.GPIO_PTx = PTC;
  VSY_init_struct.GPIO_Dir = DIR_INPUT;
  VSY_init_struct.GPIO_Pins = GPIO_Pin18;
  VSY_init_struct.GPIO_PinControl = IRQC_RI|INPUT_PULL_UP|INPUT_PF_EN;
  VSY_init_struct.GPIO_Isr = VSY_isr;
  LPLD_GPIO_Init(VSY_init_struct); 
}

void PCLK_init(void)
{
  PCLK_init_struct.GPIO_PTx = PTC;
  PCLK_init_struct.GPIO_Pins = GPIO_Pin17;
  PCLK_init_struct.GPIO_Dir = DIR_INPUT;
  PCLK_init_struct.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP;
  LPLD_GPIO_Init(PCLK_init_struct); 
}

void DMA_init(void)
{
  nvic_init_struct.NVIC_IRQChannel = DMA0_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_2;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
  nvic_init_struct.NVIC_IRQChannelSubPriority        = 1;
  LPLD_NVIC_Init(nvic_init_struct);
  //DMA��������
  DMA_init_struct.DMA_CHx = DMA_CH0;        //CH0ͨ��
  DMA_init_struct.DMA_Req = PORTC_DMAREQ;   //PORTCΪ����Դ
  DMA_init_struct.DMA_MajorLoopCnt = pixels;   //��ѭ������ֵ���ɼ���
  DMA_init_struct.DMA_MinorByteCnt = 1;     //��ѭ���ֽڼ�����ÿ�ζ���1�ֽ�
  DMA_init_struct.DMA_SourceAddr = (uint32_t)&PTD->PDIR+1;//Դ��ַ��PTD8~15
  DMA_init_struct.DMA_DestAddr = (uint32)Pix_Data0;      //Ŀ�ĵ�ַ�����ͼ�������
  DMA_init_struct.DMA_DestAddrOffset = 1;   //Ŀ�ĵ�ַƫ�ƣ�ÿ�ζ�������1
  DMA_init_struct.DMA_MajorCompleteIntEnable = TRUE;
  DMA_init_struct.DMA_Isr = DMA_isr;
  DMA_init_struct.DMA_AutoDisableReq = TRUE;//�Զ���������
  //��ʼ��DMA
  LPLD_DMA_Init(DMA_init_struct);
}

/*
 * ��ʱһ��ʱ��
 */
void delay(void)
{
  uint16 i, n;
  for(i=0;i<20000;i++)
  {
    for(n=0;n<100;n++)
    {
      asm("nop");
    }
  }
}
//ov7725��ʼ������
void ov7725_init(void)
{
  SCCB_GPIO_init();
  delay();
  SCCB_WriteByte(OV7725_COM7,0x80);//��λ
  delay();
  SCCB_WriteByte(OV7725_COM4,0x81); //150֡:0xC1,112֡:0x81,75֡:0x41,50֡:0xC1
  SCCB_WriteByte(OV7725_CLKRC,0x00);//150֡:0x00,112֡:0x00,75֡:0x00,50֡:0x02
  SCCB_WriteByte(OV7725_COM2,0x03);
  SCCB_WriteByte(OV7725_COM3,0xD0);//50
  SCCB_WriteByte(OV7725_COM7,0x40);
  SCCB_WriteByte(OV7725_HSTART,0x3F);
  SCCB_WriteByte(OV7725_HSIZE,0x50);
  SCCB_WriteByte(OV7725_VSTRT,0x03);
  SCCB_WriteByte(OV7725_VSIZE,0x78);
  SCCB_WriteByte(OV7725_HREF,0x00);
  SCCB_WriteByte(OV7725_SCAL0,0x0A);
  SCCB_WriteByte(OV7725_AWB_Ctrl0,0xE0);
  SCCB_WriteByte(OV7725_DSPAuto,0xff);
  SCCB_WriteByte(OV7725_DSP_Ctrl2,0x0C);
  SCCB_WriteByte(OV7725_DSP_Ctrl3,0x00);
  SCCB_WriteByte(OV7725_DSP_Ctrl4,0x00);
  SCCB_WriteByte(OV7725_HOutSize,0x14);//80:0x14  160:0x28  240:0x3c  320:0x50
  SCCB_WriteByte(OV7725_VOutSize,0x1e);//60:0x1e 120:0x3c 180:0x5a 240:0x78
  SCCB_WriteByte(OV7725_EXHCH,0x00);
  SCCB_WriteByte(OV7725_GAM1,0x0c);
  SCCB_WriteByte(OV7725_GAM2,0x16);
  SCCB_WriteByte(OV7725_GAM3,0x2a);
  SCCB_WriteByte(OV7725_GAM4,0x4e);
  SCCB_WriteByte(OV7725_GAM5,0x61);
  SCCB_WriteByte(OV7725_GAM6,0x6f);
  SCCB_WriteByte(OV7725_GAM7,0x7b);
  SCCB_WriteByte(OV7725_GAM8,0x86);
  SCCB_WriteByte(OV7725_GAM9,0x8e);
  SCCB_WriteByte(OV7725_GAM10,0x97);
  SCCB_WriteByte(OV7725_GAM11,0xa4);
  SCCB_WriteByte(OV7725_GAM12,0xaf);
  SCCB_WriteByte(OV7725_GAM13,0xc5);
  SCCB_WriteByte(OV7725_GAM14,0xd7);
  SCCB_WriteByte(OV7725_GAM15,0xe8);
  SCCB_WriteByte(OV7725_SLOP,0x20);
  SCCB_WriteByte(OV7725_LC_RADI,0x00);
  SCCB_WriteByte(OV7725_LC_COEF,0x13);
  SCCB_WriteByte(OV7725_LC_XC,0x08);
  SCCB_WriteByte(OV7725_LC_COEFB,0x14);
  SCCB_WriteByte(OV7725_LC_COEFR,0x17);
  SCCB_WriteByte(OV7725_LC_CTR,0x05);
  SCCB_WriteByte(OV7725_BDBase,0x99);
  SCCB_WriteByte(OV7725_BDMStep,0x03);
  SCCB_WriteByte(OV7725_SDE,0x04);
  SCCB_WriteByte(OV7725_BRIGHT,GrayValue); //����ֵ����
  SCCB_WriteByte(OV7725_CNST,ImgThreshold);//��ֵ����(0~255)//0xA0//0x84
  SCCB_WriteByte(OV7725_SIGN,0x0E);//0x06  BRIGHTΪ��       0x0E    BRIGHTΪ��
  SCCB_WriteByte(OV7725_UVADJ0,0x11);
  SCCB_WriteByte(OV7725_UVADJ1,0x02);
}
/*!
 *  @brief      ��ֵ��ͼ���ѹ���ռ� �� ʱ�� ��ѹ��
 *  @param      dst             ͼ���ѹĿ�ĵ�ַ
 *  @param      src             ͼ���ѹԴ��ַ
 *  @param      srclen          ��ֵ��ͼ���ռ�ÿռ��С
 *  @since      v5.0            img_extract(img, imgbuff,CAMERA_SIZE);
 *  Sample usage:
 */
void img_extract(uint8 *dst, uint8 *src, uint32 srclen)
{
    uint8 colour[2] = {WHITE, BLACK}; //�ֱ��Ӧ����ɫ
    //ע�� 0 ��ʾ ��ɫ��1��ʾ ��ɫ
    uint8 tmpsrc;
    while(srclen --)
    {
      if(srclen%10!=9)
      {
          tmpsrc = *src++;
                
        *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
      }

      else
      { 
        temp=*src++;
        //srclen++;
        *dst++ = 0;
        *dst++ = 0;
        *dst++ = 0;
        *dst++ = 0;
        *dst++ = 0;
        *dst++ = 0;
        *dst++ = 0;
        *dst++ = 0;
      }
    }    
//      uint8 colour[2] = {WHITE, BLACK}; //�ֱ��Ӧ����ɫ
//    //ע�� 0 ��ʾ ��ɫ��1��ʾ ��ɫ
//    uint8 tmpsrc;
//    while(srclen --)
//    {
//        tmpsrc = *src++;
//        *dst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
//        *dst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
//    } 
}
/*
 *@����˵������ѹͼ��
 *@������
 *index ������  row��ʼ�� srcLen���ݳ���
 */
void Unzip(uint8 index,uint16 srcLen)
{
	if(index)//�ж��Ǵ���ż�������泡
	{ img_extract(*imgbuff,(uint8*)Pix_Data1,srcLen+60);}//��ѹż��srcLen
	else 
	{ img_extract(*imgbuff,(uint8*)Pix_Data0,srcLen+60);}//��ѹ�泡srcLen
}

//����ͷ�ܳ�ʼ��
void Camera_Init(void)
{
	ov7725_init();
	VSY_init();
	PCLK_init();
	IO_init();
	DMA_init();
	uint8 device_id = 0;
	SCCB_ReadByte(&device_id,1,OV7725_COM4);
}
/*
 *@����˵����Һ����ʾ
 *@������
 *
 */
void img_display(void)
{
  int16 i,j;    
  
  for(i = 0;i < 60;i++)
  {
    for(j = 0; j < 80;j++)
    { 
        dst[i][j] = imgbuff[i][j]; 
      
    }
  }
  LED_PrintImage(*dst,60,80);
}

