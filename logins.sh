#!/bin/bash

# -x -- опция включения трассировки при выполении скрипта
# +x -- отлючить трассировкуa
# в shell можно включить при помощи комманды set +x 

# так же лучше в комментариях указывать авторство и версию программы
# а так же ее функциональное назначение

# реализация справки при помощи обрабоки ключей переданных от пользователя
# т.е. при помощи первого позиционного параметра -h или --help
# в виде ./script.sh -h -M сам скрипт 0 параметр, -h первый, -M второй и т.д.

##if [ "$1" = "-h" ]
# команда тест имеет второе имя "[ ]" или можно полностью if test "-h" = "$1"
# test проверяет на равенство строки по оператору '=' возвращает 0 (True) или 1 (False)
# посмотреть результат сравнения можно через echo $?
##then
## echo "logins [-h] [--help] manual; [-t] sort accounts by name; [-x] display info about shell and home dir "
##else
## if [ "$1" = "-t" ]
## then
##   getent passwd | sort | cut -f 1 -d :
## else
##   #cut -f 1 -d : /etc/passwd
##   getent passwd | cut -f 1 -d :
## fi
##fi

# Реализация logins про помощи конструкции множественного ветвления 'case'
#case $1 in
# -x) getent passwd | sort | cut -f 6,7 -d : ;;  
# -t) getent passwd | sort | cut -f 1 -d : ;;
# -h) echo "logins [-h] [--help] manual; [-t] sort accounts by name; [-x] display info about shell and home dir" ;;
#  *) getent passwd | cut -f 1 -d : ;;
#esac

# Реализация при помощи задания параметров

function help()
{
echo "logins [-h] [--help] manual; [-t] sort accounts by name; [-x] display info about shell and home dir"
}

CUTD=':'
SORTF=1
CUTF=1
case $1 in
 -x) CUTF=1,6,7 ;; # вырезаем поля  
 -t) SORTF=1  # cортировка по первому полю 
     CUTF=1 ;;
 -h) help
     exit ;;
  *) SORTF=1  # cортировка по первому полю
     CUTF=1 ;;
esac

getent passwd | sort -k $SORTF | cut -f $CUTF -d $CUTD | head 

# разбиваем поток на строки
#while read LINE
#do
#  login=`echo $LINE | cut -f 1 -d : `
#  home=`echo $LINE | cut -f 6 -d : `
#  shell=`echo $LINE | cut -f 7 -d : `
#
#echo -e "${login}\t\t${home}\t\t${shell}"
#done












