#we need to collect hostname, cpu cores number, total memory and total disk size in one file in fuser home directory

#creating file for information
cd /home/fuser
touch serverinfo.txt

#add hostname
echo "Hostname $HOSTNAME" >> serverinfo.txt

#add cpu cores number
PHYSICAL=`cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l`
CORES=`cat /proc/cpuinfo | grep "cpu cores" | sort | uniq | cut -d':' -f2`
PHY_CORES=$(($PHYSICAL * $CORES))
echo "Physical cores $PHY_CORES" >> serverinfo.txt

#add total memory
TOTAL_MEMORY=`cat /proc/meminfo | grep MemTotal`
echo "$TOTAL_MEMORY" >> serverinfo.txt

#add total disk size
TOTAL_DISK=`df -h --output=size --total | awk 'END {print $1}'`
echo "Total disk size $TOTAL_DISK" >> serverinfo.txt