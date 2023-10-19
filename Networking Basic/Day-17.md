# Day 16

Summary
# Virtual terminal
 - Accessing a remote server using client software or protocol like ssh (port 20) and telnet (23)
 - Telnet transfer the data as plain text so hacker can easily read and access the server
 -  ssh secure shell host transmit the data in encrypted format for improving security

 commands are : telnet *ip* or ssh -l *username* *ip* ( "-l" : flag used to specify the username)

 # Email 

 - Email also involves three protocol smtp,pop,imap

 - stmp listen on port 25 and it send the mail to the local mailbox server (which company the mail id belong to eg: examplae@company.com) if its different company stmp make a server to server transfer
- POP : port 110 used to receive email from the server and delete the received mail from servee
- imap :port 143 similar to pop but hold a copy in server unless user delete it

> Text messaging and voice over ip based on ip software possible 

# Network trouble shooting

ipconfig : to list ip,subnet,gateway detail
ipconfig /all : to list more information like dhcp,dns etc.,
ipconfig /renew : to obtain new ip from dhcp

ping : test the connection
ping send echo request if ping *ip* and the dest host reply with echo reply if not in the same network then first ask dns and echo packtes

nslookup : dns server
netstat : number of connection in local system
tracert : to trace the packet a packet get routed


ping - 4 : ipv4
ping - 6 : ipv6
ping -a : address of the host
ping -t : to ping continously until manual stop
