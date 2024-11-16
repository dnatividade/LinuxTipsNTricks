**Sign a TEXT file by providing a specific USER-ID (optional if you only have one private key). A .asc file will be generated.**
```
$ gpg -u "USER-ID" -s --clearsign file_name.txt
```

**Verify signature.**
```
$ gpg --verify file_name.txt.asc
```

---

**Sign a file by providing a specific USER-ID (optional if you only have one private key). A separate .sig signature file will be generated.**
```
$ gpg -u "USER-ID" -b file_name
```

**Verify signature**
```
$ gpg --verify file_name.sig
```

---

**Encrypt a file. The encrypted .gpg file will be generated.**
```
$ gpg -r "DESTINATION-USER-ID" -e file_name
```

**Decrypt a file.**
```
$ gpg -u "USER-ID" -d file_name.gpg > file_name
```

---

```
@dnat
```
