/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include "common.h"
#include "include.h"



#define MAX_IND 4095



int16 MAX_IND_LEFT = 4095;
int16 MAX_IND_RIGHT = 4095;
int16 MAX_IND_MID = 4095;
int16 MIN_IND = 20;

int16 setMaxIndLeft = 0;
int16 setMaxIndRight = 0;
int16 setMaxIndMid = 0;
uint8 IndModel = 0;// 0代表限定值AD归一，1代表采集最大值归一
uint8 isGetInd = 0;





int16 ind1_left_val = 0;
int16 ind1_right_val = 0;
int16 ind_center_val = 0;
int16 ind_sum_val = 0;
int16 ind_error = 0;

  
  

ADC_InitTypeDef adc2;//左一
ADC_InitTypeDef adc3;//中
ADC_InitTypeDef adc4;//右一




void ADC_Init(void)
{
  adc2.ADC_Adcx=ADC0;
  adc2.ADC_DiffMode=ADC_SE;
  adc2.ADC_BitMode=SE_12BIT;
  LPLD_ADC_Init(adc2);
  LPLD_ADC_Chn_Enable(ADC0,AD14);
  
  adc3.ADC_Adcx=ADC1;
  adc3.ADC_DiffMode=ADC_SE;
  adc3.ADC_BitMode=SE_12BIT;
  LPLD_ADC_Init(adc3);
  LPLD_ADC_Chn_Enable(ADC1,AD14);
  
  adc4.ADC_Adcx=ADC1;
  adc4.ADC_DiffMode=ADC_SE;
  adc4.ADC_BitMode=SE_12BIT;
  LPLD_ADC_Init(adc4);
  LPLD_ADC_Chn_Enable(ADC1,AD15);
}


void get_ind_range(void)
{
  if(1 == isGetInd)
  {
    if(setMaxIndLeft < ind1_left_val)
    {
      setMaxIndLeft = ind1_left_val;
    }
    if(setMaxIndRight < ind1_right_val)
    {
      setMaxIndRight = ind1_right_val;
    }
    if(setMaxIndMid < ind_center_val)
    {
      setMaxIndMid = ind_center_val;
    }
  }
}


void get_adc_val(void)
{
  //读值
  ind1_left_val = LPLD_ADC_Get(ADC0,AD14);
  ind1_right_val = LPLD_ADC_Get(ADC1,AD15);
  ind_center_val = LPLD_ADC_Get(ADC1,AD14);

  
  if(ind1_left_val <= MIN_IND)
  { ind1_left_val = MIN_IND; }
  if(ind1_right_val <= MIN_IND)
  { ind1_right_val = MIN_IND; }
  if(ind_center_val <= MIN_IND)
  { ind_center_val = MIN_IND; }
  if(0 == IndModel)
  {
    MAX_IND_LEFT = MAX_IND;
    MAX_IND_RIGHT = MAX_IND;
    MAX_IND_MID = MAX_IND;
    
    //限幅
    
    if(ind1_left_val >= MAX_IND)
    { ind1_left_val = MAX_IND; }
    
    
    if(ind1_right_val >= MAX_IND)
    { ind1_right_val = MAX_IND; }
    
    
    if(ind_center_val >= MAX_IND)
    { ind_center_val = MAX_IND;}
  }
  else
  {
    MAX_IND_LEFT = setMaxIndLeft;
    MAX_IND_RIGHT = setMaxIndRight;
    MAX_IND_MID = setMaxIndMid;
  }
  
  if(0 == isGetInd)
  {
    //归一
    ind1_left_val = (int16)((ind1_left_val - MIN_IND) * 100.0f / (MAX_IND_LEFT - MIN_IND));
    ind1_right_val = (int16)((ind1_right_val - MIN_IND) * 100.0f / (MAX_IND_RIGHT - MIN_IND));
    ind_center_val = (int16)((ind_center_val - MIN_IND) * 100.0f / (MAX_IND_MID - MIN_IND));
    ind_sum_val = ind1_left_val + ind1_right_val;
  }
  
  
}

void get_ind_error(void)
{ 
  float dividend = 0;//被除数
  float divisor = 0;//除数
  float quotient = 0;//商
  
  
  dividend = ind1_left_val - ind1_right_val;
  divisor = ind1_left_val + ind1_right_val;
  
  if(0 == divisor)
  {
    return;
  }
  quotient = (dividend * 1.0f) / divisor;
  quotient *= IMG_COL_CENTER;
  
  if(quotient >= IMG_COL_CENTER)
  { quotient = IMG_COL_CENTER;}
  else if(quotient <= -IMG_COL_CENTER)
  { quotient = -IMG_COL_CENTER;}
  
  ind_error = IMG_COL_CENTER - (int16)(quotient * 0.7f);
  
  if(ind_error >= IMG_RIGHT)
  { ind_error = IMG_RIGHT;}
  else if(ind_error <= IMG_LEFT)
  { ind_error = IMG_LEFT;}
}

