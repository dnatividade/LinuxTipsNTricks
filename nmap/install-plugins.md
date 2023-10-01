## Install Nmap-Vulners & Vulscan

```
#install
git clone https://github.com/scipag/vulscan
sudo ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan

#use
nmap -sV --script=vulscan/vulscan.nse HOST_or_IP
```
Source: https://linuxhint.com/nmap_vulscan/
