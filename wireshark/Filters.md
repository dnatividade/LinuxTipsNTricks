# Wireshark Filters

**Some Wireshark filters**
```
# Filter by IP
ip.addr == 10.10.50.1

# Filter by Destination IP
ip.dest == 10.10.50.1

# Filter by Source IP
ip.src == 10.10.50.1

# Filter by IP range
ip.addr >= 10.10.50.1 and ip.addr <= 10.10.50.100

# Filter by Multiple Ips
ip.addr == 10.10.50.1 and ip.addr == 10.10.50.100

# Filter out/ Exclude IP address
!(ip.addr == 10.10.50.1)

# Filter IP subnet
ip.addr == 10.10.50.1/24

# Filter by multiple specified IP subnets
ip.addr == 10.10.50.1/24 and ip.addr == 10.10.51.1/24

# Filter by Protocol
dns
http
ftp
ssh
arp
telnet
icmp
[...]

# Filter by port (TCP)
tcp.port == 25

# Filter by destination port (TCP)
tcp.dstport == 23

# Filter by ip address and port
ip.addr == 10.10.50.1 and Tcp.port == 25

# Filter by URL
http.host == “host name”

# Filter by time stamp
frame.time >= “June 02, 2019 18:04:00”

# Beacon Filter
wlan.fc.type_subtype = 0x08

# Broadcast filter
eth.dst == ff:ff:ff:ff:ff:ff

# Multicast filter
(eth.dst[0] & 1)

# Host name filter
ip.host = hostname

# MAC address filter
eth.addr == 00:70:f4:23:18:c4
```
**SOURCE:** https://www.comparitech.com/net-admin/wireshark-cheat-sheet/


**TCP flags**
```
# SYN packets
tcp.flags==0x2

# ACK packets
tcp.flags==0x10

# SYN/ACK packets
tcp.flags==0x12

# RST packets
tcp.flags==0x4

# RST/ACK packets
tcp.flags==0x14

# FIN packets
tcp.flags==0x1

# FIN/ACK packets
tcp.flags==0x11
```

@dnat
