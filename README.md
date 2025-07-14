# LinuxTipsNTricks! ![docs-tipsNtrics](https://img.shields.io/badge/docs-tipsNtricks-green)
### Linux tips and tricks for command line and tasks automatization. Basic and advanced Linux commands

![linux-tips-n-tricks.jpg](linux-tips-n-tricks.jpg)

---

### [UN]COMPRESS

**Compress**
```
 .tar.bz2
$ tar -cvjf file_name.tar.bz2 directory

 .tar.xz
$ tar -Jcvf file_name.tar.xz directory/
```

**Compress ZIP with PASSWORD**
```
$ zip -e -r file_dst.zip file_or_directory_src
<enter password>
```

**Uncompress zlib**
```
zlib-flate -uncompress < input_fil.zlib > output_file
```

**Uncompress**
```
 .tar.bz2
$ tar -xvjf file_name.tar.bz2

 .zip
$ gunzip file_name.zip

 .rar
$ unrar x file_name.rar

 .tar
$ tar -xvf file_name.tar

 .tar.gz
$ tar -vzxf file_name.tar.gz

.tar.xz
$ tar -Jxf file_name.tar.xz

 .bz2
$ bunzip file_name.bz2

```

---

### FILE MANIPULATION AND SEARCHING

**Find specific word into the files**
```
$ find ./* -type f -exec grep -l some_word {} \;

OR (into .cc and .h files)
$ grep --include=\*.{cc,h} -rnw './' -e "some words"
```

**Get list of all files, recursively, sorted by modification date**
```
$ find directory/ -type f -exec stat --format="%y %n" {} \; | sort -r
```

**Find and delete specific files**
```
$ find ./ -name file_name -exec rm {} \;
```

**Find a module path**
```
# ldconfig -p | grep part_of_module_name
```

**Find and delete duplicated files**
```
$ fdupes -rdN directory/
```

**Replace all line breaks with a blank space**
```
$ tr '\n' ' ' < old_file.txt > new_file.txt
```

**Show only uncomment lines**
```
$ cat file_name | grep -Ev '[:blank]*#|^[:blank]*$'
```

**Delete lines from a file containing a specific word**
```
$ cat old_file.txt |grep -v host > ip.txt
```

**Permanently delete a file**
```
$ shred -u file_name
```

**Split a file into several parts of fixed size**
```
$ split -b 100k file_name part_
```

**Split a file into 2 equal parts**
```
$ file=file_name; split -b $((`du $file -b |cut -f1` / 2)) $file part_
```

---

**Create patch (diff)**
```
$ diff -u old_file updated_file > file.patch
```

**Apply patch**
```
$ patch  old_fle -i file.patch -o new_file
```

**Apply patch Linux Kernel**
```
$ patch -p1 < file_name.patch
```

**Disable kernel modules from initialization**
```
- edit (create if not exist): /etc/modprobe.d/blacklist.conf
- insert one module for a line to disable it:
	blacklist name_of_module
```

---

### FILE SYSTEM AND PARTITIONING

**Remount partition read/write**
```
# mount / -o remount,rw
```

**Mount a specific partition from a disk image (read only)**
```
# mount -ro,loop,offset=<offset_in_bytes> /media/image.bin /mnt/

Ex.: Partition 3: 4.656 GiB (4999610368 bytes, 9764864 sectors from 99610624)
Find the starting sector of the partition and multiply it by the size of each sector in bytes (usually 512).
# mount -ro,loop,offset=$((99610624*512)) /media/image.bin /mnt/
```

**Check block size**
```
# dumpe2fs /dev/sdXn | grep -i "block size"
```


**Disable swap (Ubuntu 20.04)**
```
# sed -i.bak '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab && sudo swapoff -a && sudo rm -f -r /swapfile
```
(source: https://www.vivaolinux.com.br/dica/Desativar-SWAP-em-Ubuntu-2004-e-derivados-com-unico-comando)

---

### MULTIMEDIA

**Music conversions**
```
#Rip music CD: Ripperx
$ sudo apt-get install ripperx
```
```
#Convert WAV to MP3: lame
$ sudo apt-get install lame
$ lame -h music.wav music.mp3
```

**Remove ALL image EXIF**
```
$ sudo install exiftool
$ exiftool -all= *.jpg
```
(souce: https://www.shellhacks.com/remove-exif-data-images-photos-linux/)


**Create GIF from videos file**
```
$ ffmpeg -i video.mp4 -pix_fmt rgb24 video.gif
```

**FFMPEG**
```
##CONVERT TO MP3
#Convert wav to mp3
ffmpeg -i audio.wav -acodec libmp3lame audio.mp3

#Convert ogg to mp3
ffmpeg -i audio.ogg -acodec libmp3lame audio.mp3

#Convert ac3 to mp3
ffmpeg -i audio.ac3 -acodec libmp3lame audio.mp3

#Convert aac to mp3
ffmpeg -i audio.aac -acodec libmp3lame audio.mp3
#-----------------

#Cut video (extracts video from 20 sec. to 27 sec.)
ffmpeg -i input.mp4 -ss 00:00:20 -t 00:00:27 -c copy output.mp4

#Remove video (removes a slice from 20 sec. to 27 sec.)
ffmpeg -i input.mp4 -vf  "select='not(between(t,20,27))',  setpts=N/FRAME_RATE/TB" -af "aselect='not(between(t,20,27))', asetpts=N/SR/TB" output.mp4

#Concatenate videos
##create a list containing input video files (list.txt):
file 'input1.mp4'
file 'input2.mp4'
file 'inputN.mp4'
#----------------

##Concat files
ffmpeg -f concat -i list.txt -c copy output.mp4

#Remove audio from video file
ffmpeg -i input.mov -c copy -an output.mov

#Compress video
ffmpeg -i input.mp4 -vcodec libx264 -crf 20 output.mp4

#Convert dav to mp4 (SOURCE: https://stackoverflow.com/questions/32827539/ffmpeg-conversion-dav-to-any-video-files)
ffmpeg -y -i input-file.dav -c:v libx264 -crf 24 output-file.mp4
```

**Convert PNG to JPG**
```
#apt install imagemagick
convert input.png -quality 90 output.jpg
```

**Convert PNG to ICO**
```
#apt install imagemagick
convert -resize x16 -gravity center -crop 16x16+0+0 input.png -flatten -colors 256 -background transparent output.ico
```
(souce: https://askubuntu.com/questions/867567/convert-jpg-or-png-to-ico-using-terminal-and-back)


---

**Remove password from PDF file**
```
#apt install qpdf
qpdf --password=PASSWORD --decrypt File_with_pass.pdf File_without_pass.pdf
```

**Separate PDF file pages**
```
#apt install pdftk
pdftk File.pdf burst
```

**Reduce PDF file quality (downsize)**
```
#apt install ghostscript
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=Reduced_file.pdf Original_file.pdf
```

---

**Copy an entire disk or partition with dd + progress**
```
sudo dd if=/dev/sdXn of=/home/user/disk_img bs=4M status=progress
```

---

**GIT**

**Initialize and add remote repository**
```
$ git init
$ git remote add origin https://github.com/account/repository
```

**Git add, commit and push**
```
$  git add . && git commit -m "UP" && git push origin master
```

**Undo the last commit**
```
$ git reset HEAD~
```

**fatal: Not possible to fast-forward**
```
$ git pull origin master
fatal: Not possible to fast-forward, aborting.

$ git fetch origin
$ git merge master
Already up to date.

$ git commit -m "UP"
$ git pull origin master --rebase
Successfully rebased and updated refs/heads/master.

$ git push origin master
```

**fatal: refusing to merge unrelated histories**
```
$ git pull origin master 
fatal: refusing to merge unrelated histories

$ git pull origin master --allow-unrelated-histories
```

---

### DNS TOOLS

**Search A record**

```
$ dig +short mail.domain.com A
1.2.3.4
```

**Search MX record**
```
$ dig +short domain.com MX
10 mail.domain.com.
```

**Search PTR record**
```
$ dig -x 1.2.3.4

; <<>> DiG 9.18.28-1~deb12u2-Debian <<>> -x 1.2.3.4
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 62971
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; QUESTION SECTION:
;4.3.2.1.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
4.3.2.1.in-addr.arpa. 86400 IN	PTR	mail.domain.com.br.

;; ADDITIONAL SECTION:
mail.domain.com. 86400 IN	A	1.2.3.4

;; Query time: 3 msec
;; SERVER: 192.168.0.1#53(192.168.0.1) (UDP)
;; WHEN: Fri Jan 17 14:00:18 -03 2025
;; MSG SIZE  rcvd: 102
```

**Search TXT record**
```
$ dig +short TXT domain.com
"v=spf1 mx ~all"
"google-site-verification=Sl2ABCDxY15QiI_1RgK9Ud8m3fz4ck7UTju_o8b5abC"
```

---

### HACKING AND FORENSICS

**Password cracking**
```
##John The Ripper (using rockyou wordlist)
# unshadow /etc/passwd /etc/shadow > hash.txt
# john --format=crypt --wordlist=/usr/share/wordlists/rockyou.txt hash.txt
```

**Wi-Fi Deauthentication Attack**
```
#1
airmon-ng start [wi-fi interface]

#2
airodump-ng -d [BSSID] -c [chanel] [wi-fi interface_mon]

#3
aireplay-ng -0 0 -a [BSSID] [wi-fi interface_mon]

#Example:
# airmon-ng start wlp2s0
# airodump-ng -d AA:BB:CC:DD:EE:FF -c 6 wlp2s0mon
# aireplay-ng -0 0 -a AA:BB:CC:DD:EE:FF wlp2s0mon
```


```
@dnat
```
