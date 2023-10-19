# Day 8
Summary
- Internet protocol : used to assign a logical address to end device to identify in the internet for communication
- Every host connect to the internet will have a ip assigned by its local network routers (connect local network with internet).
- ip4 is usually 32 bit long having 4 octet seperated by '.' example : 192.168.1.0
- ip4 address have 2 session network portion to identify the subnet where the host belongs and host portion to identify the end device in the network 

```
example : 
ip: 192.168.1.10 
subnet mask : 255.255.255.0
host : 10
network : 192.168.1.0
```
> Note : in Local network , Every end device must have a unique host portion and a single network has two or more logical ip (same ip device can talk to each other ) for communication across the network we need routers.