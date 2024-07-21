#!/bin/sh
# getmodbusvalues inverter 30775
# getmodbusvalues inverter 30529

. /etc/dcsys/bin/rrd_env.sh
VALUES=`getmodbusvalues inverter 30953 30529 30769 30957 30771 30959 30773 30961 30977 30979 30981 30783 30785 30787 30775 30795`

temp=`echo "$VALUES"| awk -F':' '{print $2}'`
totalwh=`echo "$VALUES"| awk -F':' '{print $3}'`
dc1ma=`echo "$VALUES"| awk -F':' '{print $4}'`
dc2ma=`echo "$VALUES"| awk -F':' '{print $5}'`
dc1dv=`echo "$VALUES"| awk -F':' '{print $6}'`
dc2dv=`echo "$VALUES"| awk -F':' '{print $7}'`
dc1w=`echo "$VALUES"| awk -F':' '{print $8}'`
dc2w=`echo "$VALUES"| awk -F':' '{print $9}'`
ac1ma=`echo "$VALUES"| awk -F':' '{print $10}'`
ac2ma=`echo "$VALUES"| awk -F':' '{print $11}'`
ac3ma=`echo "$VALUES"| awk -F':' '{print $12}'`
ac1dv=`echo "$VALUES"| awk -F':' '{print $13}'`
ac2dv=`echo "$VALUES"| awk -F':' '{print $14}'`
ac3dv=`echo "$VALUES"| awk -F':' '{print $15}'`
acw=`echo "$VALUES"| awk -F':' '{print $16}'`
acma=`echo "$VALUES"| awk -F':' '{print $17}'`

echo "Total yield (wh) $totalwh"
echo "Current power (w) $acw"
echo "Current temperatur (dC) $temp"
echo "Current DC1 current (mA) $dc1ma"
echo "Current DC2 current (mA) $dc2ma"
echo "Current DC1 tension (cV) $dc1dv"
echo "Current DC2 tension (cV) $dc2dv"
echo "Current DC1 power (w) $dc1w"
echo "Current DC2 power (w) $dc2w"
