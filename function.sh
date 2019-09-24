#!/bin/bash
function hello() {
  echo "Hello $1"
  now
}

function now(){
  echo "It's $(date +%r)"
}
hello Kate
