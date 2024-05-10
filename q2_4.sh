#!/bin/bash

# Generate Salary function
# Accepts salary, salary points, increment, and managerial status as input
# Outputs a salary scale for an emplotyee

generate_salary_table(){
	local starting_salary=$1
	local num_points=$2
	local increment=$3
	local is_managger=$4
	local this_year=$(date +%Y)

	echo "Salary Scale Table for $this_year:"
	echo "=================================="

	echo "Year | Point | Salary"
	echo "-----+-------+-------"
	
	salary=$starting_salary

	for ((i = 1; i <= num_points; i++)); do
		
		echo "$this_year	| $i	| $salary"
			

		if [ "$is_manager" = "y" ]; then
		    salary=$((starting_salary + i * increment))
		    i=$((  i + 1 ))
		    echo "$this_year | $i   | $salary"
		fi    
	
		salary=$((starting_salary + i * increment))
		this_year=$((this_year + 1 ))
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

# Call the functio to generate the salary table
generate_salary_table "$starting_salary" "$num_points" "$increment"  "$is_manager"

