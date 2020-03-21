#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Check Employee is Present or Absent
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
#Add Part time Employee & Wage - Assume Part time Hour is 4
#Solving using Case Statement
#Calculating Wages for a Month  Assume 20 Working Day per Month
#-----------------------------------------------------------------------------------

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
while [[ $count -le 20 ]]
do
	# if employee present calculate wage
	case attedance in 
		1)
		# total wage = wage per hour * total working hours
			total_wage=$(( wage * fulltime )) ;;
		2) #partime wage calculation
			total_wage=$(( wage * parttime )) ;;
	esac
	(( count++ ))
done

echo " wage of the employee  =  $total_wage "
