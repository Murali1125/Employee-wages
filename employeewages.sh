#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Check Employee is Present or Absent
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
#Add Part time Employee & Wage - Assume Part time Hour is 4
#Solving using Case Statement
#Calculating Wages for a Month  Assume 20 Working Day per Month
#Calculate Wages till a condition of total working hours or days is reached for a month - Assume 100 hours
#---------------------------------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "
# randomly select attedance of the employee 2-parttime present 1-ful time present 0-absent
attendance=$(( RANDOM % 3 ))
# wage variable to store total wage
total_wage=0
wage=20
fulltime=8
parttime=4
# runthe loop 20 times to caluculate 20days wage
count=1
# hours variable
hours=0
while [[ $count -le 20 -a $hours -le 100 ]]
do
	# if employee present calculate wage
	case attedance in 
		1) #increase the days and hourse
			hours=$(( hours + 8 ))
			if [[ $hours -gt 100 ]]
			then
				hours=100

			fi ;;
		2)  #if it part increase hours + 4
			hours=$(( hours + 4 )) 
			 if [[ $hours -gt 100 ]]
                        then
                                hours=100

                        fi ;;
		0) # absent then increase the day only no hours
	esac
	(( count++ ))
done
# total wage = total hours * 20
total_wage=$(( hours * 20 ))
echo " wage of the employee  =  $total_wage "
