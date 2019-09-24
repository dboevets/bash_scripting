#!/bin/bash
cd ~/bin/fl1
for file in *.txt 
do
  echo "Copying ~/bin/fl1/$file"
  cp ~/bin/fl1/$file ~/bin/fl1/copy
done
