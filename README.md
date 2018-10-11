# LinuxTipsNTricks! [](https://img.shields.io/readthedocs/pip.svg)
### Linux tips and tricks for command line and tasks automatization. Basic and advanced Linux commands

##### Compact
```
.tar.bz2

$ tar -cvjf file_name.tar.bz2 directory
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

##### Create patch (diff)
```
$ diff -u old_file updated_file > file.patch
```

##### Aplly patch
```
$ patch  old_fle -i file.patch -o new_file
```

##### Find specific word into the files
```
$ find ./* -type f -exec grep -l test {} \;
```

##### Aplly patch Linux Kernel
```
$ patch -p1 < file_name.patch
```

##### Remount partition read/write
```
# mount / -o remount,rw
```
