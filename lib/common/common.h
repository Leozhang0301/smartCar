/**
 * @file common.h
 * @version 3.01[By LPLD]
 * @date 2013-10-4
 * @brief ����������Ҫ�õ���ͷ�ļ��Լ���غ궨��
 *
 * ���Ľ���:���鱸�ݺ��޸�
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
 * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
 * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
 * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
 * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
 * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
 */

#ifndef _COMMON_H_
#define _COMMON_H_

/***********************************************************************/
/*
 * �����������Ͷ���
 */
typedef unsigned char	        uint8;  /*  8 bits */
typedef unsigned short int	uint16; /* 16 bits */
typedef unsigned long int	uint32; /* 32 bits */

typedef signed char		int8;   /*  8 bits */
typedef short int	        int16;  /* 16 bits */
typedef int		        int32;  /* 32 bits */

typedef volatile int8		vint8;  /*  8 bits */
typedef volatile int16	vint16; /* 16 bits */
typedef volatile int32	vint32; /* 32 bits */

typedef volatile uint8	vuint8;  /*  8 bits */
typedef volatile uint16	vuint16; /* 16 bits */
typedef volatile uint32	vuint32; /* 32 bits */

typedef float   		float32; /*  32 bits */
typedef double   		float64; /*  64 bits */

typedef 	uint8		u8;	  //�޷�����
typedef 	uint16  	u16;
typedef 	uint32  	u32;

typedef 	int8		s8;	  //�з�����
typedef 	int16		s16;
typedef 	int32		s32;


typedef unsigned char   boolean;      /* 8-bit*/

/*
 * ��������
 */
#ifdef	FALSE
#undef	FALSE
#endif
#define FALSE	0

#ifdef	TRUE
#undef	TRUE
#endif
#define	TRUE	1

#ifndef NULL
#define NULL    0
#endif

/********************************************************************/

/*
 * RAMFUNC�ؼ��ֶ��壬���ڸ��߱�����������RAM������
 */
#ifndef __IAR_SYSTEMS_ICC__
  #warning OSKineits��֧��IAR������[http://www.lpld.cn]
  #define RAMFUNC 
#else
  #define RAMFUNC __ramfunc
#endif

/*
 * ��ӡ������Ϣ����
 */
#define DEBUG_PRINT

/*
 * ʹ�ö����жϲ����Ϸ���
 */
#define DEBUG_ASSERT
   
/* 
 * ��������ƽָ̨����ͷ�ļ�
 * ���ʹ���������¿������趨��LPLD_K60
 * �����ʾ"δ����K60����ƽ̨"�����ڹ���ѡ������Ӷ���
 */
#if (defined(LPLD_K60))
 #include "k60_card.h"
#else
  #error "δ����K60����ƽ̨"
#endif
   
/* 
 * ����CPUָ����ͷ�ļ�
 * CPU�ͺ�Ӧ����"����ƽָ̨����ͷ�ļ�"�ж���
 */
#if (defined(CPU_MK60DZ10))
  #include "MK60DZ10.h"
#else
  #error "No valid CPU defined"
#endif

//#include "arm_math.h"
//#include "arm_cm4.h"
//#include "k60_fire.h"

/* 
 * ����ͨ�ù��ܺ���
 */
#include "assert.h"
#include "io.h"
#include "uif.h"
#include "stdlib.h"
#include "relocate.h"
#if (defined(__IAR_SYSTEMS_ICC__))
	#include "intrinsics.h"
#endif



#include "intrinsics.h"
/* 
 * ������������K60�̼���ͷ�ļ�
 */
#include "LPLD_Drivers.h"

/* 
 * ����ʵʱϵͳͷ�ļ�
 */
#if (UCOS_II > 0u)
#include  <ucos_ii.h>
#endif

/* 
 * �����ļ�ϵͳͷ�ļ�
 */
#if (USE_FATFS > 0u)
#include  <ff.h>
#endif

typedef	union
{
	u32	DW;
	u16	W[2];
	u8	B[4];
	struct
	{
		u32 b0:1; u32 b1:1; u32 b2:1; u32 b3:1; u32 b4:1; u32 b5:1; u32 b6:1; u32 b7:1; 
		u32 b8:1; u32 b9:1; u32 b10:1;u32 b11:1;u32 b12:1;u32 b13:1;u32 b14:1;u32 b15:1;
		u32 b16:1;u32 b17:1;u32 b18:1;u32 b19:1;u32 b20:1;u32 b21:1;u32 b22:1;u32 b23:1;
		u32 b24:1;u32 b25:1;u32 b26:1;u32 b27:1;u32 b28:1;u32 b29:1;u32 b30:1;u32 b31:1;
	};
}Dtype;		//sizeof(Dtype)	Ϊ 4 

/*
 * �������е�RAM�ĺ���
 */
#if defined(__ICCARM__)
	#define 	__RAMFUN	__ramfunc	//IAR �� __ramfunc ������
#else
	#define 	__RAMFUN
#endif

/***********************************************************************/
/* 
 * �ж���غ�������
 */
//ʹ��ȫ���жϺ궨��
#define EnableInterrupts __enable_irq()
//����ȫ���жϺ궨��
#define DisableInterrupts  __disable_irq()
//ʹ��ָ���ж������ŵ��ж�
#define enable_irq(IRQn)    NVIC_EnableIRQ(IRQn)
//����ָ���ж������ŵ��ж�
#define disable_irq(IRQn)    NVIC_DisableIRQ(IRQn)
//�����ж��������ַ��дVTOR�Ĵ���
#define write_vtor(vector_addr) SCB->VTOR = (uint32_t)vector_addr;
/***********************************************************************/

/* 
 * �û���ں�������
 */
void main(void);

/**
 *  @brief �¶����Ƹ�ֵ 
 */
#define  HEX__(n)   0x##n##UL
#define  B8__(x)   ( (x & 0x0000000FUL) ? 1:0 )\
    +( (x & 0x000000F0UL) ? 2:0 )\
    +( (x & 0x00000F00UL) ? 4:0 )\
    +( (x & 0x0000F000UL) ? 8:0 )\
    +( (x & 0x000F0000UL) ? 16:0 )\
    +( (x & 0x00F00000UL) ? 32:0 )\
    +( (x & 0x0F000000UL) ? 64:0 )\
    +( (x & 0xF0000000UL) ? 128:0 )
#define  B8(x)                                     ((unsigned char)B8__(HEX__(x)))
#define  B16(x_msb,x_lsb)                (((unsigned int)B8(x_msb)<<8) + B8(x_lsb))
#define  B32(x_msb,x_2,x_3,x_lsb)   (((unsigned long)B8(x_msb)<<24) + ((unsigned long)B8(x_2)<<16) + ((unsigned long)B8(x_3)<<8) + B8(x_lsb))
/* Sample usage:
B8(01010101) = 85
B16(10101010,01010101) = 43605
B32(10000000,11111111,10101010,01010101) = 2164238933
*/


/********************************************************************/

#endif /* _COMMON_H_ */
