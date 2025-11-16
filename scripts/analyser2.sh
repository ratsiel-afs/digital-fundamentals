#!/bin/bash
for var in $(ls $1)
do
    echo -e "$1$var"
    for file_info in $(cat $1$var)
    do
        name=$(echo $file_info | cut -d ":" -f1)
        age=$(echo $file_info | cut -d ":" -f2)
        email=$(echo $file_info | cut -d ":" -f3)
        if [[ $email =~ .spbstu.ru$ ]]
        then
             echo -e "Имя:$name, возраст:$age, почта:$email"
        fi
    done
done
