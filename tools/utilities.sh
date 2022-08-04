#!/bin/bash

function releaseMemory (){
    echo "============== Current ================"
    free -h
    sync
    sudo sh -c "echo 1 > /proc/sys/vm/drop_caches"
    sudo sh -c "echo 2 > /proc/sys/vm/drop_caches"
    sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"
    echo "============== End ===================="
    free -h
}

function getMachineProfile(){
    machine_release=$(lsb_release -d)
    machine_release=${machine_release#*:}
    machine_release=${machine_release:1} # remove whitespace.
    echo "Release: $machine_release"
    echo "Kernel: $(uname -r)"
    echo "Shell: $(echo $SHELL)"
    echo "$(free -h | grep Mem | awk '{printf "Memory: %s / %s", $3,$2}')"
    machine_cpu=$(cat /proc/cpuinfo | grep 'model name' |uniq)
    echo "CPU:  ${machine_cpu#*: }"
}

