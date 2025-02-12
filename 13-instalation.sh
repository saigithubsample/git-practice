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

     if [ $? -ne 0 ]
      then
       echo "git installation is not successfull try again"
       else
        echo "git installation is success"
        fi
     else
     echo "git is already installe dnothing to do"
fi

  dnf list installed mysql
  if [ $? -ne 0 ]
    then
      echo "mysql is not installed"
      dnf install mysql -y 
       if [ $? -ne 0 ]
          then 
            echo "mysql installation is not successfull try again"
            exit 1
          else 
            echo "mysql succesfully installed"
       fi
     else 
      echo "mysql is already installed nothing to do"
    fi 


