## Server

##### Listen on default port (5201 TCP)
```
iperf3 -s
```
---

## Client

##### Send 30 TCP packets to server and show result every 1 second (default port)
```
iperf3 -c SERVER_IP -t 30 -i 1
```
---

```
@dnat
```
