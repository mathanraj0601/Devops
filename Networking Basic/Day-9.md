# Day 9
Summary
- IP packet transmission types (unicast, multicast, broadcast)
- Unicast 
    one to one communication (destionation ip are in the network level range 1.1.1.1 to 223.255.255.255. )
- Broadcast
    one to all device in the network. these are two types
    - directed broadcast : particular network where the host part is all 1 example 172.1.1.255/24 then all the devices in the network 172.1.1.0/24 will receive
    - limited broadcats : all the devices in a network ( destination IP is 255.255.255.255 ) 

> Note  : limited ip are restricted by routers for security purposes

- Multicast 
    - one to all device in a group (ip are between 224.0.0.0 to 239.255.255.255)
    - the host in the group are called multicast client will get into the group based on subscription based services

- IP address types
    - Public , private and other special uses
    - due to the depletion of ipv4 we are now switching to ipv6 but we aslo splitted the ipv4 whole address as public and private
    - public address are assigned to organization or isp in a range and they provide services to a lan network inside the lan network we use private ip which on accessing the network usually convered to publiv ip using NAT engine.
    - Loopback ip (127.0.0.0 /8 or 127.0.0.1 to 127.255.255.254) : helps computer to route traffic to itself
    - link local address (169.254.0.0 /16 or 169.254.0.1 to 169.254.255.254 ) : help computer to assign ip to itself when there can't reach network to get a ip

- Class based ip : class A , Class b, class c, class d (multicast) which lead to unused ip so classless gives the public network based on requirement we can get thet from 5 RIR form different countries

- Network segmentation : split network into mutliple subnet 
- one of the reason behind segmentation is similar to ip broadcast there is arp and dhcp broadcast in layer 2 (data link layer) to identify the destination mac and get ip assigned and for that frame the destionation mac are ff:ff:ff:ff:ff:ff  if the network is big the broadcast will slow down the performance because all device will broadcast so we are segmenting
- There are other reason which are based on location,roles,devices used etc.,


> Note routers don't forward the broadcast and multicast frame or packet outside of the network.
broadcast domain is the network in which the broadcast packet can  be send