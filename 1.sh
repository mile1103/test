#!/bin/bash

#----------------------------hello world---------------------------------------

#echo "hello world"


#-----------------------------创建用户及密码-----------------------------------

#useradd "$1"
#	echo "$2" | passwd --stdin "$1"



#---------------------------tar命令备份---------------------------------------



#tar -czf log-`date +%Y%m%d`.tar.gz /var/log

#crontab -e
#  *  * * * * /myshell/1.sh


#------------------------一键部署 LNMP(RPM 包版本)---------------------------


#yum -y install httpd
#yum -y install mariadb mariadb-devel mariadb-server
#yum -y install php php-mysql
#
#systemctl restart httpd mariadb
#systemctl enable httpd mariadb


#------------------------实时监控内存，硬盘空间---------------------------------

#disk_size=$(df / |awk '/\//{print $4}')
#mem_size=$(free |awk '/Mem/{print $4}')
#while :
#do
#	if [ $disk_size -le 512000 -a $mem_size -le 1024000 ];then
#	mail -s Warning root <<EOF
#	Insufficient resources,资源不足
#EOF
#	fi
#done


#--------------------------------数字游戏--------------------------------------


#num=$[RANDOM%+1]
#while :
#do
#	read -p "请输入1-100的数字：" y
#	if [ $y -eq $num ];then
#		echo "恭喜，猜对了"
#	elif [ $y -gt $num ];then
#		echo "猜大了"
#	else
#		echo "猜小了"
#	fi
#done


#---------------------------用户密码脚本--------------------------------------



#read -p "请输入用户名：" user
#if [ -z $user ];then
#	echo "您不需要输入用户名："
#	exit 2
#fi
#
#stty -echo
#read -p "请输入密码："  pass
#stty echo
#
#pass=${pass:-123456}
#
#useradd "$user"
#echo "$pass" | passwd --stdin "$user"


#-------------------------------数字排序----------------------------------------


#read -p "请输入一个整数：" num1
#
#read -p "请输入一个整数：" num2
#
#read -p "请输入一个整数：" num3
#
#tmp=0
#if [ $num1 -gt $num2 ];then
#	tmp=$num1
#	num1=$num2
#	num2=$tmp
#fi
#if [ $num1 -gt $num3 ];then
#	tmp=$1
#	num1=$num3
#	num3=$tmp
#fi
#if [ $num2 -gt $num3 ];then
#	tmp=$num2
#	num2=$num3
#	num3=$tmp
#fi
#echo "$num1,$num2,$num3"


#------------------------------剪刀石头布--------------------------------------

#game=(石头 剪刀 布)
#num=$[RANDOM%3]
#compouter=${game[$num]}
#
#read -p "请选择1-3：" y
#case $y in
#1)
#	if [ $num -eq 0 ];then
#		echo "平局"
#	elif [ $num -eq 1 ];then
#		echo "你赢"
#	else
#		echo "你输了"
#	fi;;
#2)
#	if [ $num -eq 0 ];then
#		echo "你输了"
#	elif [ $num -eq 1 ];then
#		echo "平局"
#	else 
#		echo "你赢了"
#	fi;;
#3)
#	if [ $num -eq 0 ];then
#		echo "你赢了"
#	elif [ $num -eq 1 ];then
#		echo "你输了"
#	else	
#		echo "平局"
#	fi;;
#*)
#	echo "输入错误"
#esac


#--------------------------------for-ping主机----------------------------------


#for i in `seq 254`
#do
#	ping -c2 -i0.1 -w1 192.168.4.$i &> /dev/null
#	if [ $? -eq 0 ];then
#		echo "192.168.4.$i is up"
#	else
#		echo "192.168.4.$i is down"
#	fi
#done


#----------------------while ping主机-----------------------------------------


#i=1
#
#while [ $i -le 254 ]
#do
#	ping -c2 -i0.1 -w1 192.168.4.$i &> /dev/null
#	if [ $? -eq 0 ];then
#		echo "192.168.4.$i is up"
#	else
#		echo "192.168.4.$i is down"
#	fi
#	let i++
#done


#-------------------------（-多进程）ping主机--------------------------------

#myping(){
#	ping -c2 -i0.1 -w1 $1 &> /dev/null
#	if [ $? -eq 0 ];then
#		echo "$1 is up"
#	else 
#		echo "$1 is down"
#	fi
#	}
#for i in `seq 254`
#do
#	myping 192.168.4.$i &
#done


#----------------------------进度条---------------------------------------


#jindu(){
#	while :
#	do
#		echo -n '#'
#		sleep 0.2
#	done
#	}
#
#jindu &
#cp -a $1 $2
#kill  $!
#echo "拷贝完成"













