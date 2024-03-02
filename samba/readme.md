## SAMBA util commands

**List users**:
```
pdbedit -L -v
```

**Create users**:
```
adduser user_name
passwd user_name
#type password, confirm password

smbpasswd -a user_name
#type password, confirm password

```

**Delete users**:
```
smbpasswd -x user_name
```

```
@dnat
```


