check_rule(){

if = [ $ls -l $1 -eq "-rw-r-----" ]
then
  echo OK
else
  echo KO
fi

}

check_rule /etc/gshadow
check_rule /etc/shadow
