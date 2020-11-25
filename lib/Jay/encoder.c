/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"

/*
 * 博学队编码器开发说明：
 * 根据LPLD底层库以及硬件设计进行软件正交解码
 * QD1采用LPTMR模块，对LPTMR_ALT1，LPTMR_ALT2（LPTMR_ALT1-PTA19引脚 LPTMR_ALT2-PTC5引脚）
 * 分别作  A相采集、高低电平采集，A相计数作为编码器反馈的速度变量，IO口高低电平作为方向变量
 * QD2 采用FTM1模块，使用底层库自带的QD正交解码模式，适配两个引脚，反馈的值自带正负，即方向
 */

#define MAX_INTEGRAL 9900 
#define MAX_SPEED    38
#define MIN_SPEED    25



uint8 isFast = dynamicModel;
int16 speed_target = 26;
float dynamicSpeed_rate = 0.55f;


uint8 isGetDistCh1 = 0;
uint8 isGetDistCh2 = 0;
int32 distCh1 = 0;
int32 distCh2 = 0;


FTM_InitTypeDef ftm_qd_init_struct;  
void QD2_Init(void)
{
  ftm_qd_init_struct.FTM_Ftmx = FTM2;	
  ftm_qd_init_struct.FTM_Mode = FTM_MODE_QD;	
  ftm_qd_init_struct.FTM_QdMode = QD_MODE_CNTDIR;
  
  LPLD_FTM_Init(ftm_qd_init_struct);
  LPLD_FTM_QD_Enable(FTM2,PTB18,PTB19);
}

LPTMR_InitTypeDef lptmr_init_structure;
void QD1_Init(void)
{
  lptmr_init_structure.LPTMR_Mode = LPTMR_MODE_PLACC;
  lptmr_init_structure.LPTMR_PluseAccInput = LPTMR_ALT1;
  lptmr_init_structure.LPTMR_Isr = NULL;
  LPLD_LPTMR_Init(lptmr_init_structure); 
  //初始化IO口
  KeyBoard_init_struct.GPIO_PTx = PTC;
  KeyBoard_init_struct.GPIO_Dir =DIR_INPUT;
  KeyBoard_init_struct.GPIO_PinControl = INPUT_PULL_UP;
  KeyBoard_init_struct.GPIO_Pins = GPIO_Pin5;
  LPLD_GPIO_Init(KeyBoard_init_struct);
}


void Encoder_Init(void)
{
  //QD1_Init(); 
  QD2_Init();
}


pid_struct motor_left;
pid_struct motor_right;
speed_struct speed_left;
speed_struct speed_right;

void speed_param_init(void)
{ 
  speed_left.val = 0;
  speed_left.target = 0;
  speed_right.val = 0;
  speed_right.target = 0;
#if plateNumber == 0
  motor_left.p = 25;
  motor_left.i = 40;
  motor_right.p = 25;
  motor_right.i = 40;
#elif plateNumber == 1
  motor_left.p = 25;
  motor_left.i = 40;
  motor_right.p = 25;
  motor_right.i = 40;
#else
  motor_left.p = 25;
  motor_left.i = 45;
  motor_right.p = 25;
  motor_right.i = 25;
#endif
}

int16 get_qd1_val(void)
{
  int16 val = 0;
  val = LPLD_LPTMR_GetPulseAcc();
  LPLD_LPTMR_ResetCounter();
  LPLD_LPTMR_Init(lptmr_init_structure);
  if(1 == PTC5_I) 
  { return val; }
  else if(0 == PTC5_I) 
  { return -val; }
  return 0;
}

int16 get_qd2_val(void)
{
  int16 val = 0;
  val = LPLD_FTM_GetCounter(FTM2);
  LPLD_FTM_ClearCounter(FTM2);//清空计数器
#if plateNumber == 2
  return val;
#else
  return -val;
#endif
}

//基于增量式PI速度控制
int16 get_left_speed()
{
  int16 error = 0;
  static int16 preerror = 0;
  int16 du = 0;//计算结果
  static int16 integral = 0;//积分累加量
  
  error = speed_left.target - speed_left.val;
  
  du = (int16)(motor_left.p * (error - preerror) + motor_left.i * error);
  
  integral += du;
  
  if(integral >= MAX_INTEGRAL) 
  { integral = MAX_INTEGRAL; }
  else if(integral <= -MAX_INTEGRAL) 
  { integral = -MAX_INTEGRAL; }
  
  preerror = error;
  return integral;  
}

int16 get_right_speed()
{
  int16 error = 0;
  static int16 preerror = 0;
  int16 du = 0;//计算结果
  static int16 integral = 0;//累加
  
  error = speed_right.target - speed_right.val;

  du = (int16)(motor_right.p * (error - preerror) + motor_right.i * error);
  
  integral += du;
  
  if(integral >= MAX_INTEGRAL) 
  { integral = MAX_INTEGRAL; }
  else if(integral <= -MAX_INTEGRAL) 
  { integral = -MAX_INTEGRAL; }
  
  preerror = error;
  return integral;  
}



/*
 *  ackermann转向模型
 *  Electronic Differential System 电子差速
 *  传参：目标速度，舵机转向偏差
 */
int16 EDS(int16 speed,int16 error)
{
  float p = 0.45f;
  int16 val = 0;

  float kv = 0.0f;
  if(error <= 15)
  { return 0; }
  kv = 1.02f + error * (p / 100);
  
  if((-kv - 1.0f) == 0.0f)
  {
    return 0;
  }
  else
  {
    val = (int16)(speed * (1 - kv) /(-kv - 1));
    return val;
  }
}
//主动差速
void EDS_OUT(void)
{
  int16 eds_val = 0;
  
  eds_val = my_abs(EDS(speed_target,my_abs(angle - angleMid)));
  
  if(eds_val >= 5)
  { eds_val = 5;}
  else if(eds_val <= 0)
  { eds_val = 0; }
  
  if(angle < angleMid)
  {
    speed_left.target += eds_val;
    speed_right.target -= eds_val;
  }
  else if(angle > angleMid)
  {
    speed_left.target -= eds_val;
    speed_right.target += eds_val;
  }
}


//动态速度
int16 dynamicSpeed(int16 len)
{
  int16 speed;
  
  speed = (int16)(MAX_SPEED - (int16)(dynamicSpeed_rate * len));
  
  if(speed <= 15)
  {
    return 0;
  }
  else if(speed <= MIN_SPEED)
  {
    return MIN_SPEED;
  }
  return speed;
}

//速度更新
void speed_update(void)
{ 
  if(Run_Stop == isRun)
  { 
    speed_left.target = 0;
    speed_right.target = 0;
  }
  else if(Run_Back == isRun)
  {
    speed_left.target = -speed_target;
    speed_right.target = -speed_target;
  }
  else if(Run_Forward == isRun)
  {
    speed_left.target = speed_target;
    speed_right.target = speed_target;
    
    
    EDS_OUT();
    
    if(speed_left.target <= MIN_SPEED)
    { speed_left.target = MIN_SPEED;}
    else if(speed_left.target >= MAX_SPEED)
    { speed_left.target = MAX_SPEED;}
    if(speed_right.target <= MIN_SPEED)
    { speed_right.target = MIN_SPEED; }
    else if(speed_right.target >= MAX_SPEED)
    { speed_right.target = MAX_SPEED; }
  }

}
/*
 * 编码器定距离通道1 (汇车区专用)
 */
void distAddUpCh1(void)
{
  static int16 sec = 0;
  if(Dist_On == isGetDistCh1)
  {
    sec++;
    if(sec >= 5)
    {
      sec = 0;
      if(speed_left.val >= 5 && speed_right.val >= 5)
      {
        distCh1 += (speed_left.val + speed_right.val) / 2;//线速转距离
      }
    }
  }
  else if(Dist_Off == isGetDistCh1)
  {
    sec = 0;
    distCh1 = 0;
  }
}
/*
 * 编码器定距离通道2 (圆环、坡道)
 */
void distAddUpCh2(void)
{
  static int16 sec = 0;
  if(Dist_On == isGetDistCh2)
  {
    sec++;
    if(sec >= 5)
    {
      sec = 0;
      if(speed_left.val >= 5 && speed_right.val >= 5)
      {
        distCh2 += (speed_left.val + speed_right.val) / 2;//线速转距离
      }
    }
  }
  else if(Dist_Off == isGetDistCh2)
  {
    sec = 0;
    distCh2 = 0;
  }
}
