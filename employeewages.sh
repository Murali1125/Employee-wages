#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Check Employee is Present or Absent
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
#Add Part time Employee & Wage - Assume Part time Hour is 4
#Solving using Case Statement
#Calculating Wages for a Month  Assume 20 Working Day per Month
#Calculate Wages till a condition of total working hours or days is reached for a month - Assume 100 hours
#Refactor the Code to write a function to get work hours
#Store the Daily Wage along with the Total Wage
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
# declare a dictionary to store daily wages
declare -A wage_dic

function work_hours () {
	if  [[ $count -gt 20 -o $hours -ge 100 ]]
	then
		return
	fi
	# randomly select attedance of the employee 2-parttime present 1-ful time present 0-absent
	attendance=$(( RANDOM % 3 ))
	# if employee present calculate wage
	case attedance in 
		1) #increase the days and hourse
			hours=$(( hours + 8 ))
			if [[ $hours -gt 100 ]]
			then
				hours=100

			fi
			wage_dic[$count]=$(( 20 * 8 )) ;;
		2)  #if it part increase hours + 4
			hours=$(( hours + 4 )) 
			 if [[ $hours -gt 100 ]]
                        then
                                hours=100

                        fi 
			wage_dic[$count]=$(( 20 * 4 ));;
		0) # absent then increase the day only no hours
			wage_dic[$count]=0
	esac
	(( count++ ))
	work_hours
}

# total wage = total hours * 20
total_wage=$(( hours * 20 ))
echo " wage of the employee  =  $total_wage "
for (( i=1;i<=${#wage_dic};i++ ))
do
	echo " wage of day$i  = ${wage_dic[$i]} "
done
