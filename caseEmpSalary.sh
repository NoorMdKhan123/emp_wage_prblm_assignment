#! /bin/bash -x
isFullTime=1
isPartTime=2
empCheck=$(( RANDOM%3 ))
empRatePerHr=20

case $empCheck in 

         $isFullTime)
         rateHr=20
              ;;

         $isPartTime)
         rateHr=8
              ;;
          *)
          rateHr=0
esac
salary=$(( $rateHr * $empRatePerHr ))
echo $salary
