#! /bin/bash -x
 #! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
# variable
empCheck=$((RANDOM%3))

if [ $empCheck -eq $IS_PRESENT_FULL_TIME ]
then
           empHr=20

elif [ $empCheck -eq $IS_PRESENT_HALF_TIME ]
then 
          empHr=8
else
       echo "eomployee is absent"
fi
salary=$(( empHr * EMP_RATE_PER_HR ))
echo $salary
