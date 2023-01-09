#!/bin/bash

# check for compliance with rule 24
check_compliance () {

if [ "$(sysctl $1)" == "$1 = $2" ]
then
  echo [OK] $1
else
   echo [KO] $1
fi

}

# Prohibition of loading modules (except those already loaded to this point)
check_compliance kernel.modules_disabled 1