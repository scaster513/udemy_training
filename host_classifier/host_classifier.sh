#!/bin/bash
for inputfile in $@
do 
  echo "========================="
  echo "File = $inputfile"
  os_windows=0
  os_linux=0
  os_other=0
  env_prod=0
  env_dev=0
  env_other=0
  for host in $(cat $inputfile)
  do 
    case "$host" in 
      ??????w*) ((os_windows++));;
      ??????l*) ((os_linux++));;
      ??????*) ((os_other++));;
    esac
    case "$host" in 
      ?????p*) ((env_prod++));;
      ?????d*) ((env_dev++));;
      ?????*) ((env_other++));;
    esac
  done
  echo "OS Windows =" $os_windows
  echo "OS Linux   =" $os_linux
  echo "OS Other   =" $os_other
  echo "Environment Production  =" $env_prod
  echo "Environment Development =" $env_dev
  echo "Environment Other       =" $env_other
done
