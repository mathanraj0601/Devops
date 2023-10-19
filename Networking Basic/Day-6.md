# Day 6
Summary
- Communication protocol among human
    - Method (face-to-face,written)
    - Language
    - Confirmation (Acknowledegment)
- Communication among Computer also follow protocol invloves followinn
    - Message size
    - Message format (common language)
    - Encoding (bit as light or electrical signal)
    - Encapsulation - Additional information along with message ( Source and destination IP )
    - Message pattern - wait for response / not
    - timing - speed of the network / Transmission of bits.
- We see the network and end device using topology diagram
- Device is like inside a bubble it doesn't know
    - its ip address
    - where it belong (network)
    - it destination device address
    - Where destination device is in same or different network if different then how to send
- To solve the above problem protocol come to play there are two types
    - The protocol let device identify themselves example : Etherent or wireless protocol (ICMP or DHCP)
    - The protocol let device sent and receive packet (smalles unit of information) example : TCP helps in reliability, IP - Delivery of packets

- DHCP / ICMP
    - give device IP and let it know the network it belong
    - Default gateway (external network communicatio)
    - Give the DNS server location

- Internet standard let the new device to follow the rules / protocol to be in the internet eg: email send in pc will be seen in mobile because both follows the standards
- Internet standrad are maintained by IETF which they document in RFC ( request for common ) any one can contribute and get approved by IETF to get it in standard.

- Internet protocol suite (stack) / model
    - A single message / request need a lot ot protocol to work together to be sucessfully made or transmitted
    - in case of simple web page request involves
      - HTTP : for webpage requesting
      - TCP : for reliable
      - IP : source to destination (packet know where to go) in different network aslo
      - Ethernet : How device communicate using NIC in the same network
- TCP/ IP ( protocol model : have implementation details at each layer)
    - Application layer ( presentation / encoding etc.,)
    - Transport layer(reliability)
    - Network layer (IP and routing)
    - Network access layer (Mac and NIC)
- OSI (reference model no implementation details but give clear picture of how network should funcion)
    - Application layer ( process to process)
    - Presentation layer(encoding to common format)
    - Session layer - data exchange
    - Transport Layer- segment , re-assemble and reliablity of packet
    - network layer - IP and routing
    - Data link Layer - Mac and device to take common media
    - Physical layer - How the bit is converted (light, electric signal etc.,)

- TCP/IP and OSI have similarities but the layer above network and below transport are spilt or divided as two or three 
- OSI gives deep understanding the overall function of the network. 
- OSI and TCP/IP follows layered architecture because a change in one layer doesn't affect other.
