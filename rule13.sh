if = [ $ls -l /boot -eq "-rw-------" ]
then
  echo OK
else
  echo KO
fi
