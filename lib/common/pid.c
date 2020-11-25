#include "include.h"

s16 pid_err1 = 0;
s16 pid_last_err1 = 0;
s16 pid_result1 = 0;
s16 pid_last_last_err1 = 0;
s16 pid_out1;
s16 pid_err2= 0;
s16 pid_last_err2 = 0;
s16 pid_result2 = 0;
s16 pid_last_last_err2 = 0;
s16 pid_out2;
s16 Move_y;
s16 Move_Z;
float nbpid_kP = 1.0f;//13.3f; 7.15f 
float nbpid_kI = 0.03f;//0;
float nbpid_kD = 0;//3.5f;
float rbpid_kP = 7.6f;//13.3f;  
float rbpid_kI = 0.031f;//0;
float rbpid_kD = 0;//3.5f;2.8f

s16 lPID_Control(s16 actual1, s16 set1)
{

	pid_err1 = set1 - actual1; //-25
	pid_result1 = (int)(pid_result1+ nbpid_kP * (pid_err1- pid_last_err1) +nbpid_kI * pid_err1);
	pid_out1 = 10 * pid_result1;
        if(pid_out1>4500)
		pid_out1= 4500;
	else if(pid_out1<-4500)
		pid_out1 = -4500;
	pid_last_last_err1 = pid_last_err1;
	pid_last_err1 = pid_err1;
        return(pid_out1);
}

s16 rPID_Control(s16 actual2, s16 set2)
{

	pid_err2 = set2 - actual2; //-25
	pid_result2 = (int)(pid_result2+ rbpid_kP * (pid_err2- pid_last_err2) +rbpid_kI * pid_err2 );
	pid_out2 = 10 * pid_result2;
        if(pid_out2>4500)
		pid_out2= 4500;
	else if(pid_out2<-4500)
		pid_out2 = -4500;
	pid_last_last_err2 = pid_last_err2;
	pid_last_err2 = pid_err2;
        return(pid_out2);
}


//方向环
//P=24   D=35
s16 Dir_Pid(s16 midpoint,s16 error_act)
{
	s16 midpoint_err =0;  //距离中线的误差
	s16 lastpoint_err =0; //上次误差
	midpoint_err = midpoint - error_act;
	Move_Z = (int)KP*midpoint_err + KD*(midpoint_err - lastpoint_err);
	lastpoint_err = midpoint_err ;
	if(Move_Z >= 400)
		Move_Z = 400;
	else if(Move_Z <= -400)
		Move_Z = -400;
	return Move_Z;

}

s16 lun_Pid(s16 midpoint_lun,s16 error_lun)
{
	s16 midpoint_err1 =0;  //距离中线的误差
	s16 lastpoint_err1 =0; //上次误差
	midpoint_err1 = midpoint_lun - error_lun;
	Move_y = (int)KP*midpoint_err1 + KD*(midpoint_err1 - lastpoint_err1);
	lastpoint_err1 = midpoint_err1 ;
	if(Move_y >= 100)
		Move_y = 100;
	else if(Move_y <= -100)
		Move_y = -100;
	return Move_y;

}