# Day 11
Summary
# DHCP
- A host in a network will get ip in two way
    - Manually IP assigning by network admin ( possibility of error)
    - Automatic ip assigning by DHCP protocol with a help of a server called DHCP server 
    - DHCP server is placed in router or dedicated PC based on the size of the network sometimes isp also provide DHCP

## DHCP process
    - Host send a DHCP discover packet as broadcast
    - Server send a DHCP offer with ip, gateway and other configuration
    - Host send a DHCP request with ip, gateway and other configuration
    - Server send a DHCP Ack

 
 > Note : for router we can access the config using router lan ip and update the config for our need.