# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iproute2 instead net-tools

| net-tools | iproute2 | Description |
| ---| --- | --- |
| *$ ifconfig -h* | `$ ip` | show help |
| *$ ifconfig -a* | `$ ip -s addr` | show all information about all interfaces |
| *$ ifconfig eth0* | `$ ip addr show dev eth0` | show information about eth0 only |
| *# ifconfig eth0 down* | `# ip link set dev eth0 down` | disable interface |
| *# ifconfig eth0 up* | `# ip link set dev eth0 up` | enable interface |
| *$ arp -n* | `$ ip neigh` | show ARP cache |
| *# ifconfig eth0 hw ether 00:11:22:AA:BB:CC* | `# ip link set dev eth0 address 00:11:22:AA:BB:CC` | change MAC address |
| *# ifconfig eth0 down* <br> *# nameif eth1 00:11:22:AA:BB:CC* <br> *# ifconfig eth1 up* | `# ip link set dev eth0 down` <br> `# ip link set dev eth0 name eth1` <br> `# ip link set dev eth1 up` | rename interface eth0 to eth1 (MAC: 00:11:22:AA:BB:CC) |
| *# ifconfig eth0:0 192.168.0.254 netmask 255.255.255.0* | `# ip addr add 192.168.0.254/24 dev eth0 label eth0:0` | create an alias / add IP address with label |
| *# ifconfig eth0:0 down* | `# ip addr del 192.168.0.254/24 dev eth0` | delete an alias / IP address with label |
| *# ifconfig eth0 0* | `ip addr del 192.168.0.254/24 dev eth0` | remove IP address |
| *# ifconfig eth0 192.168.0.253 netmask 255.255.255.0* | `# ip addr del 192.168.0.254/24 dev eth0` <br> `# ip addr add 192.168.0.253/24 dev eth0` | change IP address |
| *$ route -n* | `$ ip route` | show route table |
| *# route add default gw 192.168.0.1* | `# ip route add default via 192.168.0.1` | set default gateway |
| *# route del default gw 192.168.0.1* | `# ip route del default via 192.168.0.1` | delete default gateway |
| *# route add -net 192.168.150.0 netmask 255.255.255.0 gw 192.168.0.1 dev eth1* | `# ip route add 192.168.150.0/24 via 192.168.0.1 dev eth1` | add static route |
| *# route del -net 192.168.150.0 netmask 255.255.255.0* | `# ip route del 192.168.150.0/24` | del static route |
| *(Debian-like: apt install vlan)* <br> *# vconfig add eth0 10* | `# ip link del dev eth0.10` | create VLAN interface |
| *# ifconfig eth0 mtu 1500* | `# ip link set dev eth0 mtu 1500` | chage MTU |
| *# ifconfig eth0 arp* <br> *# ifconfig eth0 -arp * | `# ip link set dev eth0 arp on` <br> `# ip link set dev eth0 arp off` | enable / disable ARP |
| *# ifconfig eth0 promisc* <br> *# ifconfig eth0 -promisc* | `# ip link set dev eth0 promisc on` <br> ` ip link set dev eth0 promisc off` | enable / disable promiscuous mode |
| *# ifconfig eth0 multicast* <br> *# ifconfig eth0 -multicast* | `# ip link set dev eth0 multicast on` <br> `# ip link set dev eth0 multicast off` | enable / disable multicast |
| *# ifconfig eth0 allmulti* <br> *# ifconfig eth0 -allmulti* | `# ip link set dev eth0 allmulticast on` <br> `# ip link set dev eth0 allmulticast off` | enable / disable all-multicast mode |


**SOURCE**: https://www.oueta.com/linux/network-configuration-in-linux-ifconfig-net-tools-vs-ip-iproute2/
