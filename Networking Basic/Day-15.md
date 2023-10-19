# Day 15

Summary
# TCP and UDP 
- TCP : Transmission control protocol which is used for reliable connection  where the acknowledgement is received from the destination for every packet is send so there is no loss of data. it is mostly used in reliable connection like 
- TCP uses serial number for acknowledgement
- UDP : User Datagram Protocol which is used for real time application where there is no overhead of acknowledgement.

## Port number
- Ports : In the transport layer every service running in the machine assigned with a  port number (16-bit number) so that a client application and destination application talk.
- Ports number are identified by client easily for known ports
    - known ports (<= 1024) which  are predefined port for application like ssh 22, http 80, etc.,
    - registered ports are used by other application than known port application
    - ephemeral ports : private ports for overcoming port conflict for any application if multiple network connection (temporary).
- Socket = *ip*+*port-number* : used to locate server and application/ server that listen this request.
- Destination devices identify the port (if known port no problem) using some registry or DNS server.

> Note : use netstat to check the what are the tcp,udp connection in your computers.It outs a table with localhost, foreign host, state, protocol                               
