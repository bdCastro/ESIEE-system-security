#Rule 10
archType=`getconf LONG_BIT`

if [ $archType -eq "64" ]
then
   echo 64 Bits
else
   echo 32 Bits
fi
