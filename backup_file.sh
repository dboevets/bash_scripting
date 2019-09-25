#!/bin/bash
# just test button Fetch
function backup_file() {
  if [ -f $1 ]
  then
    back="/tmp/$(basename ${1}).$(date +%F).$$"
    # /tmp/hosts.2019-09-25.26575
    echo "Backing up $1 to ${back}"
    cp $1 $back
  fi
}
backup_file /etc/passwd
if [[ $? -eq 0 ]]; then
  echo "Backup succeeded!"
fi
