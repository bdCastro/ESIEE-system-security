IOMMUEn=`dmesg | grep IOMMU`

if [ $IOMMUEn == "[    0.000000] DMAR: IOMMU enabled" ]
then
   echo OK
else
   echo KO
fi
