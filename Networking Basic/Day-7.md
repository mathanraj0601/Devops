# Day 7
Summary
- Communiation/ Network Media :
    - Wired ( Coax , UTP, Fiber)
        - Coax ( Cable TV Consist of central core copper surrounded by insulator with a BNC connector -  electric)
        - UTP ( unsheilded twisted pair cable having 8 wires which are as 4 pair twisted and connected to a RJ45 connector , color coded to identify patterns - electric )
        - Fiber optic (central plastic or glass surronded by insulator - light )
    - Wireless ( Modulation )

> Connector take care of connection between device port and wires. 
 Fiber are for long distance(Between building) and other wired media are for with in building (small distance).
    
- Encapsulation
    - Message inside a letter
    - Data inside a frame at data link layer
    - Frame has following field
        - preamble : sync
        - Start Frame delimiter : indicates start of the frame info
        - Source MAC
        - Destination MAC
        - Types / length : ipv4 or ipv6 / size of the data
        - Data
        - Frame check sequence : Error checking

- The Access layer
    - Reponsible transmission with in a network using ethernet hub or switch
    - Switch store the connect device mac address so that it can able to route the frame
    - it stores the information when by examing the incoming frames mac is there in its table if not add 
    - If destination mac address is not there it will send the frame every ports other that the received port.

