
# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iptables ###

| Command line | Description |
| --- | --- |
| `# tcpdump -i any` | monitors all interfaces |
| `# tcpdump -i eth0` | monitors eth0 interface |
| `# tcpdump -i eth0 -w trace.pcap` | monitors eth0 interface and **save in the file** trace.pcap |
| `# tcpdump -i eth0 -ttttnnvvS` | verbose output, with no resolution of hostnames or port numbers, absolute sequence numbers, and human-readable timestamps |
| `# tcpdump -i eth0 host 10.10.10.11` | monitors traffic from/to **10.10.10.11** |
| `# tcpdump -i eth0 src 10.10.10.12` | monitors traffic **from 10.10.10.12** |
| `# tcpdump -i eth0 dst 10.10.10.13` | monitors traffic **to 10.10.10.13** |
| `# tcpdump -i eth0 net 10.10.0.0/16` | monitors traffic **from/to network 10.10.0.0/16** |
| `# tcpdump -i eth0 port 587` | monitors traffic from/to **port 587** |
| `# tcpdump -i eth0 src port 11200` | monitors traffic **from port 11200** |
| `# tcpdump -i eth0 dst port 1020` | monitors traffic **to port 1020** |
| `# tcpdump -i eth0 icmp` | monitors **icmp** traffic|
| `# tcpdump -i eth0 tcp` | monitors **tcp** traffic|
| `# tcpdump -i eth0 udp` | monitors **udp** traffic|
| `# tcpdump -i eth0 ip6` | monitors **IPv6** traffic|
| `# tcpdump -i eth0 portrange 1024-3000 ` | monitors traffic from/to **ports between 1024 and 3000** |
| `# tcpdump -i eth0 less 48` | monitors traffic with packets **less than 48** bytes |
| `# tcpdump -i eth0 greater 256` | monitors traffic with packets **greater than 256** bytes |
| `# tcpdump -i eth0 src 10.10.10.14 and dst port 9999` | advanced combinations using the logical operator **AND** |
| `# tcpdump -i eth0 src net 10.10.0.0/16 and dst net 10.20.30.0/24 or 10.30.0.0/16` | advanced combinations using the logical operators **AND, OR**: __from one net to another__ |
| `# tcpdump -i eth0 dst 10.10.10.16 and src net 10.20.0.0/16 and not icmp` | advanced combinations using the logical operators **AND, OR, NOT**: __to one IP, from one net, excluding icmp traffic__  |
| `# tcpdump -i eth0 src host1 and not dst port 3050` | monitors traffic **from host1** excluding port 3050 traffic |
| `# tcpdump -i eth0 'tcp[tcpflags] == tcp-syn'` | monitors TCP SYN flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == tcp-ack'` | monitors TCP ACK flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == tcp-psh'` | monitors TCP PSH flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == tcp-rst'` | monitors TCP RST flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == tcp-urg'` | monitors TCP URG flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == tcp-fin'` | monitors TCP FIN flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == 18'` | monitors TCP SYN-ACK flags |
| `# tcpdump -i eth0 'tcp[tcpflags] == 6'` | monitors TCP SYN-RST flags |


**SOURCE:** https://danielmiessler.com/study/tcpdump/

**LICENCE:** CC BY-SA 2.0 (https://creativecommons.org/licenses/by-sa/2.0/)
