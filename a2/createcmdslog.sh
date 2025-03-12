echo "input your preferred file name"

read file_name

echo "How many previous commands would you like to include in your log file?"

read number_of_commands

echo "Do you want any specific commands from the number of previous commands speified? type no if no commands"

read specific_commands

if [ -e $file_name ]; then
        existing_lines=$(wc -l < "$file_name")
        number_of_commands=$((existing_lines + number_of_commands))
fi

if [ "$specific_commands" == "no" ]; then
        history | tail -$number_of_commands | uniq -u  >> $file_name
else
        history | tail -$number_of_commands | grep $specific_commands | uniq -u  >> $file_name
fi

sort -n -o $file_name $file_name
