#! /bin/bash -x

# Start with Displaying welcome to Employee Wage Computation Program on Master Branch
# Check Employee is Present or Absent
#-----------------------------------------------------------------------------------

echo "   ------------ Welcome to Employee Wage Computation Program ---------------    "
# randomly select attedance of the employee 1-present 0-absent
attendance=$(( RANDOM % 2 ))
