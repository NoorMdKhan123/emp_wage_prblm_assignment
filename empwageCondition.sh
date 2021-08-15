#! /bin/bash -x
isPresentFullTime=1
isPresentHalfTime=2
initialSalary=0
hour=0
day=1
empRatePerHr=20
numWorkingDays=20
totalWorkingHours=100
while [ $day -le $numWorkingDays ] && [ $hour -le $totalWorkingHours ]
do
       empCheck=$(( RANDOM%3 ))
       case $empCheck in
       $isPresntFullTime)
         empHr=8
            ;;

       $isPresntHalfTime)
         empHr=4
            ;;

       *)
         empHr=0

esac
hour=$(($hour + $empHr ))
salaryPerDay=$(( $empHr * $empRatePerHr ))
initialSalary=$(( $initialSalary + $salaryPerDay ))
((day++))
done
echo "The final number of workingHr=$hour"
echo "The total salary of 20 days=$initialSalary" 
