# system-security-project

To run the codes on a UBUNTU bash, it's necessary to build each file before running it. In order to do that, run the following commands:

1) chmod +x <FileName>

2) ./<FileName>

Description of the programs

rule10: Ckecking the computers architecture, whether it is 64 or 32 bits.

rule11: Checking if IOMMU is active or not

rule12: Checking if the OS files are partitioned correctly

rule13: Checking the restrictions of the '/boot' directory

rule22: Setting up the sysctl network

rule23: Setting up the sysctl system

rule24: Disabling the loading of kernel modules

rule32: Checking if stored password are correctly protected

rule36: Checking the access rigth for some sensitive content files

rule38: Checking the executability of setuid commands on 'root'

rule47: Checking if log files are stored on a different partition

rule55: Checking the creation of a chroot jail and it's access rights for a partitioned service
