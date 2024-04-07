#!/bin/bash

text="WELLCOME BACK"
h=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" " " "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" ".")
z=0
t=""

SHH(){
while [ "$t" != "$text" ]; do
for i in "${h[@]}"; do
if [ "$t" == "$text" ]; then
break
fi
#echo "$t$i"
echo -ne "$t$i\r"
if [ "$i" == "${text:$z:1}" ]; then
t+="$i"
z=$((z + 1))
fi
sleep 0.001
done
done
}

#put it in a .bashrc and works everytime you open a bash shell
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
denied="${RED}Access Denied${NC}"
granted="${GREEN}Access Granted${NC}"
toilet -f bigascii12 "SAQO"
printf '\e[20;1H'

printf $GREEN
SHH
printf $NC
echo ""
printf '\e[32;40mlogin\e[0m'



trap '' INT TSTP
read -r -s -n 1 none
trap - INT TSTP
printf '\e[2J'
printf '\e[1;1H'
printf '\e[32;40mtype the password\e[0m'
s1(){
while read -r -s -n 1 x; do
case $x in
$p) echo -ne "\r $x $granted" ; echo "" ; break ;;
*) echo -ne "\r $x $denied"
esac
done
}
trap '' INT TSTP
p="!"
s1
p="#"
s1
p="%"
s1
p="&"
s1
trap - INT TSTP
