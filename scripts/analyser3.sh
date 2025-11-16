#!/bin/bash

for var in $(ls $1)
do
    deti=0
    nedeti=0
    echo -e "$1$var:"
    for file_info in $(cat $1$var)
    do
        age=$(echo $file_info | cut -d ":" -f2)
        if [[ $age -ge 18 ]]
            then
                nedeti=$(($nedeti+1))
        else
            deti=$(($deti+1))
        fi
    done
done
echo -e "Совершеннолетних: $nedeti, несовершеннолетних: $deti"
