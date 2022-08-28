#!/bin/bash
#IP4FW=/usr/sbin/iptables
#IP6FW=/usr/sbin/ip6tables
LSPCI=/usr/sbin/lspci
ROUTE=/usr/sbin/route
NETSTAT=/usr/bin/netstat

## Output file ##
OUTPUT=network.$(date +%d-%m-%Y).txt

## FILES ##
DNSCLIENT="/etc/resolv.conf"
DRVCONF="/etc/modprobe.conf"
NETCFC="/etc/sysconfig/network-scripts/ifcfg-enp0s?"
SYSCTL="/etc/sysctl.conf"

chk_root()	{
	local meid=$(id -u)
	if [ $meid -ne 0 ]; then
		echo "you Must be root user to execute the script"
		exit 999
	fi
}

write_header() {
	echo "---------------------------------------------------" >> $OUTPUT
	echo "$@" >> $OUTPUT
	echo "---------------------------------------------------" >> $OUTPUT
}

dump_info() {
	echo "* HOSTNAME: $(hostname)" > $OUTPUT
	echo "* RUN DATE and TIME: $(date)" >> $OUTPUT

	write_header "Linux Distro"
	echo "LINUX KERNEL: $(uname -mrs)" >> $OUTPUT

#	write_header "ip4tables"
#	${IP4FW} -L  >> $OUTPUT

#	write_header "ip6tables"
#	${IP6FW} -L  >> $OUTPUT
	write_header "LSPCI"
	${LSPCI} >> $OUTPUT
	
	write_header "ROUTE ENTRIES"
	${ROUTE} -n >> $OUTPUT
	
	write_header "NETSTAT"
        ${NETSTAT} -tulpn >> $OUTPUT
	
	write_header "DNS CLient $DNSCLIENT configuration"
	[ -f $DNSCLIENT ] && cat $DNSCLIENT >> $OUTPUT || echo "Error $DNSCLIENT file not found." >> $OUTPUT

	write_header "Network card drivers configuration $DRVCONF"
	[ -f $DRVCONF ] && grep eth $DRVCONF >> $OUTPUT || echo "Error $DRVCONF file not found." >> $OUTPUT

	write_header "Network COnfiguration file"
	for f in $NETCFC; do
		if [ -f $NETCFC ]; then
			echo "**$f**" >> $OUTPUT
			cat $f >> $OUTPUT
		else
			eco "Error $f not found." >> $OUTPUT
		fi
	done
	write_header "Network Tweaks via $SYSCTL"
	[ -f $SYSCTL ] && cat $SYSCTL >> $OUTPUT || echo "Error $SYSCTL file not found." >> $OUTPUT
}
chk_root
dump_info
