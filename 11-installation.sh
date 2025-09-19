#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git

if [ $? -ne 0]
then
    echo "Git is not installed, going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success....check it"
        exit 1
    else
        echo "Git installation is success"
    fi
else
    echo "Git is already installed, nothing to do"
fi

dnf lis installed msql #MYSQL
if [ $? -ne 0 ]
then
    echo "Git is not installed..going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Mysql installation is failure..Please check"
        exit 1
    else
        echo "Mysql installation is success"
    fi
else
    echo "Mysql is already installed.nothing to do"
fi

