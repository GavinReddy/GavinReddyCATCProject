#!/bin/bash
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

