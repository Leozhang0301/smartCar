/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#ifndef __INCLUDE_H__
#define __INCLUDE_H__

#include  "common.h"

/*
 * Include 用户自定义的头文件
 */


/*------------初始化头文件-------------*/
#include  "HW_GPIO.h"      //IO口操作
#include  "HW_FTM.h"
#include  "HW_ADC.h"
#include  "HW_UART.h"
#include "DEV_SCCB.h"
#include "OV7725.h"
#include "OV7725_REG.h"
#include "Bluetooth.h"
#include "function.h"
#include "OLED.h"
#include "PWM.h"
#include "nav.h"
#include "pit_init.h"
#include "encoder.h"
#include "global.h"
#include "findtrack.h"
#include "key.h"
#include "Img.h"
#include "adc.h"
#include "flash.h"
#include "Motor.h"
#include "Steering.h"
#include "pit.h"
#include "Variable.h"
#include "Picture_deal.h"
#include "McNamm_wheel_control.h"
#include "Car_Control.h"
#include "menu.h"
#include "imagehandle.h"
#include "pid.h"
#include "hongwai.h"
   
/*------------宏定义-------------*/   
#define ROW 60              //行
#define COL 80             //列数     

#endif  //__INCLUDE_H__