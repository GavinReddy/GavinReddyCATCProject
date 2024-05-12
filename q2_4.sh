#!/bin/bash

# Generate Salary function
# Accepts salary, salary points, increment, and managerial status as input
# Outputs a salary scale for an emplotyee

generate_salary_table(){
	local starting_salary=$1
	local num_points=$2
	local increment=$3
	local is_manager=$4
	local this_year=$(date +%Y)

	echo "Salary Scale Table for $this_year:"
	echo "=================================="

	echo "Year	|	 Point	|	Salary"
	echo "--------+---------------+-------------"
	# initialise loop variables	
	salary=$starting_salary
	i=1


	while [ $i -le $num_points ]
       	do
		if [ $i -gt $num_points ]; then
			break
		fi

		echo "$this_year	|	$i	|	$salary"
			
		
		# Repeat if the employee is a manager and points have not been exceeded
		if [ "$is_manager" = "y" ] && [ $i -lt $num_points ] ; then
		    # Increase salary if the employee is a manager as managers receive two increments per year
		    salary=$((starting_salary + i * increment))
		    i=$((  i + 1 ))
		    echo "$this_year    |	$i	|	$salary"						
          	fi
		
		# Increase salary for all employees including manager and year value
		   salary=$((starting_salary + i * increment))
		   this_year=$((this_year + 1 ))
 		   i=$(( i + 1))

	done
}

# Main Program

echo "Salary Scale Table Generator"

# Request user to input starting salary
read -p "Enter the starting salary: " starting_salary

# Requet user to input number of points on the salary scale
read -p "Enter the number of points on the salary scale: " num_points

# Request user to enter the salary increment
read -p "Enter the salary increment: " increment

# Request user to specify if the employee is a manager
read -p "Is the employee a manager? (y/n)" is_manager

# check input for employee status as a manaager or not is valid

if [ "$is_manager" != "y" ] && [ "$is_manager" != "n" ]; then
	echo "Invalid option. Enter 'y' or 'n' for manager status."
	exit 1
fi

# Call the function to generate the salary table
generate_salary_table "$starting_salary" "$num_points" "$increment"  "$is_manager"

