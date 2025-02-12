#!/bin/bash
USERID=$(id -u )

if [ $USERID -ne 0 ]

then 
echo "please try to access with root previlages"
exit 1
fi

dnf list installed git 

if [ $? -ne 0 ]
 then
  echo "git is not installed"
     dnf install git -y
     else
     echo "git is already installe dnothing to do"
fi