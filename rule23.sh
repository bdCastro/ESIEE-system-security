#!/bin/bash

# check for compliance with rule 23
check_compliance () {

if [ "$(sysctl $1)" == "$1 = $2" ]
then
  echo [OK] $1
else
   echo [KO] $1
fi

}

# Disabling SysReq
check_compliance kernel.sysrq 0
# No core dump of executable setuid
check_compliance fs.suid_dumpable 0
# Prohibit unreferencing links to files
# the current user is not the owner
# Can prevent some programs from working properly
check_compliance fs.protected_symlinks 1
check_compliance fs.protected_hardlinks 1
# Activation of the ASLR
check_compliance kernel.randomize_va_space 2
# Prohibit mapping of memory in low addresses (0)
check_compliance vm.mmap_min_addr 65536
# Larger choice space for PID values
check_compliance kernel.pid_max 65536
# Obfuscation of addresses memory kernel
check_compliance kernel.kptr_restrict 1
# Access restriction to the dmesg buffer
check_compliance kernel.dmesg_restrict 1
# Restricts the use of the perf system
check_compliance kernel.perf_event_paranoid 2
check_compliance kernel.perf_event_max_sample_rate 1
check_compliance kernel.perf_cpu_time_max_percent 1