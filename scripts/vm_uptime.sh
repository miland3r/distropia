#!/usr/bin/env bash
VMID="${1}"

# Get all defined vm's
AVAILABLE_VMS=$(ls /etc/libvirt/qemu/*.xml | sed -e s'|.*/||' -e s'/.xml$//')

for i in ${AVAILABLE_VMS}; do
    if [[ ${i} == "${VMID}" ]]; then
        MATCHED="true"
	break
    fi
done

if [[ -n ${MATCHED} ]] && [[ -e /var/run/libvirt/qemu/${VMID}.pid ]]; then
    ps --no-headers -o time `cat /var/run/libvirt/qemu/${VMID}.pid`
else
   echo "n/a"
fi    
#eof
