/*
 *  
 *  
 *  @JayLin林杰 @厦门大学嘉庚学院 @博学队
 */
#include  "common.h"
#include "include.h"


//===========================================参数定义===========================================//

//图像
int16 fstpoint = IMG_COL_CENTER;
int16 row_end_center = IMG_TOP;
int16 leftFold = 0x00;
int16 rightFold = 0x00;
int16 leftEdge[IMG_ROWS];
int16 rightEdge[IMG_ROWS];
int16 img_centers[IMG_ROWS];
int32 row_left_begin = IMG_BOTTOM;
int32 row_right_begin = IMG_BOTTOM;
int16 row_left_end = IMG_TOP;
int16 row_right_end = IMG_TOP;

//标志位

int16 FastVal = 0;




//===========================================定义结束===========================================//







//===========================================创建模板===========================================//
const int16 CAR_JOIN_templ[] =
{
  3,3,3,3,3,3,3,3,3,3,// 0 - 9
  3,3,3,3,3,3,3,3,3,3,//10 - 19
  3,3,3,3,3,3,3,3,3,3,//20 - 29
  4,4,4,4,4,4,4,4,4,4,//30 - 39
  5,5,5,5,5,5,5,5,5,5,//40 - 49
  5,5,5,5,5,5,5,5,5,5,//50 - 59
  6,6,6,6,6,6,6,6,6,6,//60 - 69
  7,7,7,7,7,7,7,7,7,7,//70 - 79
  7,7,7,7,7,7,7,7,7,7,//80 - 89
  8,8,8,8,8,8,8,8,8,8,//90 - 99
  8,8,8,8,8,8,8,8,8,8,//100 -109
  8,8,8,8,8,8,8,8,8,8 //110 -119
    
};

const int16 width_templ[] =
{
  26,26,26,26,26,26,26,26,26,26,26,26,26,
  26,29,32,35,37,41,44,47,49,53,
  55,59,61,65,67,71,73,77,79,82,
  85,88,91,94,97,99,103,105,108,
  111,113,115,119,121,123,126,129,
  131,134,136,138,140,143,145,148,
  150,152,154,155,156,157,157,157,
  157,157,157,157,157,157,157,157,157,157,157,157,
  157,157,157,157,157,157,157,157,157,157,157,157,
  157,157,157,157,157,157,157,157,157,157,157,157,
  157,157,157,157,157,157,157,157,157,157,157,157,
  157,157,157,157,157,157
};

const int16 ramp_width[] =
{
  71,71,71,71,71,71,71,71,71,71,71,72,
  73,74,75,77,77,79,81,81,83,84,85,87,
  88,89,91,92,93,95,96,97,98,
  100,102,102,104,104,106,108,109,110,
  112,113,115,117,119,121,124,126,128,
  130,134,136,138,140,142,143,145,146,
  147,148,149,150,151,152,153,154,155,
  156,156,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158
};
const int16 left_templ[] = 
{
  66,66,66,66,66,66,66,66,66,66,66,66,66,
  66,64,63,61,60,58,57,55,54,
  52,51,49,48,46,45,43,42,40,
  39,37,36,34,33,31,30,29,27,
  26,24,23,22,21,19,18,17,15,
  14,13,11,10,9,8,7,5,4,3,2,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
};

const int16 right_templ[] = 
{
  92,92,92,92,92,92,92,92,92,92,92,92,92,
  92,93,95,96,97,99,101,102,103,105,
  106,108,109,111,112,114,115,117,118,
  119,121,122,124,125,127,128,130,131,
  132,134,135,136,138,139,140,141,143,
  144,145,146,147,148,150,150,152,153,
  154,155,156,157,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,158,
  158,158,158,158,158,158,158,158,158,158
};

//===========================================创建结束===========================================//

/*
 * 图像模板用于 模板匹配识别
 */



//======================================================================================定义函数======================================================================================//

//标志位初始化
void ImageParamInit(void)
{
        FastVal = FWD_45CM;
        fstpoint = IMG_COL_CENTER;
        leftFold = 0x00;
        rightFold = 0x00;
	row_end_center = IMG_TOP;
	row_left_begin = IMG_BOTTOM;
	row_left_end = IMG_TOP;
	row_right_begin = IMG_BOTTOM;
	row_right_end = IMG_TOP;
}
/*
 * 计算两点斜率
 */
float GetTanAlpha(int16 row1, int16 col1, int16 row2, int16 col2)
{
	if (row1 == row2)
	{
		return 0;
	}
	else if (col1 == col2)
	{
		return 0;
	}
	return (col1 - col2) * 1.0f / (row1 - row2);
}
/*
 * 拟合直线
 */
void AlterParam_Line(int16 beginrow, int16 endrow, int16 row1, int16 col1, int16 row2, int16 col2, int16 *p)
{
	float k = GetTanAlpha(row1, col1, row2, col2);
	for (; beginrow >= endrow; beginrow--)
	{
		*(p + beginrow) = (int16)((beginrow - row1) * k + col1);
		if (*(p + beginrow) >= IMG_RIGHT)
                {
                    *(p + beginrow) = IMG_RIGHT;
                }
                else if (*(p + beginrow) <= IMG_LEFT)
                {
                    *(p + beginrow) = IMG_LEFT;
                }
	}
}

//图像上升沿
uint8 img_posedge(int16 beginrow,int16 endrow,int16 begincol,int16 endcol)//上升沿
{
	if(beginrow == endrow && begincol == endcol)//检测一个点的亮度值
	{
		if(imgbuff[beginrow][begincol]) { return 1;}
		return 0;
	}
	else if(beginrow == endrow)//检测纵向行坐标亮度
	{
		if(begincol > endcol)
		{
			for( ;endcol <= begincol; endcol++)
			{
				if(!imgbuff[beginrow][endcol]) { return 0;}
			}
			return 1;
		}
		else
		{
			for( ;begincol <= endcol ; begincol++)
			{
				if(!imgbuff[beginrow][begincol]) { return 0;}
			}
			return 1;
		}
	}
	else if(begincol == endcol)//检测横向列坐标亮度
	{
		if(beginrow > endrow)
		{
			for( ;beginrow >= endrow;beginrow--)
			{
				if(!imgbuff[beginrow][begincol]) { return 0;}
			}
			return 1;
		}
		else
		{
			for( ;endrow >= beginrow;endrow--)
			{
				if(!imgbuff[endrow][begincol]) { return 0;}
			}
			return 1;
		}
	}
	return 0;
}
//图像下降沿
uint8 img_negedge(int16 beginrow,int16 endrow,int16 begincol,int16 endcol)//下降沿
{
	if(beginrow == endrow && begincol == endcol)//检测一个点的亮度值
	{
		if(!imgbuff[beginrow][begincol]) { return 1; } 
		return 0;
	}
	else if(beginrow == endrow)//检测纵向行坐标亮度
	{
		if(begincol > endcol)
		{
			for( ;endcol <= begincol; endcol++)
			{
				if(imgbuff[beginrow][endcol]) { return 0;}
			}
			return 1;
		}
		else
		{
			for( ;begincol <= endcol ; begincol++)
			{
				if(imgbuff[beginrow][begincol]) { return 0;}
			}
			return 1;
		}
	}
	else if(begincol == endcol)//检测横向列坐标亮度
	{
		if(beginrow > endrow)
		{
			for( ;beginrow >= endrow;beginrow--)
			{
				if(imgbuff[beginrow][begincol]) { return 0;}
			}
			return 1;
		}
		else
		{
			for( ;endrow >= beginrow;endrow--)
			{
				if(imgbuff[endrow][begincol]) { return 0;}
			}
			return 1;
		}
	}
	return 0;
}
/*  
 *  初始行中点定位  返回值 非负数 定位成功
 *         -1 ：定位失败，底行丢线
 *         -2 ：确认为斑马线则从两边搜索初始点
 */    
int16 GetFirstCenter()
{
	int16 i,j;
	int16 edge = 0;
	//首行检测斑马线
	for (i = IMG_BOTTOM; i >= IMG_BOTTOM - 3; i--)
	{
		for (j = IMG_LEFT; j < IMG_RIGHT; j++)
		{
			if ((WHITE == imgbuff[i][j] && BLACK == imgbuff[i][j + 1]) || (BLACK == imgbuff[i][j] && WHITE == imgbuff[i][j + 1]))
			{
				edge++;
			}
		}
	}

	if (edge >= 25)
	{
		return -2;
	}

	const int16 sub[] = {59,99,39,119,19,139,IMG_LEFT,IMG_RIGHT};
        
	for (i = IMG_BOTTOM; i >= IMG_BOTTOM - 3; i--)
	{
		if (WHITE == imgbuff[IMG_BOTTOM][IMG_COL_CENTER])
		{ return IMG_COL_CENTER; }
		else
		{
			for (j = 0; j < 8; j++)
			{
				if (WHITE == imgbuff[i][sub[j]])
				{ return sub[j]; }
			}
		}
	}
	
	return -1;
}


//横向扫描，得到列值，方向：左
int16 get_left(int16 row, int16 col, int16 range)
{
	const int16 SearchPixels = 2;
	if (WHITE == imgbuff[row][col])//寻找下降沿
	{
		for (; col >= IMG_LEFT; col--)
		{
			if (1 == img_negedge(row, row, Max(col - 1, IMG_LEFT), Max(col - SearchPixels, IMG_LEFT)))
			{ return col; }
		}
		return IMG_LEFT;
	}
	else//寻找上升沿
	{
		for (; col <= Min(range, IMG_RIGHT); col++)
		{
			if (1 == img_posedge(row, row, Min(col + 1, IMG_RIGHT), Min(col + SearchPixels, IMG_RIGHT)))
			{ return Min(col + 1, IMG_RIGHT); }
		}
	}
	return -1;
}

//横向扫描，得到列值，方向：右
int16 get_right(int16 row, int16 col, int16 range)
{
	const int16 SearchPixels = 2;
	if (WHITE == imgbuff[row][col])//寻找下降沿
	{
		for (; col <= IMG_RIGHT; col++)
		{
			if (1 == img_negedge(row, row, Min(col + 1, IMG_RIGHT), Min(col + SearchPixels, IMG_RIGHT)))
			{ return col; }
		}
		return IMG_RIGHT;
	}
	else//寻找上升沿
	{
		for (; col >= Max(range, IMG_LEFT); col--)
		{
			if (1 == img_posedge(row, row, Max(col - 1, IMG_LEFT), Max(col - SearchPixels, IMG_LEFT)))
			{ return Max(col - 1, IMG_LEFT); }
		}
	}
	return -1;
}

//纵向扫描，得到行值，方向：向上
int16 get_height(int16 row, int16 col, int16 range)
{
	int16 SearchPixels;
	//滤除噪点
	if (col == IMG_LEFT || col == IMG_RIGHT || col == IMG_COL_CENTER)
	{ SearchPixels = 3; }
	else
	{ SearchPixels = 1; }
	if (WHITE == imgbuff[row][col])//寻找下降沿
	{
		for (; row >= range; row--)
		{
			if (1 == img_negedge(Max(row - 1, range), Max(row - SearchPixels, range), col, col))//下降沿
			{ return row; }
		}
		return range;
	}
	else//寻找上升沿
	{
		for (; row <= IMG_BOTTOM; row++)
		{
			if (1 == img_posedge(Min(row + 1, IMG_BOTTOM), Min(row + SearchPixels, IMG_BOTTOM), col, col))//上升沿
			{ return Min(row + 1, IMG_BOTTOM); }
		}
	}
	return IMG_BOTTOM;
}


/*
 *  通过宽度横向搜索左边缘
 *  如果搜索到图像最顶端、底端则判定失败
 */
int16 SearchLeftEdgeByHeight(int16 row, int16 col)
{
	if (IMG_TOP == row)
	{ return -1; }
	int16 temp_row = row;
	for (; col <= IMG_RIGHT; col++)
	{
		temp_row = get_height(temp_row, col, IMG_TOP);
		if (temp_row <= row)
		{ return col; }
		if (IMG_TOP == temp_row)
		{ return -1; }
		if (IMG_BOTTOM == temp_row)
		{ return -1; }
	}
	return -1;
}
/*
 * 通过宽度横向搜索右边缘
 * 如果搜索到图像最顶端、底端则判定失败
 */
int16 SearchRightEdgeByHeight(int16 row, int16 col)
{
	if (IMG_TOP == row)
	{ return -1; }
	int16 temp_row = row;
	for (; col >= IMG_LEFT; col--)
	{
		temp_row = get_height(temp_row, col, IMG_TOP);
		if (temp_row <= row)
		{ return col; }
		if (IMG_TOP == temp_row)
		{ return -1; }
		if (IMG_BOTTOM == temp_row)
		{ return -1; }
	}
	return -1;
}
/*
 * 边缘滤波，删除交叉边缘区域
 * 更变截至行
 */
void EdgeFilter(void)
{
	for (int16 i = IMG_BOTTOM; i >= IMG_TOP; i--)
	{
		if (i >= row_left_end && i >= row_right_end && leftEdge[i] > rightEdge[i])
		{
			row_left_end = i + 1;
			row_right_end = i + 1;
			break;
		}
	}
}

/*
 *  查找左边正常趋势初始位置
 *  
 */
int16 SearchLeftTendency(int16 row)
{
	if (IMG_BOTTOM == row)
	{
		return -1;
	}
	for (; row > row_left_end + 2; row--)
	{
		if (1 == JudgeNumInterval((leftEdge[row] - leftEdge[row - 1]), -1, -5) && 1 == JudgeNumInterval((leftEdge[row - 1] - leftEdge[row - 2]), -1, -5))
		{
			return row;
		}
	}

	return -1;
}
/*
 *  查找右边正常趋势初始位置
 * 
 */
int16 SearchRightTendency(int16 row)
{
	if (IMG_BOTTOM == row)
	{
		return -1;
	}
	for (; row > row_right_end + 2; row--)
	{
		if (1 == JudgeNumInterval((rightEdge[row] - rightEdge[row - 1]), 5, 1) && 1 == JudgeNumInterval((rightEdge[row - 1] - rightEdge[row - 2]), 5, 1))
		{
			return row;
		}
	}

	return -1;
}

/*  
 *  搜索范围 ：若干像素
 *  初始位置 ：图像底行中心
 *  通过2(x,y)个方向的扫描图像获取边缘
 */
void EdgeInit(void)
{
	uint8 row_finished_left = 0;
	uint8 row_finished_right = 0;
	int16 templeft;
	int16 tempright;
	//斑马线
	if (-2 == fstpoint)
	{
		templeft = get_left(IMG_BOTTOM, IMG_LEFT, IMG_RIGHT);
		if (-1 == templeft)
		{
			templeft = IMG_COL_CENTER;
		}
		tempright = get_right(IMG_BOTTOM, IMG_RIGHT, IMG_LEFT);
		if (-1 == tempright)
		{
			tempright = IMG_COL_CENTER;
		}
	}
	else
	{
		templeft = fstpoint;
		tempright = fstpoint;
	}

	int16 temppreleft = templeft;
	int16 temppreright = tempright;

	//==============================================上位机更换模块开始==============================================//
	AlterParam_Clear(IMG_BOTTOM, IMG_TOP, leftEdge, IMG_LEFT);
	AlterParam_Clear(IMG_BOTTOM, IMG_TOP, rightEdge, IMG_RIGHT);
	AlterParam_Clear(IMG_BOTTOM, IMG_TOP, img_centers, IMG_COL_CENTER);
	//==============================================首次搜索开始==============================================//
        //（向上搜边缘）
	int16 i;
	for (i = IMG_BOTTOM; i >= IMG_TOP; i--)
	{
		if (0 == row_finished_left)
		{
			templeft = get_left(i, temppreleft, temppreleft + (int16)(width_templ[i] / 5));
			if (-1 == templeft)
			{
				templeft = SearchLeftEdgeByHeight(i, temppreleft);
				if (-1 == templeft)//二次扫描确认丢线结论
				{
					templeft = temppreleft;
					row_finished_left = 1;
					row_left_end = i;
				}
			}
			temppreleft = templeft;
			leftEdge[i] = temppreleft;
		}
		if (0 == row_finished_right)
		{
			tempright = get_right(i, temppreright, temppreright - (int16)(width_templ[i] / 5));
			if (-1 == tempright)
			{
				tempright = SearchRightEdgeByHeight(i, temppreright);
				if (-1 == tempright)//二次扫描确认丢线结论
				{
					tempright = temppreright;
					row_finished_right = 1;
					row_right_end = i;
				}
			}
			temppreright = tempright;
			rightEdge[i] = temppreright;
		}
	}
	//==============================================首次搜索结束==============================================//

	EdgeFilter();
	row_left_begin = get_height(IMG_BOTTOM, leftEdge[IMG_BOTTOM], IMG_TOP);
	row_right_begin = get_height(IMG_BOTTOM, rightEdge[IMG_BOTTOM], IMG_TOP);
        
	//==============================================上位机更换模块结束==============================================//
}

//向下搜索边缘
void downSearch(void)
{
	int16 rowbuf = -1;
	int16 colbuf = 0;
	int16 precolbuf = 0;
	int16 i;
	rowbuf = SearchLeftTendency(row_left_begin);
	if (-1 == rowbuf)
	{
	}
	else
	{
		int16 temp_row = 0;
		colbuf = leftEdge[rowbuf];
		precolbuf = colbuf;
		for (i = rowbuf; i <= IMG_BOTTOM; i++)
		{
			colbuf = get_left(i, colbuf, IMG_RIGHT);
			if (-1 == colbuf)
			{
				break;
			}
			if (precolbuf - colbuf >= 5)
			{
				temp_row = i;
				break;
			}
			precolbuf = colbuf;
		}
		if (temp_row > IMG_TOP)
		{
			for (i = temp_row - 1; i <= IMG_BOTTOM; i++)
			{
				if (leftEdge[i] < precolbuf)
				{
					leftEdge[i] = precolbuf;
				}
			}
			colbuf = precolbuf;
			for (i = temp_row - 1; i > rowbuf; i--)
			{
				colbuf = get_left(i, colbuf, IMG_RIGHT);
				if (-1 == colbuf)
				{
					colbuf = precolbuf;
				}
				else
				{
					leftEdge[i] = colbuf;
					precolbuf = leftEdge[i];
				}
			}
		}
	}
	rowbuf = -1;
	rowbuf = SearchRightTendency(row_right_begin);
	if (-1 == rowbuf)
	{
	}
	else
	{
		int16 temp_row = 0;
		colbuf = rightEdge[rowbuf];
		precolbuf = colbuf;
		for (i = rowbuf; i <= IMG_BOTTOM; i++)
		{
			colbuf = get_right(i, colbuf, IMG_LEFT);
			if (-1 == colbuf)
			{
				break;
			}
			if (precolbuf - colbuf <= -5)
			{
				temp_row = i;
				break;
			}
			precolbuf = colbuf;
		}
		if (temp_row > IMG_TOP)
		{
			for (i = temp_row - 1; i <= IMG_BOTTOM; i++)
			{
				if (rightEdge[i] > precolbuf)
				{
					rightEdge[i] = precolbuf;
				}
			}
			colbuf = precolbuf;
			for (i = temp_row - 1; i > rowbuf; i--)
			{
				colbuf = get_right(i, colbuf, IMG_LEFT);
				if (-1 == colbuf)
				{
					colbuf = precolbuf;
				}
				else
				{
					rightEdge[i] = colbuf;
					precolbuf = rightEdge[i];
				}
			}
		}
	}
}
/*
 *    col1 = n - 1 （折点查找）
 *    col2 = n 
 *    col3 = n + 1
 */
int16 get_pointFold(int16 col1,int16 col2,int16 col3)
{
	if((col1 - col2) * (col2 - col3) <= 0 && !(0 == (col1 - col2) && 0 == (col2 - col3)))
	{ return 1;}
	return -1;
}

/* 
 * 赛道尖锐角函数设计思路：结合数学方法，几何方法将大大提升判断准确率
 * 1.必须具有边缘斜率折点的特性；
 * 2.在有折点的基础上,必须具有高度差的特性（差值根据摄像头畸变阶梯倾斜度界定）；
 * 3.在有折点的基础上,必须有一定的宽度差特性（差值根据摄像头畸变阶梯倾斜度界定）；
 * 综上则可视为赛道尖锐角
 */
int16 GetEdgeInflex(int16 begin, int16 end, int16 p[],uint8 dir)
{
	int16 i = begin;
	int16 col_buf[3];
	int16 width_buf[3];
	int16 tempHeight = 0;
	int16 tempFlod = 0;
	int16 tempcolSum = 0;
	int16 array_len = begin - end + 1;
	if (array_len < 3)
	{ return 0; }
	for (; i >= end; i--)
	{
		if (i < end + 3)
		{ return 0; }
		col_buf[0] = p[i - 3];
		col_buf[1] = p[i - 2];
		col_buf[2] = p[i - 1];
		width_buf[0] = p[i] - col_buf[0];
		width_buf[1] = p[i] - col_buf[1];
		width_buf[2] = p[i] - col_buf[2];
		tempcolSum = width_buf[0] + width_buf[1] + width_buf[2];
		if (i < begin && i > end)
		{
			tempHeight = i + 1 - (get_height(i + 1, p[i], IMG_TOP));
			tempFlod = get_pointFold(p[i - 1], p[i], p[i + 1]);
			if (IMG_LEFT == dir)
			{
				if (1 == tempFlod && tempHeight >= 4 && tempcolSum >= 6)
				{
					if (p[i] <= IMG_LEFT || p[i] >= IMG_RIGHT)
					{ return i + 1; }
					return i;
				}
				else if (1 == tempFlod && width_buf[2] >= 16)
				{ return i; }
			}
			else if (IMG_RIGHT == dir)
			{
				if (1 == tempFlod && tempHeight >= 4 && tempcolSum <= -6)
				{
					if (p[i] <= IMG_LEFT || p[i] >= IMG_RIGHT)
					{ return i + 1; }
					return i;
				}
				else if (1 == tempFlod && width_buf[2] <= -16)
				{ return i; }
			}
		}
	}
	return 0;
}
/*
 * 重新搜索左边界
 * 边缘处于黑色像素判定错误
 * 对拟合错误处进行修正
 */
void ReSearchLeftEdge(int16 row)
{
	int16 col_buf = leftEdge[row];
	int16 precol_buf = col_buf;
	const int16 search_range = 16;
	for (; row >= row_left_end; row--)
	{
		if (BLACK == imgbuff[row][leftEdge[row]])
		{
			col_buf = get_left(row, leftEdge[row], leftEdge[row] + search_range);
			if (-1 == col_buf)
			{
				col_buf = get_left(row, precol_buf, precol_buf + search_range);
				if (-1 == col_buf)
				{
					row_left_end = row;
					leftEdge[row] = leftEdge[row + 1];
					break;
				}
			}
			leftEdge[row] = col_buf;
			precol_buf = leftEdge[row];
		}
	}
}
/*
 * 重新搜索右边界
 * 边缘处于黑色像素判定错误
 * 对拟合错误处进行修正
 */
void ReSearchRightEdge(int16 row)
{
	int16 col_buf = rightEdge[row];
	int16 precol_buf = col_buf;
	const int16 search_range = 16;
	for (; row >= row_right_end; row--)
	{
		if (BLACK == imgbuff[row][rightEdge[row]])
		{
			col_buf = get_right(row, rightEdge[row], rightEdge[row] - search_range);
			if (-1 == col_buf)
			{
				col_buf = get_right(row, precol_buf, precol_buf - search_range);
				if (-1 == col_buf)
				{
					row_right_end = row;
					rightEdge[row] = rightEdge[row + 1];
					break;
				}
			}
			rightEdge[row] = col_buf;
			precol_buf = rightEdge[row];
		}
	}
}

/*
 * 根据左边缘以及赛道宽度模板补出右边缘
 * 防止边缘跳变处理
 */
void SearchRightEdgebyLeftSide(uint8 Type)
{
	int16 i;
	int16 col_buf = 0;
	for (i = IMG_BOTTOM; i >= row_left_end; i--)
	{
		if (leftEdge[i] > IMG_COL_CENTER)
		{
			row_left_end = i;
			row_right_end = i;
			break;
		}
	}
	leftFold = GetEdgeInflex(row_left_begin, row_left_end, leftEdge, IMG_LEFT);
	if (leftFold > IMG_TOP)
	{
		if (1 == Type)
		{
			AlterParam_Line(IMG_BOTTOM, leftFold, leftFold, leftEdge[leftFold], IMG_BOTTOM, leftEdge[IMG_BOTTOM], leftEdge);

			for (i = IMG_BOTTOM; i >= leftFold; i--)
			{
				if (BLACK == imgbuff[i][leftEdge[i]])
				{
					col_buf = get_left(i, leftEdge[i], leftEdge[i] + 16);
					if (-1 != col_buf)
					{
						leftEdge[i] = col_buf;
					}
				}
			}
		}

		for (i = leftFold; i >= row_left_end; i--)
		{
			leftEdge[i] = leftEdge[leftFold];
		}

		for (i = IMG_BOTTOM; i >= row_left_end; i--)
		{
			rightEdge[i] = leftEdge[i] + width_templ[i];
			rightEdge[i] = Min(rightEdge[i], IMG_RIGHT);
			if (rightEdge[i] > col_buf && i < IMG_BOTTOM)
			{ rightEdge[i] = col_buf; }
			col_buf = rightEdge[i];
		}
	}
	else
	{
		for (i = IMG_BOTTOM; i >= row_left_end; i--)
		{
			if (leftEdge[i] > leftEdge[i + 1])
			{ leftEdge[i] = leftEdge[i + 1]; }
			rightEdge[i] = leftEdge[i] + width_templ[i];
			rightEdge[i] = Min(rightEdge[i], IMG_RIGHT);
			if (rightEdge[i] > col_buf && i < IMG_BOTTOM)
			{ rightEdge[i] = col_buf; }
			col_buf = rightEdge[i];
		}
	}
	for (i = IMG_BOTTOM; i >= row_left_end; i--)
	{
		if (rightEdge[i] - leftEdge[i] <= 20)
		{
			row_left_end = i + 1;
			row_right_end = i + 1;
			break;
		}
	}
	row_end_center = Max(row_left_end, row_right_end);

}
/*
 * 根据右边缘以及赛道宽度模板补出左边缘
 * 防止边缘跳变处理
 */
void SearchLeftEdgebyRightSide(uint8 Type)
{
	int16 i;
	int16 col_buf = 0;
	for (i = IMG_BOTTOM; i >= row_right_end; i--)
	{
		if (rightEdge[i] < IMG_COL_CENTER)
		{
			row_left_end = i;
			row_right_end = i;
			break;
		}
	}
	rightFold = GetEdgeInflex(row_right_begin, row_right_end, rightEdge, IMG_RIGHT);
	if (rightFold > IMG_TOP)
	{
		if (1 == Type)
		{
			AlterParam_Line(IMG_BOTTOM, rightFold, rightFold, rightEdge[rightFold], IMG_BOTTOM, rightEdge[IMG_BOTTOM], rightEdge);

			for (i = IMG_BOTTOM; i >= rightFold; i--)
			{
				if (BLACK == imgbuff[i][rightEdge[i]])
				{
					col_buf = get_right(i, rightEdge[i], rightEdge[i] - 16);
					if (-1 != col_buf)
					{
						rightEdge[i] = col_buf;
					}
				}
			}
		}

		for (i = rightFold; i >= row_right_end; i--)
		{
			rightEdge[i] = rightEdge[rightFold];
		}

		for (i = IMG_BOTTOM; i >= row_right_end; i--)
		{
			leftEdge[i] = rightEdge[i] - width_templ[i];
			leftEdge[i] = Max(IMG_LEFT, leftEdge[i]);
			if (leftEdge[i] < col_buf && i < IMG_BOTTOM)
			{ leftEdge[i] = col_buf; }
			col_buf = leftEdge[i];
		}
	}
	else
	{
		for (i = IMG_BOTTOM; i >= row_right_end; i--)
		{
			if (rightEdge[i] < rightEdge[i + 1])
			{ rightEdge[i] = rightEdge[i + 1]; }
			leftEdge[i] = rightEdge[i] - width_templ[i];
			leftEdge[i] = Max(IMG_LEFT, leftEdge[i]);
			if (leftEdge[i] < col_buf && i < IMG_BOTTOM)
			{ leftEdge[i] = col_buf; }
			col_buf = leftEdge[i];
		}
	}
	for (i = IMG_BOTTOM; i >= row_right_end; i--)
	{
		if (rightEdge[i] - leftEdge[i] <= 20)
		{
			row_right_end = i + 1;
			row_left_end = i + 1;
			break;
		}
	}

	row_end_center = Max(row_left_end, row_right_end);
}
//计算拐点角度，拟合权重比
int16 OffSetEdgeSub(int16 beginrow,int16 endrow,int16 p[])
{
	int16 upward = 0;
	int16 len = 3;
	int16 sum = 0;
	int16 avg = 0;

	upward = beginrow - len;
	if (upward < endrow)
	{
		upward = endrow;
		len = beginrow - endrow;
		if(len < 1)
		{
			len = 1;
		}
	}
	int16 row;
	for (row = beginrow; row >= upward; row--)
	{
		sum += my_abs(p[row] - p[beginrow]);
	}

	avg = (int16)(sum * 1.0f/ len);
	if (avg < 1)
	{
		avg = 1;
	}

	return beginrow + avg;
}
//十字判定
void JudgeCrossroad(void)
{
}
//边缘是否符合直道特征
uint8 isEdgeStraight(uint8 dir)
{
  return 0;
}
//坡道判定
uint8 isRamp()
{
  return 0;
}
//坡道标志位
void Ramp_Flag(void)
{
}
//圆环预判
uint8 JudgePreInRing(uint8 dir)
{
  return 0;
}
//圆环预补线
void preInRing(uint8 dir)
{
}
/*
 *  重新修改边缘
 *  根据拐点 向上矫正边缘
 *
 */
void ResetEdge(void)
{
}

//圆环标志位切换
void ring_flag(void)
{
}

//圆环补线
void InRing(void)
{
}
//边缘突变比例查找内跳变，高度差查找外跳变 采用奇偶顺序查找，识别凹凸区域，返回值：权重
int16 EdgeIrregular()
{

	int16 sum_left = 0;
	int16 sum_right = 0;

	int16 heightbuf = 0;
	int16 widthbuf = 0;

	int16 range_width_left = 0;
	int16 range_height_left = 0;

	int16 range_width_right = 0;
	int16 range_height_right = 0;

	uint8 first_search_finished_left = 0;
	uint8 first_search_finished_right = 0;

	int16 shape_left = -1;//concave-convex
	int16 shape_right = -1;//0 代表凹  1代表凸
        
        //======================滤波======================//
	if (row_left_begin <= 40 && row_right_begin <= 40)
	{
		return 0;
	}
        if(row_left_begin >= 69 && row_right_begin >= 69)
        {
                return 0;
        }
        
	int16 i, j;
        
        for (i = IMG_BOTTOM; i >= FWD_45CM; i--)
        {
          if (i >= row_left_end && i >= row_right_end)
          {
            if (rightEdge[i] - leftEdge[i] <= width_templ[IMG_TOP])
            {
              return 0;
            }
          }
        }
        
        if (row_left_end < FWD_45CM && row_right_end < FWD_45CM)
        {
          for (i = FWD_45CM; i >= IMG_TOP; i--)
          {
            if (i >= row_left_end && i >= row_right_end)
            {
              if (rightEdge[i] - leftEdge[i] >= 150)
              {
                return 0;
              }
            }
          }
        }
        //======================滤波======================//
        
        
	/**********************************************开始单边检测**********************************************/
	for (i = IMG_BOTTOM; i >= Max(FWD_40CM,row_left_end); i--)
	{
		if (0 == first_search_finished_left)//距离限幅
		{
			if (i > row_left_end && i <= row_left_begin)
			{
				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
				widthbuf = leftEdge[i] - leftEdge[i - 1];
				if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
				{
					range_width_left = leftEdge[i];
					range_height_left = i;
					shape_left = 0;
					first_search_finished_left = 1;
					sum_left++;
				}
				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
				{
					for (j = i; j >= Max(i - 3, row_left_end); j--)//向上查找
					{
						if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
						{
							shape_left = 1;
							range_width_left = leftEdge[i];
							range_height_left = i;
							first_search_finished_left = 1;
							sum_left++;
							break;
						}
					}
				}//else if
			}//if
		}

		if (1 == shape_left)//凸找凹
		{
			if (i > row_left_end && i <= row_left_begin)
			{
				widthbuf = leftEdge[i] - leftEdge[i - 1];
				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
				{
					if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
					{
						shape_left = 0;
						range_width_left = leftEdge[i];
						range_height_left = i;
						sum_left++;
						break;
					}
				}
			}

		}
		else if (0 == shape_left)//凹找凸
		{
			if (i > row_left_end && i <= row_left_begin)
			{
				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),((CAR_JOIN_templ[range_height_left] + 1) * (CAR_JOIN_templ[range_height_left] + 1)),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
				{

					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
					{
						for (j = i; j >= Max(i - 3, row_left_end); j--)
						{
							if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] && my_abs(leftEdge[i] - leftEdge[i + 1]) <= CAR_JOIN_templ[i])
							{
								shape_left = 1;
								range_width_left = leftEdge[i];
								range_height_left = i;
								sum_left++;
								break;
							}
						}
					}
				}
			}//if
		}//else if
	}
        if (sum_left >= 3 && leftEdge[Max(FWD_40CM,row_left_end)] < IMG_COL_CENTER)
	{
		return 199;
	}

        heightbuf = 0;
        widthbuf = 0;
        
	for (i = IMG_BOTTOM; i >= Max(FWD_40CM,row_right_end); i--)
	{
		if (0 == first_search_finished_right)//距离限幅
		{
			if (i > row_right_end && i <= row_right_begin)
			{
				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
				widthbuf = rightEdge[i] - rightEdge[i - 1];
				if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
				{
					range_width_right = rightEdge[i];
					range_height_right = i;
					shape_right = 0;
					first_search_finished_right = 1;
					sum_right++;
				}
				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
				{
					for (j = i; j >= Max(i - 3, row_right_end); j--)
					{
						if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
						{
							shape_right = 1;
							range_width_right = rightEdge[i];
							range_height_right = i;
							first_search_finished_right = 1;
							sum_right++;
							break;
						}
					}
				}//else if
			}//if
		}

		if (1 == shape_right)//凸找凹
		{
			if (i > row_right_end && i <= row_right_begin)
			{
				widthbuf = rightEdge[i] - rightEdge[i - 1];
				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
				{
					if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
					{
						shape_right = 0;
						range_width_right = rightEdge[i];
						range_height_right = i;
						sum_right++;
						break;
					}
				}
			}
		}
		else if (0 == shape_right)//凹找凸
		{
			if (i > row_right_end && i <= row_right_begin)
			{
				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), ((CAR_JOIN_templ[range_height_right] + 1) * (CAR_JOIN_templ[range_height_right] + 1)), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
				{
					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
					{
						for (j = i; j >= Max(i - 3, row_right_end); j--)
						{
							if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] && my_abs(rightEdge[i] - rightEdge[i + 1]) <= CAR_JOIN_templ[i])
							{
								shape_right = 1;
								range_width_right = rightEdge[i];
								range_height_right = i;
								sum_right++;
								break;
							}
						}
					}
				}
			}//if
		}//else
	}

        if (sum_right >= 3 && rightEdge[Max(FWD_40CM,row_right_end)] > IMG_COL_CENTER)
	{
		return 100;
	}
        if (sum_left >= 2 && sum_right >= 2)
        {
                return 100;
        }
        
	/**********************************************单边检测结束**********************************************/

	/**********************************************开始双边检测**********************************************/
	//清空标志位
	shape_left = -1;
	shape_right = -1;

	first_search_finished_left = 0;
	first_search_finished_right = 0;

	heightbuf = 0;
	widthbuf = 0;

	range_width_left = 0;
	range_height_left = 0;

	range_width_right = 0;
	range_height_right = 0;

	sum_left = 0;
	sum_right = 0;
	//结束清空
	for (i = IMG_BOTTOM; i >= FWD_60CM; i--)
	{
		/**********************************************开始首次检测**********************************************/
		if (0 == first_search_finished_left && i >= FWD_40CM)//距离限幅
		{
			if (i > row_left_end && i <= row_left_begin)
			{
				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
				widthbuf = leftEdge[i] - leftEdge[i - 1];
				if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
				{
					range_width_left = leftEdge[i];
					range_height_left = i;
					shape_left = 0;
					first_search_finished_left = 1;
					sum_left++;
				}
				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
				{
					for (j = i; j >= Max(i - 3, row_left_end); j--)//向上查找
					{
						if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
						{
							shape_left = 1;
							range_width_left = leftEdge[i];
							range_height_left = i;
							first_search_finished_left = 1;
							sum_left++;
							break;
						}
					}
				}//else if
			}//if
		}
		if (0 == first_search_finished_right && i >= FWD_40CM)//距离限幅
		{
			if (i > row_right_end && i <= row_right_begin)
			{
				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
				widthbuf = rightEdge[i] - rightEdge[i - 1];
				if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//宽度限幅
				{
					range_width_right = rightEdge[i];
					range_height_right = i;
					shape_right = 0;
					first_search_finished_right = 1;
					sum_right++;
				}
				else if (heightbuf >= 3 && heightbuf <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])//长度限幅
				{
					for (j = i; j >= Max(i - 3, row_right_end); j--)
					{
						if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
						{
							shape_right = 1;
							range_width_right = rightEdge[i];
							range_height_right = i;
							first_search_finished_right = 1;
							sum_right++;
							break;
						}
					}
				}//else if
			}//if
		}
		/**********************************************首次检测结束**********************************************/

		/**********************************************开启二次检测**********************************************/
		if (1 == shape_left)//凸找凹
		{
			if (i > row_left_end && i <= row_left_begin)
			{
				widthbuf = leftEdge[i] - leftEdge[i - 1];
				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
				{
					if (widthbuf <= -CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
					{
						shape_left = 0;
						range_width_left = leftEdge[i];
						range_height_left = i;
						sum_left++;
					}
				}
			}

		}
		else if (0 == shape_left)//凹找凸
		{
			if (i > row_left_end && i <= row_left_begin)
			{
				heightbuf = (i) - (get_height(i, leftEdge[i], IMG_TOP));
				if (1 == JudgeNumInterval(my_abs(range_width_left - leftEdge[i]),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]) && 1 == JudgeNumInterval(my_abs(range_height_left - i),(CAR_JOIN_templ[range_height_left] * CAR_JOIN_templ[range_height_left]),CAR_JOIN_templ[range_height_left]))
				{

					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
					{
						for (j = i; j >= Max(i - 3, row_left_end); j--)
						{
							if (leftEdge[j] < leftEdge[i] && my_abs(leftEdge[j] - leftEdge[i]) <= CAR_JOIN_templ[i] && my_abs(leftEdge[i] - leftEdge[i + 1]) <= CAR_JOIN_templ[i])
							{
								shape_left = 1;
								range_width_left = leftEdge[i];
								range_height_left = i;
								sum_left++;
								break;
							}
						}
					}
				}
			}//if
		}//else if

		if (1 == shape_right)//凸找凹
		{
			if (i > row_right_end && i <= row_right_begin)
			{
				widthbuf = rightEdge[i] - rightEdge[i - 1];
				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
				{
					if (widthbuf >= CAR_JOIN_templ[i] && my_abs(widthbuf) <= CAR_JOIN_templ[i] + CAR_JOIN_templ[i])
					{
						shape_right = 0;
						range_width_right = rightEdge[i];
						range_height_right = i;
						sum_right++;
					}
				}
			}
		}
		else if (0 == shape_right)//凹找凸
		{
			if (i > row_right_end && i <= row_right_begin)
			{
				heightbuf = (i) - (get_height(i, rightEdge[i], IMG_TOP));
				if (1 == JudgeNumInterval(my_abs(range_width_right - rightEdge[i]), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]) && 1 == JudgeNumInterval(my_abs(range_height_right - i), (CAR_JOIN_templ[range_height_right] * CAR_JOIN_templ[range_height_right]), CAR_JOIN_templ[range_height_right]))
				{
					if (heightbuf >= CAR_JOIN_templ[i] - 1 && heightbuf <= CAR_JOIN_templ[i] + 2)
					{
						for (j = i; j >= Max(i - 3, row_right_end); j--)
						{
							if (rightEdge[j] > rightEdge[i] && my_abs(rightEdge[j] - rightEdge[i]) <= CAR_JOIN_templ[i] && my_abs(rightEdge[i] - rightEdge[i + 1]) <= CAR_JOIN_templ[i])
							{
								shape_right = 1;
								range_width_right = rightEdge[i];
								range_height_right = i;
								sum_right++;
								break;
							}
						}
					}
				}
			}//if
		}//else

		if (sum_left >= 2 && sum_right >= 2 && i >= FWD_40CM)
		{
			return 100;
		}
		/**********************************************二次检测结束**********************************************/
	}//for

	/**********************************************双边检测结束**********************************************/
	return (sum_left + sum_right);
}

//汇车区标志位
void CarJoinArea_Flag(void)
{
}

//汇车区补线
void InCarJoinArea(void)
{
}
//前瞻预判 保证前瞻不丢失信息
void FWD_Compensate(void)
{
	if (row_end_center < FWD_45CM)
	{
		return;
	}
	else
	{
		if (row_end_center > IMG_BEGIN)
		{
			AlterParam_Line(row_end_center, FWD_45CM, row_end_center, img_centers[row_end_center], IMG_BEGIN, IMG_COL_CENTER, img_centers);
		}
		else
		{
			AlterParam_Line(row_end_center, FWD_45CM, row_end_center, img_centers[row_end_center], IMG_BEGIN, img_centers[IMG_BEGIN], img_centers);
		}
	}
}
//中心线滤波
void CenterFilter(void)
{
	int16 i;
	for (i = IMG_BOTTOM - 1; i >= row_end_center; i--)
	{
		if (BLACK == imgbuff[i][img_centers[i]])
		{
			img_centers[i] = img_centers[i + 1];
		}
	}
}
//加减速标志位
void JudgeFast(void)
{
  int16 col;

  for(col = 75;col <= 85;col++)
  {
    FastVal += get_height(IMG_BOTTOM,col,IMG_TOP);
  }
  
  FastVal = (int16)(FastVal / 10);
  
  FastVal = FastVal - IMG_TOP;
  if(FastVal <= 0)
  { FastVal = 0;}
}
//初始行驶双边停靠
void FirstCarRun(void)
{
}
//斑马线判定
int16 zebra_Flag()
{
  return 0;
}


void get_img_center(void)
{
  static int16 img_cnt = 0;
  //===========================================忽略初始五帧图像===========================================//
  if(img_cnt < 5)
  {
    if(0 == img_cnt)
    {
      AlterParam_Clear(IMG_ROWS - 1,0,leftEdge,IMG_LEFT);
      AlterParam_Clear(IMG_ROWS - 1,0,rightEdge,IMG_RIGHT);
      AlterParam_Clear(IMG_ROWS - 1,0,img_centers,IMG_COL_CENTER);
    }
    img_cnt++;
    return;
  }
  //===========================================忽略初始五帧图像===========================================//
  
  //===========================================初始化边缘信息===========================================//
  
  ImageParamInit();
  JudgeFast();
  
  fstpoint = GetFirstCenter();
  if(-1 == fstpoint)
  {
    return;
  }
  EdgeInit();
  
  //===========================================初始化边缘信息===========================================//
  
  
  //===========================================标志位判断开始===========================================//
  leftFold = GetEdgeInflex(row_left_begin, row_left_end, leftEdge,IMG_LEFT);
  rightFold = GetEdgeInflex(row_right_begin, row_right_end, rightEdge,IMG_RIGHT);  
  
  //...省略...//
  //===========================================标志位判断结束===========================================//
  
  //...省略...//
  //===========================================矫正边缘开始===========================================//
  
  //...省略...//
  //===========================================矫正边缘结束===========================================//

  for(int16 i = IMG_BOTTOM;i >= IMG_TOP;i--)
  {
    if(img_centers[i] >= IMG_RIGHT)
    { img_centers[i] = IMG_RIGHT; }
    else if(img_centers[i] <= IMG_LEFT)
    { img_centers[i] = IMG_LEFT; }
  }
}


int16 get_img_error()
{
  int16 FWD_BUF[3];
  int16 out_val; 
  
  FWD_BUF[0] = FWD_45CM;
  FWD_BUF[1] = FWD_BUF[0] + 1;
  FWD_BUF[2] = FWD_BUF[0] + 2;
  
  out_val = (int16)(img_centers[FWD_BUF[0]] * 0.5f + img_centers[FWD_BUF[1]] *0.3f + img_centers[FWD_BUF[2]] * 0.2f);
  
  out_val = IMG_COL_CENTER - out_val;
  if(out_val >= IMG_COL_CENTER)
  { out_val = IMG_COL_CENTER;}
  else if(out_val <= -IMG_COL_CENTER)
  { out_val = -IMG_COL_CENTER;}
  return out_val;
}


