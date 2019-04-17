# LinuxTipsNTricks! ![status](https://img.shields.io/readthedocs/pip.svg)
### Linux tips and tricks for command line and tasks automatization. Basic and advanced Linux commands

##### Compact
```
 .tar.bz2
$ tar -cvjf file_name.tar.bz2 directory
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

##### Create patch (diff)
```
$ diff -u old_file updated_file > file.patch
```

##### Aplly patch
```
$ patch  old_fle -i file.patch -o new_file
```

##### Aplly patch Linux Kernel
```
$ patch -p1 < file_name.patch
```

##### Remount partition read/write
```
# mount / -o remount,rw
```

##### Music conversions
```
Rip music CD - Ripperx
$ sudo apt-get install ripperx
```
```
Convert wav to mp3 - lame
sudo apt-get install lame
lame -h musica.wav musica.mp3
```
