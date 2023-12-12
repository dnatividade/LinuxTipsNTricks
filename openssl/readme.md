#### Create certificate with OpenSSL
```
genrsa -des3 -out server.key 1024
req -new -key server.key -out server.csr 
x509 -req -days 365 -in server.csr -signkey server.key -out certifcado.crt
 ```
 
```
@dnat
``` 
