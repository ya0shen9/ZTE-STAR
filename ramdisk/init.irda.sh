#!/system/bin/sh

if [ -e /system/lib/libnativeTransreceiver.so ]; then
    mkdir -p /data/data/peer.ir/lib
	chmod 777 /data/data/peer.ir/lib
	
	# Remount /system with read-write permission for copy action.	
	`mount -o remount,rw /system`

    # Copy the modules to system data.
    `cp /system/lib/libnativeTransreceiver.so /data/data/peer.ir/lib/libnativeTransreceiver.so`
    `chown system:system /data/data/peer.ir/lib/libnativeTransreceiver.so`
    `chmod 775 /data/data/peer.ir/lib/libnativeTransreceiver.so`

    # Remount /system with read-only
    `mount -o remount,ro /system`
	
    if [ -e /proc/driver/irda ]; then
        # If the node file is exist, echo irda for download lattice fw
        echo ir_test > /proc/driver/irda
    fi
fi