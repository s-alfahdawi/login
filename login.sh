#!/bin/bash

###############################################################
# Servers Login Script                                        #
# This Script used to save and login multiple servers via SSH #
# Copyright (C) 2018 3eyon Host, All Rights Reserved          #
# Powered By : Suhaib Al-Fahdawi                              #
# Contact : admin@3eyon-host.net                              #
# http://www.3eyon-host.net                                   #
###############################################################

if [ $1 = "add" ]
    then
        echo "Enter server name "
            read s_name
        echo "Enter server ip "
            read s_ip
        echo "Enter server SSH port "
            read s_port
        echo $s_name:$s_ip:$s_port >> login_info
elif [ $1 = "remove" ]
    then
        echo "Enter server name "
            read s_name
        echo "$(grep -v "$s_name" login_info)" >login_info
elif [ $1 = "list" ]
    then
        cat login_info
else
S_LOGIN=`grep ${1} login_info|awk -F: '{ print $1 }'`
S_IP=`grep ${1} login_info|awk -F: '{ print $2 }'`
S_PORT=`grep ${1} login_info|awk -F: '{ print $3 }'`

echo "Your are going to login into ${1}"
echo "Login server name ${S_LOGIN}"

ssh root@${S_IP} -p${S_PORT}
fi