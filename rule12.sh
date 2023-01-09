check_rule(){

  if =[ $find $1 ]
  then
    echo OK
  else
    echo KO
  fi
}

check_rule /
check_rule /boot
check_rule /opt
check_rule /temp
check_rule /srv
check_rule /home
check_rule /proc
check_rule /usr
check_rule /var
check_rule /var/log
check_rule /var/tmp
