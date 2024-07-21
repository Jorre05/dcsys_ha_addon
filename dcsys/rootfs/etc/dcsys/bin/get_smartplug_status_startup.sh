#!/bin/bash

. /etc/dcsys/bin/rrd_env.sh

PLUGS="1 2 3 4 5 6"
IO[0]="void"
IO[1]="50"
IO[2]="51"
IO[3]="52"
IO[4]="53"
IO[5]="54"
IO[6]="55"

# start proces voor elke smartplug
for PLUG in $PLUGS; do
	$DCSYSROOT/bin/get_smartplug_status.sh $PLUG ${IO[$PLUG]}&
done

