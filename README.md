# LinuxTipsNTricks
##### Linux tips and tricks for command line and tasks automatization

### ====================================================
### BASIC AND ADVANCED LINUX COMMANDS
### ====================================================

##### Compact
```
.tar.bz2

$ tar -cvjf nomedoarquivo.tar.bz2 pasta
```

##### Unpack
```
.tar.bz2

$ tar -xvjf nomedoarquivo.tar.bz2

.zip

$ gunzip nomedoarquivo.zip

.rar

$ unrar x nomedoarquivo.rar

.tar

$ tar -xvf nomedoarquivo.tar

.tar.gz

$ tar -vzxf nomedoarquivo.tar.gz

.bz2

$ bunzip nomedoarquivo.bz2
```

##### Create patch (diff):
```
$ diff -u old_file updated_file > file.patch
```

##### Aplly patch
```
$ patch  old_fle -i file.patch -o new_file
```

##### Find specific word into the files:
```
$ find ./* -type f -exec grep -l test {} \;
```

##### Aplly patch Linux Kernel:
```
$ patch -p1 < ARQUIVO.patch
```
