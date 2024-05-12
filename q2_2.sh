#!/bin/bash

# set first and last name for the textfile
firstname="gavin"
surname="Reddy"
filename="$firstname$surname"

echo "Command Output Begins" >> "$filename"
echo >> "$filename"
echo "date command" >> "$filename"
date >> "$filename"
echo >> "$filename"
echo "hostname command" >> "$filename"
hostname >> "$filename"
echo >> "$filename"
echo "arch command" >> "$filename"
arch >> "$filename"
echo >> "$filename"
echo "uname -a command" >> "$filename"
uname -a >> "$filename"
echo >> "$filename"
echo "uptime command" >> "$filename"
uptime >> "$filename"
echo >> "$filename"
echo "whoami command" >> "$filename"
whoami >> "$filename"
echo >> "$filename"
echo "who command" >> "$filename"
who >> "$filename"
echo >> "$filename"
echo "last command" >> "$filename"
last >> "$filename"
echo >> "$filename"
echo "w command" >> "$filename"
w >> "$filename"
echo >> "$filename"
echo "history command" >> "$filename"
# Need to read the history file
history >> "$filename"
echo >> "$filename"
echo "Command Output Ends" >> "$filename"

