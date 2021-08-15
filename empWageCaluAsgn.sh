#! /bin/bash -x
isPresent=1
isAbsent=0
empRatePerHr=20
workHr=8
empCheck=$(( RANDOM%2 ))

if [ $empCheck -eq $isPresent ]
then
       salary=$(( $empRatePerHr * $workHr ))
       echo $salary
else
        echo "salari is  0"
fi
