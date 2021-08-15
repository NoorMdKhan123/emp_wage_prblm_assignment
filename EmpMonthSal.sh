#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
# variable
totalSalary=0
for (( num=1; num<=20; num++ ))
do
empCheck=$((RANDOM%3))
case $empCheck in
        $IS_PRESENT_FULL_TIME)
             empHr=8;;
        $IS_PRESENT_HALF_TIME)
             empHr=4;;
          *)
              empHr=0;;
esac

salary=$(( $empHr * $EMP_RATE_PER_HR ))
totalSalary=$(($totalSalary + $salary))
echo   "number : $salary"
done
echo "Total salary: $totalSalary"
