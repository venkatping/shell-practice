#!/usr/bin/env bash
function menuprincipal() {
clear
TIME=1
echo ""
echo $0
echo ""
echo "Choose an option from Below!
	
	1 - Verify desktop processor
        2 - Verify system kernel
        3 - Verify installed softwares
        4 - Operation system version
        5 - Verify desktop memory
        6 - Verify serial number
        7 - Verify system IP
        0 - Exit"
echo " "
echo -n "Choose Option: "
read option
case $option in
	1)
		function processor() {
		CPU_INFO=$(cat /proc/cpuinfo | grep -i "^model name" | cut -d ":" -f 2 | sed -n '1p')
		echo "CPU model: $CPU_INFO"
                sleep $TIME		
		}
		processor
		read -n 1 -p "<Enter> for main menu"
		menuprincipal
		;;
	2)
		function kernel() {
		#RED HAT: cat /etc/redhat-release
                KERNEL_VERSION_UBUNTU=`uname -r`
                KERNEL_VERSION_CENTOS=`uname -r`
                if [ -f /etc/lsb-release ];then
                	echo "kernel version: $KERNEL_VERSION_UBUNTU"
		else
			echo "kernel version: $KERNEL_VERSION_CENTOS"
		fi
		}
		kernel
		read -n 1 -p "<Enter> for main menu"
		menuprincipal
		;;
	3)
		function softwares() {
		TIME=3
		echo " "
		echo "Choose an option below for programs list!
			1 - List Ubuntu Programs
			2 - List Fedora Programs
			3 - Install Programs
			4 - Back to Menu"
		echo ""
		echo -n "Choose Option: "
		read alternative
		case $alternative in
			1)
				echo "Listing all programs Ubuntu's systems..."
				sleep $TIME
				dpkg -l > /tmp/programs.txt
				echo Programs listed and available at /tmp
				sleep $TIME
				echo " "
				echo "Back to menu!" | tr [a-z] [A-Z]
				sleep $TIME
				;;
			2)
				echo "Listing all programs Fedora's systems..."
                                sleep $TIME
                                yum list installed > /tmp/programs.txt
                                echo Programs listed and available at /tmp
                                sleep $TIME
                                ;;
			3)
				read -p "Enter the package you want to install: " package
				yum install -y $package
				;;
			4)
				echo "Back to Main Memu..."
				sleep $TIME
				;;
		esac		
		}
		softwares
		read -n 1 -p "<Enter> for main menu"
                menuprincipal
                ;;
	4)
		function system() {
			release=$(cat /etc/os-release | grep -i "^PRETTY")
			if [ -f /etc/os-release ]; then
				echo "The system version: $release"
			else
				echo "The system not supported"
			fi
		}
		system
		read -n 1 -p "<Enter> for main menu"
		menuprincipal
		;;
	5)
		function memory() {
			MEMORY_FREE=$(free -m | grep -i "^Mem" | tr -s ' ' | cut -d ' ' -f 4)
			echo "Verifying System Memory..."
			echo "Memory Free is: $MEMORY_FREE"
		}
		memory
		read -n 1 -p "<Enter> for main menu"
		menuprincipal
		;;
	6)
		function serial() {
			SERIAL_NUMBER=`dmidecode -t 1 | grep -i serial`
			echo $SERIAL_NUMBER
		}
		serial
		read -n 1 -p "<Enter> for main menu"
                menuprincipal
		;;
	7)
		function ip() {
			IP_ADDRESS=$(hostname -I)
			echo "Server IP ADDRESS: $IP_ADDRESS"
		}
		ip
		read -n 1 -p "<Enter> for main menu"
                menuprincipal
                ;;
	0)
		echo "Exiting the server.."
		sleep $TIME
		exit 0
		;;
	*)	
		echo "Invalid Option, Try Again"
		;;
esac
}
menuprincipal
