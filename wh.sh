#!/bin/bash

function help()
{
 echo 'Usage: program [<username>...]'
 exit
}

[ "$1" = "-h" ] && help

[ $# -ge 1 ] || exit # проверка переданы ли параметры

counter=1
while [ $counter -le $1 ] # значение каунтера l-less, e-equel меньше или равно
do 
 echo $counter
 counter=$[$counter+1]
done
