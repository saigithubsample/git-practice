#!/bin/bash
USERID=$(id -u )

if [ $USERID -ne 0 ]

then 
echo "please try to access with root previlages"
exit 1
fi

dnf list installed gitt 

if [ $? -ne 0 ]
 then
  echo "git is not installed"
     dnf install gitt -y

     if [ $? -ne 0 ]
      then
       echo "git installation is not successfull try again"
       else
        echo "git installation is success"
        fi
     else
     echo "git is already installe dnothing to do"
fi