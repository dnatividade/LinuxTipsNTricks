# SSH Tips and Tricks

#### To connect to a ssh server you receive the error:
```
Unable to negotiate with 1.2.3.4 port 22: no matching key exchange method found. 
Their offer: diffie-hellman-group1-sha1
```
Use `-o KexAlgorithms=+diffie-hellman-group1-sha1` param, as follows:
```
$ ssh -o KexAlgorithms=+diffie-hellman-group1-sha1 user@1.2.3.4
```

