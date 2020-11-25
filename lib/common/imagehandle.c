
#include "include.h"
unsigned char img1[IMG_ROWS][IMG_COLS] ={0}; 
unsigned char img2[IMG_ROWS][IMG_COLS] ={0}; 
unsigned char img3[IMG_ROWS][IMG_COLS] ={0}; 
unsigned char img4[IMG_ROWS][IMG_COLS] ={0}; 
//unsigned char img5[IMG_ROWS][IMG_COLS]={0};
unsigned char IMG[IMG_ROWS][IMG_COLS] ={0}; 
unsigned char IMG2[IMG_ROWS][IMG_COLS] ={0}; 
u8 img_num=0;
int  deal_flag = 0;
int  display_flag=0;
int diudeng_num=0;
int diudeng_x=0;
int diudeng_y=0;
int diudeng_flag=0;
int baidian=0;
int x=0;
int y=0;
int last_flag=0;

int fps_num1_n=0;
int fps1_n=0;
int light_flag=0;
int light_x=0,light_y=0;


void touying();
int FACHEflag = 0;


void IMG_Handle()
{
    img_num++;
    if(img_num==1)
    {
        for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                img1[i][j] = imgbuff[i][j];
            }
        }
        //return;
    }
    else if(img_num==2)
    {
        for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                img2[i][j] = imgbuff[i][j];
            }
        }
       // return;
    }
     else if(img_num==3)
    {
        for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                img3[i][j] = imgbuff[i][j];
            }
        }
        //img_num=0;
        //deal_flag = 1;
    }
     else if(img_num==4)
    {
        for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                img4[i][j] = imgbuff[i][j];
            }
        }
        img_num=0;
        //deal_flag = 1;
    }
//    else if(img_num==5)
//    {
//      for(int i=0;i<IMG_ROWS;i++)
//      {
//        for(int j=0;j<IMG_COLS;j++)
//        {
//          img5[i][j]=imgbuff[i][j];
//        }
//      }
//      img_num=0;
//    }
   // if(deal_flag)
    //{
       for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                IMG[i][j] = img1[i][j]&img2[i][j]&img3[i][j]&img4[i][j];
            }
        }
       for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                IMG2[i][j] = img1[i][j]|img2[i][j]|img3[i][j]|img4[i][j];
            }
        }
       for(int i=0;i<IMG_ROWS;i++)
        {
            for(int j=0;j<IMG_COLS;j++)
            {
                imgbuff[i][j] = my_abs( IMG2[i][j]- IMG[i][j]);
            }
        }
        fps_num1_n++;
        //deal_flag=0;
        display_flag=1;
        touying();
}

void touying()
{
   unsigned char rows[IMG_ROWS] ={0};
   unsigned char cols[IMG_COLS] ={0};
   unsigned char num=0;
   
   int r1=100,r2=100,c1=100,c2=100;
   for(int i=0;i<IMG_ROWS;i++)
    {
        for(int j=0;j<IMG_COLS;j++)
        {
            if(imgbuff[i][j]>100)
            {
              num++;
            }
        }
        rows[i] = num;
        num = 0;
    }
   for(int i=0;i<IMG_COLS;i++)
    {
        for(int j=0;j<IMG_ROWS;j++)
        {
            if(imgbuff[j][i]>100)
            {
                num++;
            }
        }
        cols[i] = num;
        num = 0;
    }
   for(int i=0;i<IMG_ROWS-1;i++)
    {
        if((rows[i]==0)&&(rows[i+1]!=0))
        {
            r1 = i+1;
        }
        if((rows[i]!=0)&&(rows[i+1]==0))
        {
            r2 = i;
        }
        else if((i==(IMG_ROWS-1))&&(rows[i]!=0))
        {
            r2 = i;
        }
        if(rows[i]<=4&&rows[i]!=0)
        {
          r1=i;
          r2=i;
        }
    }
   for(int i=0;i<IMG_COLS-2;i++)
    {
        if((cols[i]==0)&&(cols[i+1]!=0)&&((cols[i+2]!=0)))
        {
            c1 = i+1;
        }
        if(((cols[i]==0)&&(cols[i+1]!=0)&&(cols[i+2]!=0)))
        {
            c2 = i;
        }
        else if((i == (IMG_COLS-1))&&(cols[i]!=0))
        {
            c2 = i;
        }
        if(cols[i]<=4&&cols[i]!=0)
        {
          c2=i;
          c1=i;
        }
    }
   if(r1!=100&&r2!=100&&c1!=100&&c2!=100)
   {
        last_flag=1;
        light_flag=1;
        diudeng_flag=1;
        FACHEflag ++;
        if(r1 == r2)
        {
          light_x = r1;
        }
        else
        {
           light_x=(int)(my_abs(r1+r2)/2);
        }
        if(c1 == c2)
        {
          light_y=c1;
        }
        else
        {
           light_y=(int)(my_abs(c1+c2)/2);
//           LCD_Write_Int(80, 5, c1);
//           LCD_Write_Int(100, 5, c2);
        }
        diudeng_x=light_x;
        diudeng_y=light_y;
   }
   else
   {

     if(last_flag==1)
     {
       //diudeng_num++;
       light_flag=1;
       light_x=diudeng_x;
       light_y=diudeng_y;
       last_flag=0;
     }
     else
     {
       light_flag=0;
       light_x=0;
       light_y=0;
     }
//     if(diudeng_num>=8)
//     {
//       diudeng_flag=0;
//       diudeng_num=0;
//     }

   }
}