# LinuxTipsNTricks! ![docs-tipsNtrics](https://img.shields.io/badge/docs-tipsNtricks-green)
### Linux tips and tricks for command line and tasks automatization. Basic and advanced Linux commands

---

##### Uncompress zlib
```
zlib-flate -uncompress < input_fil.zlib > output_file
```

##### Compress/Uncompress
```
 .tar.bz2
$ tar -cvjf file_name.tar.bz2 directory

 .tar.xz
$ tar -Jcvf file_name.tar.xz directory/
```

##### Compress ZIP with PASSWORD
```
$ zip -e -r file_dst.zip file_or_directory_src
<enter password>
```

##### Unpack
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

##### Find specific word into the files
```
$ find ./* -type f -exec grep -l some_word {} \;

OR (into .cc and .h files)
$ grep --include=\*.{cc,h} -rnw './' -e "some words"
```

##### Find and delete specific files
```
$ find ./ -name file_name -exec rm {} \;
```

##### Replace all line breaks with a blank space
```
$ tr '\n' ' ' < old_file.txt > new_file.txt
```

##### Show only uncomment lines
```
$ cat file_name | grep -Ev '[:blank]*#|^[:blank]*$'
```

##### Delete lines from a file containing a specific word
```
$ cat old_file.txt |grep -v host > ip.txt
```

##### Permanently delete a file
```
$ shred -u file_name
```

---

##### Create patch (diff)
```
$ diff -u old_file updated_file > file.patch
```

##### Apply patch
```
$ patch  old_fle -i file.patch -o new_file
```

##### Apply patch Linux Kernel
```
$ patch -p1 < file_name.patch
```

##### Disable kernel modules from initialization
```
- edit (create if not exist): /etc/modprobe.d/blacklist.conf
- insert one module for a line to disable it:
	blacklist name_of_module
```

---

##### Remount partition read/write
```
# mount / -o remount,rw
```

##### Disable swap (Ubuntu 20.04)
```
# sed -i.bak '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab && sudo swapoff -a && sudo rm -f -r /swapfile
```
(source: https://www.vivaolinux.com.br/dica/Desativar-SWAP-em-Ubuntu-2004-e-derivados-com-unico-comando)

---

##### Music conversions
```
#Rip music CD: Ripperx
$ sudo apt-get install ripperx
```
```
#Convert WAV to MP3: lame
$ sudo apt-get install lame
$ lame -h music.wav music.mp3
```

##### Remove ALL image EXIF
```
$ sudo install exiftool
$ exiftool -all= *.jpg
```
(souce: https://www.shellhacks.com/remove-exif-data-images-photos-linux/)


##### Create GIF from videos file
```
$ ffmpeg -i video.mp4 -pix_fmt rgb24 video.gif
```

##### FFMPEG
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

##### Convert PNG to ICO
```
#apt install imagemagick
convert -resize x16 -gravity center -crop 16x16+0+0 input.png -flatten -colors 256 -background transparent output.ico
```
(souce: https://askubuntu.com/questions/867567/convert-jpg-or-png-to-ico-using-terminal-and-back)

---

##### Remove password from PDF file
```
#apt install qpdf
qpdf --password=PASSWORD --decrypt File_with_pass.pdf File_without_pass.pdf
```

##### Separate PDF file pages
```
#apt install pdftk
pdftk File.pdf burst
```

##### Reduce PDF file quality (downsize)
```
#apt install ghostscript
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=Reduced_file.pdf Original_file.pdf
```

---

```

@dnat
```
