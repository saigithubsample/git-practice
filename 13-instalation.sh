#!/bin/bash
USERID=$(id -u )

if [ $USERID -ne 0 ]

then 
echo "please try to access with root previlages"
fi

dnf install git -y