# LinuxTipsNTricks! ![docs-tipsNtrics](https://img.shields.io/badge/docs-tipsNtricks-green)
### Linux tips and tricks for command line and tasks automatization. Basic and advanced Linux commands

##### Compact
```
 .tar.bz2
$ tar -cvjf file_name.tar.bz2 directory

 .tar.xz
$ tar -Jcvf file_name.tar.xz directory/
```

##### Compact ZIP with PASSWORD
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

##### Find specific word into the files
```
$ find ./* -type f -exec grep -l test {} \;
```

##### Replace all line breaks with a blank space
```
$ tr '\n' ' ' < old_file.txt > new_file.txt
```

##### Show only uncomment lines
```
$ cat file_name | grep -Ev '[:blank]*#|^[:blank]*$'
```

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

##### Remount partition read/write
```
# mount / -o remount,rw
```

##### Music conversions
```
#Rip music CD: Ripperx
$ sudo apt-get install ripperx
```
```
#Convert WAV to MP3: lame
$ sudo apt-get install lame
$ lame -h musica.wav musica.mp3
```

##### Remove ALL image EXIF
```
$ sudo apt install libimage-exiftool-perl
$ exiftool -all= *.jpg
```
(soucer: https://www.shellhacks.com/remove-exif-data-images-photos-linux/)


##### Create GIF from WEBM file
```
$ ffmpeg -i video.webm -pix_fmt rgb24 video.gif
```

##### FFMPEG
```
#Cut video (from 20 sec. to 27 sec.)
ffmpeg -i input.mov -c:av copy -ss 00:00:20 -t 7 output.mov

#Concatenate videos
##create a list containing input video files (list.txt):
file 'input1.mp4'
file 'input2.mp4'
file 'inputN.mp4'
#----------------

##concat files
ffmpeg -f concat -i list.txt -c copy output.mp4

#Remove audio from video file
ffmpeg -i input.mov -c copy -an output.mov
```

