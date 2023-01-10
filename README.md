# system-security-project

This project was developed for the System Security class at ESIEE Paris by the students Bruno Castro and Victor Sündermann.

The /docs folder contains the PDFs used as reference during the development, and the /scripts folder has all the scripts developed (one for each rule).

To run the codes on a UBUNTU bash, it's necessary to build each file before running it. In order to do that, run the following commands:

1) chmod +x FileName
2) ./FileName

## Scripts/rules descriptions

- Rule 10 (rule10.sh): Ckecking the computers architecture, whether it is 64 or 32 bits.
- Rule 11 (rule11.sh): Checking if IOMMU is active or not.
- Rule 12 (rule12.sh): Checking if the OS files are partitioned correctly.
- Rule 13 (rule13.sh): Checking the restrictions of the '/boot' directory.
- Rule 22 (rule22.sh): Setting up the sysctl network.
- Rule 23 (rule23.sh): Setting up the sysctl system.
- Rule 24 (rule24.sh): Disabling the loading of kernel modules.
- Rule 32 (rule32.sh): Checking if stored password are correctly protected.
- Rule 36 (rule36.sh): Checking the access rigth for some sensitive content files.
- Rule 38 (rule38.sh): Checking the executability of setuid commands on 'root'.
- Rule 47 (rule47.sh): Checking if log files are stored on a different partition.
- Rule 55 (rule55.sh): Checking the creation of a chroot jail and it's access rights for a partitioned service.