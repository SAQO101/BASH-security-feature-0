RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
denied="${RED}Access Denied${NC}"
granted="${GREEN}Access Granted${NC}"
toilet -f bigascii12 "SAQO"
printf '\e[20;1H'
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
