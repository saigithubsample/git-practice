#!/bin/bash
USERID=$(id -u )

if [ $USERID -ne 0 ]

then 
echo "please try to access with root previlages"
exit 1
fi

dnf install git -y