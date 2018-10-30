# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iptables ###

| Command line | Description |
| --- | --- |
| `iptables -L` <br> `iptables -t filter -L` | show rules of filter tables |
| `iptables -t nat -L` | show rules of nat tables |
| `iptables -t mangle -L` | show rules of mangle tables |
| `iptables -t raw -L` | show rules of raw tables |
| `iptables -t security -L` | show rules of security tables |
| `iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT  --to $STAND_ALONE` | **port forwarding**: from eth0 interface; tcp protocol; from port 81 to IP:port 10.0.0.17:8081 |
| `iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT` | ALLOW input connection with states: established and related |
| `iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT` | ALLOW output connection with states: new, established and related |
| `iptables -A FORWARD -i eth0 -o eth1 -m mac --mac-source 00:11:22:33:44:55 -p tcp -s 10.0.0.17 -d 200.200.200.200 --sport 1030 --dport 541 -j ACCEPT` | **ALLOWS the forwarding of packets**: from eth0 interface to eth1 interface; source MAC 00:11:22:33:44:55; tcp protocol; source IP:port 10.0.0.17:1030; destination IP:port 200.200.200.200:541 |


