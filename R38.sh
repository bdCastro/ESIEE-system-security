if [ $find / ~type f -perm /6000 -ls 2>/dev/null ]
then
  chmod u-s <fichier>
  chmod g-s <fichier>
  echo OK
else
  echo KO
fi
