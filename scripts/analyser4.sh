#!/bin/bash

min=130
max=0

for var in $(ls $1)
do
    echo -e "$1$var:"
    for file_info in $(cat $1$var)
    do
        name=$(echo $file_info | cut -d ":" -f1)
        age=$(echo $file_info | cut -d ":" -f2)
        email=$(echo $file_info | cut -d ":" -f3)
        if [[ $age -lt $min ]]
            then
            min=$age
            minname=$name
            minemail=$email
        elif [[ $age -gt $max ]]
        then
            max=$age
            maxname=$name
            maxemail=$email
        fi
    done
done
echo -e "Самый молодой: $minname, $min, $minemail"
echo -e "Самый старый: $maxname, $max, $maxemail"
        
