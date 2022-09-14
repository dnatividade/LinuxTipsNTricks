## Debian 11 and 12 audio: "Saída fictícia"

```
#1: Add your user into "audio" group:
#sudo usermod -a -G audio username

#2: Edit PulseAudio file:
#sudo nano /etc/pulse/default.pa

#Uncomment the lines:
load-module module-alsa-sink
load-module module-alsa-source device=hw:1,0 ← change the value to 0,0
```

## Update from Debian8 (Jessie) to Debian9 (Stretch)

```
# sed -i 's/jessie/stretch/g' /etc/apt/sources.list
# apt update
# apt upgrade
# apt dist-upgrade
# reboot
# apt-get autoremove
# apt-get clean
```

## Update from Debian9 (Stretch) to Debian10 (Buster)

```
# sed -i 's/stretch/buster/g' /etc/apt/sources.list
# apt update
# apt upgrade
# apt dist-upgrade
# reboot
# apt-get autoremove
# apt-get clean
```
---

## Particularity of network in Debian 9

The old standard "ethX", will no longer be used.
New standard: Predictable Network Interface Names (v197)

### Edit: /etc/default/grub
`$ GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"`

### After, run the command below (on command line):
`$ sudo grub-mkconfig -o /boot/grub/grub.cfg`

##### Source
[VivaOLinux](https://www.vivaolinux.com.br/dica/Como-mudar-o-nome-da-interface-de-rede-padrao-do-Ubuntu)
