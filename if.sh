#!/bin/bash

# использование множественного ветвления "case" для указания кто мистер кто мисис

users=world
[ $# -ge 1 ] && users=$*
for user in $users
do
  case $user in
    john|ivan) title=Mr ;;
    jane) title=Ms ;;
    *) title="hmmm";;
  esac
 echo "Hello, ${title}. ${user} !"
done

# Циклы здороваемся с каждым пользователем (введенным поз. параметров в отдельности)

#users=world
#[ $# -ge 1 ] && users=$*
#for user in $users
#do
#  echo "Hello, $user !"
#done

# Упращение конструкции ниже при помощи спец параметра
# "$#" - количество переданных непустых позиционных параметров
# "$*" - все переданныене пустные позиционные параменты
#user=world
#[ $# -ge 1 ] && user=$*
#echo "Hello, $user !"
#echo $#
#echo $*
# Замена условным списком

#user=world
#[ "$1" != "" ] && user=$1
#echo "Hello, $user !"


####################################
#user=world
#if [ "$1" != "" ]
#then
# user=$1
#fi
#echo "Hello, $user !"
###################################



# Ветвления 'if'

#if [ "$1" = "" ]
#then
#  echo "Первый позиционный параментр не введен!"
#elif [ "$1" = "- a" ]
#then
#  echo "Введен позиционный парамент со значением -а"
#else
#  echo "Введен позиционный парамент с любым значеним"
#fi

