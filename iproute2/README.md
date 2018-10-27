# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iproute2 instead net-tools

| net-tools | iproute2 | Description |
| --- | --- | --- |
| *$ ifconfig -h* | `$ ip` | |
| *$ ifconfig -a* | `$ ip -s addr` | |
| *$ ifconfig eth0* | `$ ip addr show dev eth0` | |
| *# ifconfig eth0 down* | `# ip link set dev eth0 down` | |
| *# ifconfig eth0 up* | `# ip link set dev eth0 up` | |
| *$ arp -n* | `$ ip neigh` |
| *# ifconfig eth0 hw ether 00:11:22:AA:BB:CC* | `# ip link set dev eth0 address 00:11:22:AA:BB:CC` | |
| *# ifconfig eth0 down* <br> *# nameif eth1 00:11:22:AA:BB:CC* <br> *# ifconfig eth1 up* | `# ip link set dev eth0 down` <br> `# ip link set dev eth0 name eth1` <br> `# ip link set dev eth1 up` | rename interface eth0 to eth1 (MAC: 00:11:22:AA:BB:CC) |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |
| *if* | `ip` |


**SOURCE**: https://www.oueta.com/linux/network-configuration-in-linux-ifconfig-net-tools-vs-ip-iproute2/
