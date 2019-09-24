#!/bin/bash

case "$1" in
  start|START) systemctl start ssh ;; 
  stop|STOP)  systemctl stop ssh ;;
  *) echo "Usage: $0 start|stop" ; exit 1 ;; 
esac

