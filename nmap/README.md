# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using nmap ###

| Command line | Description |
| --- | --- |
| `# nmap -O site.com` | **operational system detection** and scan from princiapl ports|
| `# nmap -A site.com` | operational system detection and scan from princiapl ports with **service and version detection** |
| `# nmap -sP 10.10.20.0/24` | scaning **IPs** of a **network** (**IP SCAN**) |
| `# nmap 10.10.0.0/16 --exclude 10.10.10.10` | scaning IPs of a network **excluding one IP** |
| `# nmap -p 123 10.10.0.17` | scaning port 123/**TCP** of an **IP** |
| `# nmap -sU -p 123 10.10.0.17` | scaning port 123/**UDP** of an **IP** |
| `# nmap -sV -p 1-65535 10.10.0.18` | scaning **all TCP ports** of an **IP** (**PORT SCAN**) |
| `# nmap -sV -p 25,80,443 10.10.0.19` | scaning **ports 25,80,443 TCP** |
| `# nmap -p 1-65535 10.10.0.0/16` | scaning **all TCP ports** of a **network** |
| `# nmap -p 100-5000 10.10.0.19` | scaning ports **from 100 to 5000 TCP** |
| `# nmap -F 10.10.0.0/16` | **fast nmap scaning for a network** (information about some ports and MAC) |


**SOURCE:**
https://nmap.org/book/osdetect-usage.html

https://askubuntu.com/questions/377787/how-to-scan-an-entire-network-using-nmap
