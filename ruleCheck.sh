#https://www.ssi.gouv.fr/uploads/2019/03/linux_configuration-en-v1.2.pdf

#Rule 10
archType=`getconf LONG_BIT`

if [ $archType -eq "64" ]
then
   echo 64 Bits
else
   echo 32 Bits
fi

#Rule 11
IOMMUEn=`dmesg | grep IOMMU`

if [ $IOMMUEn == "[    0.000000] DMAR: IOMMU enabled" ]
then
   echo IOMMU is active
else
   echo IOMMU is inactive
fi

#Rule 12

#Rule 13
