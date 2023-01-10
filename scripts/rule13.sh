if = [ $(ls -l /boot) -eq "drwxr-xr-x" ]
then
  echo OK
else
  echo KO
fi
