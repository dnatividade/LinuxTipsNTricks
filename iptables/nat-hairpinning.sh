#!/bin/bash

##############################################################
# Description:	NAT harpinning implementation (iptables rules)
# Author:	#dnatividade
##############################################################

IF_LAN=enp0s8
IF_WAN=enp0s3
IP_PUBLIC=1.2.3.4/32
IP_PRIVATE=192.168.1.1/32
IP_SERVER=192.168.1.200/32
LAN=192.168.1.0/24


iptables -t nat -A PREROUTING  -i $IF_LAN -s $LAN -d $IP_PUBLIC -p tcp -m tcp --dport 80 -j DNAT --to $IP_SERVER
iptables -t nat -A POSTROUTING -o $IF_LAN -s $LAN -d $IP_SERVER -p tcp -m tcp --dport 80 -j SNAT --to $IP_PRIVATE
iptables -A FORWARD -i $IF_LAN -o $IF_LAN -j ACCEPT


#Adapted from: https://unix.stackexchange.com/questions/282086/how-does-nat-reflection-nat-loopback-work

#dn@t
