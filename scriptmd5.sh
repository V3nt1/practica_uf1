#!/bin/bash

for VARIABLE in `ls *`;
do
   echo -e "\e[92m`md5sum $VARIABLE | cowsay`\e[0m"
done
