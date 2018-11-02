
# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using iptables ###

| Command line | Description |
| --- | --- |
| `# tcpdump -i any` | monitors all interfaces |
| `# tcpdump -i eth0` | monitors eth0 interface |
| `# tcpdump -i eth0 -w trace.pcap` | monitors eth0 interface and **save in the file** trace.pcap |
| `# tcpdump -i eth0 -ttttnnvvS` | verbose output, with no resolution of hostnames or port numbers, absolute sequence numbers, and human-readable timestamps |
| `# tcpdump -i any host 10.10.10.11` | monitors traffic from/to **10.10.10.11** |
| `# tcpdump -i any src 10.10.10.12` | monitors traffic **from 10.10.10.12** |
| `# tcpdump -i any dst 10.10.10.13` | monitors traffic **to 10.10.10.13** |
| `# tcpdump -i any net 10.10.0.0/16` | monitors traffic **from/to network 10.10.0.0/16** |
| `# tcpdump -i any port 587` | monitors traffic from/to **port 587** |
| `# tcpdump -i any src port 11200` | monitors traffic **from port 11200** |
| `# tcpdump -i any dst port 1020` | monitors traffic **to port 1020** |
| `# tcpdump -i any icmp` | monitors **icmp** traffic|
| `# tcpdump -i any tcp` | monitors **tcp** traffic|
| `# tcpdump -i any udp` | monitors **udp** traffic|
| `# tcpdump -i any ip6` | monitors **IPv6** traffic|
| `# tcpdump -i any portrange 1024-3000 ` | monitors traffic from/to **ports between 1024 and 3000** |
| `# tcpdump -i any less 48` | monitors traffic with packets **less than 48** bytes |
| `# tcpdump -i any greater 256` | monitors traffic with packets **greater than 256** bytes |
| --- | --- |
| `tcpdump -i eth0 src 10.10.10.14 and dst port 9999` | advanced combinations using the logical operator AND |
| `tcpdump -i eth0 src net 10.10.0.0/16 and dst net 10.20.30.0/24 or 10.30.0.0/16` | advanced combinations using the logical operator AND: **from onde net to another** |
| `# tcpdump` | monitors |
| `# tcpdump` | monitors |
| `# tcpdump` | monitors |

**SOURCE:** https://danielmiessler.com/study/tcpdump/

**LICENCE:** CC BY-SA 2.0 (https://creativecommons.org/licenses/by-sa/2.0/)
