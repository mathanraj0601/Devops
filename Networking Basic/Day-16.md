# Day 16

Summary
# Client - server relationship
- client and server are end device in network depending upon the software installed they act different
 - client : web brower,email etc.,
 - server: web server, email server

client and server communication happen as follows
- DNS lookup
- TCP connection
- Data transfer

# Network service

There are lot of network service and associated protocol they are
- Email - (SMTP, POP, IMAP)
- DNS - name resolution protocol
- DHCP - for assigning IP
- HTTP : web server
- FTP : file transfer


# Domain name
usually we type URI/URL in the address bar

example : https://www.google.com/index.html#frame=1

The above is URI : unified resource identifier : the location of a resource in internet

"www.google.com/index.html" : URN (unified resource name : the namespace of the webpage,doc etc in internet).

"https://www.google.com/index.html" : URL(unified resource locator) = protocol + URN


but we need ip to redirect the packet to web server we can get the ip from DNS server which is provided by isp to home router and homw router to host and HTTP standard port are 80

# Web client and server
- DNS lookup to get IP and HTTP as Request and HTML langauge for web client to display the content in browser

# FTP 
similar to web service but has two port open
- port 21 for control like rename,delete,etc.,
- port 20 for get and put actual data transfer.