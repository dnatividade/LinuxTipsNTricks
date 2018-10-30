# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iptables ###

| Command line | Description |
| --- | --- |
| `iptables -L` <br> `iptables -t filter -L` | shows rules of filter table |
| `iptables -t nat -L` | shows rules of nat table |
| `iptables -t mangle -L` | shows rules of mangle table |
| `iptables -t raw -L` | shows rules of raw table |
| `iptables -t security -L` | shows rules of security table |
| `iptables -F` <br> `iptables -t filter -F` | deletes rules of filter table |
| `iptables -X` | deletes custom chains |
| `iptables -t nat -Z` <br> `iptables -t mangle -Z` <br> `iptables -t filter -Z` | clears chain counters (nat, mangle and filter) |
| `iptables -P INPUT DROP` <br> `iptables -P OUTPUT DROP` <br> `iptables -P FORWARD DROP` | **default policies**: DROP |
| `iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 81 -j DNAT --to 10.0.0.17:8081` | **port forwarding**: from eth0 interface; tcp protocol; from port 81 to IP:port 10.0.0.17:8081 |
| `iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE` | **NAT** - IP masquerade; output interface: eth0 |
| `iptables -A INPUT -i eth0 --syn -j DROP` | **DENNIES** connection opening on eth0 interface (TCP SYN flag) |
| `iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT` | **ALLOWS output** connection: new, established and related|
| `iptables -A INPUT -p icmp --icmp-type 8 -j ACCEPT` | **ALLOWS icmp request** on input connections |
| `iptables -A INPUT -p icmp --icmp-type 0 -j ACCEPT` | **ALLOWS icmp reply** on input connections |
| `iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT` | **ALLOWS input** connection with states: established and related |
| `iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT` | **ALLOWS output** connection with states: new, established and related |
| `iptables -A FORWARD -i eth0 -o eth1 -m mac --mac-source 00:11:22:33:44:55 -p tcp -s 10.0.0.17 -d 200.200.200.200 --sport 1030 --dport 541 -j ACCEPT` | **ALLOWS the forwarding of packets**: from eth0 interface to eth1 interface; source MAC 00:11:22:33:44:55; tcp protocol; source IP:port 10.0.0.17:1030; destination IP:port 200.200.200.200:541 |

