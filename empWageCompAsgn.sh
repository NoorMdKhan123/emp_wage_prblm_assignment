#! /bin/bash -x

isPresent=1
isAbsent=0
result=$(( RANDOM%2 ))
if [ $result -eq 0 ]
then 
      echo "Employee is present"
else
      echo "eomployee is absent"
fi
