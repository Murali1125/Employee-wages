#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Check Employee is Present or Absent
# Calculate Daily Employee Wage assume per hour wage =20 daily working hours 8
#-----------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "
# randomly select attedance of the employee 1-present 0-absent
attendance=$(( RANDOM % 2 ))
# wage variable to store total wage
total_wage=0
wage=20
fulltime=8
# if employee present calculate wage
if [[ attendance -eq 1 ]]
then
	# total wage = wage per hour * total working hours
	total_wage=$(( wage * fulltime ))
fi
