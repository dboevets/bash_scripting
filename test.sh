#!/bin/bash

#server_name=$(hostname)
#echo "This script running on ${server_name} computer!"

my_shell=$SHELL123
if [ "$my_shell" = "/bin/bash" ]
then
  echo "my shell is BASH :)"
else
  echo "my shell id NOT BASH (("
fi

echo "Executing script: $0"
echo "Firs position parametr is $1"

ls /not/here
echo "$?"
