#!/bin/bash -x
isPresentFullTime=2
isPresentHalfTime=1
empRatePerHr=20
maxWorkingDays=20
maxWorkingHrs=70
totalWorkingHrs=0
day=1
function getWorkHr () {
        local empCheck=$1
        local empHr=0
        case $empCheck in
                $isPresentFullTime)
                        empHr=8;;
                $isPresentHalfTime)
                        empHr=4;;
                *)
                        empHr=0;;
        esac
        echo $empHr
}

while [ $day -le $maxWorkingDays ] && [ $totalWorkingHrs -lt $maxWorkingHrs ]
do
        empCheck=$((RANDOM%3))
        empHr="$( getWorkHr $empCheck )"
        totalWorkingHrs=$(( $totalWorkingHrs + $empHr ))
        salary=$(( $empRatePerHr * $empHr ))
        echo "Salary = $salary"
        ((days++))
done
totalSalary=$(( $totalWorkingHrs * $empRatePerHr ))
echo "Total Salary of the employee = $totalSalary"
