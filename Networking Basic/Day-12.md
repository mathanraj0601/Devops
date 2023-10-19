# Day 12
Summary
# NAT and Default Gateway
- Default gateway is the ip of the router interface of the LAN network which is assigned to Host for communicating to host in internet
- Basically, Host check the destination ip by any performing and operation with subnet gateway ip to find where the destination with in the ip or not if not then it will send Arp request to get mac of default gateway to transfer the frames
- NAT : network address translation is used to translate the host private ip to public ip inorder to make it communicate to outer world. 