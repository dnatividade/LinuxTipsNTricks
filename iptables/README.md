# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iptables ###

| Command line | Description |
| --- | --- |
| `iptables -L` <br> `iptables -t filter -L` | show rules of filter tables |
| `iptables -t nat -L` | show rules of nat tables |
| `iptables -t mangle -L` | show rules of mangle tables |
| `iptables -t raw -L` | show rules of raw tables |
| `iptables -t security -L` | show rules of security tables |

| `iptables -A FORWARD -i eth0 -o eth1 -m mac --mac-source 00:11:22:33:44:55 -p tcp -s 10.0.0.17 -d 200.200.200.200 --sport 1030 --dport 541 -j ACCEPT` | ALLOWS the forwarding of packets from eth0 interface to eth1 interface, the source MAC 00:11:22:33:44:55, tcp protocol, source IP:port 10.0.0.17:1030 and the destination IP:port 200.200.200.200:541 |

