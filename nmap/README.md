# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Using nmap ###

| Command line | Description |
| --- | --- |
| `# nmap -O -v site.com` | operational system detection |
| `# nmap -sV -O -v 10.20.30.40` | operational system version detection |
| `# nmap -sP 10.10.20.0/24` | scaning **IPs** of a **network** (**IP SCAN**) |
| `# nmap 10.10.0.0/16 --exclude 10.10.10.10` | scaning IPs of a network **excluding one IP** |
| `# nmap -p 123 10.10.0.17` | scaning port 123 of an **IP** |
| `# nmap -sV -p 1-65535 10.10.0.18` | scaning **all ports** of an **IP** (**PORT SCAN**) |
| `# nmap -sV -p 25,80,443 10.10.0.19` | scaning **ports 25,80,443** |
| `# nmap -p 1-65535 10.10.0.0/16` | scaning **all ports** of a **network** |
| `# nmap -p 100-5000 10.10.0.19` | scaning ports **from 100 to 5000** |
| `# nmap -F 10.10.0.0/16` | **fast nmap scaning for a network** (information about some ports and MAC|


**SOURCE:**
https://nmap.org/book/osdetect-usage.html

https://askubuntu.com/questions/377787/how-to-scan-an-entire-network-using-nmap
