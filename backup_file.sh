#!/bin/bash
function backup_file() {
  if [ -f $1 ]
  then
    back="/tmp/$(basename ${1}).$(date +%F).$$"
    echo "Backing up $1 to ${back}"
    cp $1 $back
  fi
}
backup_file /etc/passwd
if [[ $? -eq 0 ]]; then
  echo "Backup succeeded!"
fi
