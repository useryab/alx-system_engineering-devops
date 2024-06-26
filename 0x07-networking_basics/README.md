# Networking Basics

## Networking Devices(Part-1)

### Hosts

Hosts: Any device that sends or recieves traffic
       - Computers
       - Phones
       - Servers

Hosts can be divided into two *Clients and *Servers
Clients: Devices that initiate a request
Servers: Computers with software installed which responds to specific requests

### Ip address

is the identity of each host needed to send or recieve traffic
requests are stamped with source and destination ip's

ip address is 32 bits represented as four octets which are then changed into decimals
each octet can be 0-255 and can be assigned to host heirarchially i.e *subnetting

### Network

is what transports traffic between hosts

## Networking Devices(part-2)

### Repeater

in a network signal decays as distace increases to mitigate that we use *Repeaters
a repeater is a device that extends the reach of a signal by receiving it and then retransmitting it with a stronger power.
This is particularly useful when a signal weakens as it travels over long distances or encounters obstacles.

### Hubs

In networking, a hub is a relatively simple device that functions like a multi-port repeater. It essentially acts as a central connection point for devices on a network, typically a Local Area Network (LAN). Let's break down how hubs work:

* **Connectivity:**  A hub has multiple ports, each allowing you to connect a device like a computer or printer.

* **Data Broadcasting:** When a device transmits data through a hub, that data gets broadcasted to all the other devices connected to the hub. This means every device receives the data, regardless of whether it's the intended recipient.

* **Collision Domain:** Since every device receives all broadcasts, hubs create a single collision domain. This means if two devices attempt to transmit data simultaneously, the data packets collide and get corrupted. The devices then need to wait and re-transmit, causing network inefficiency.

* **Limited Functionality:** Unlike a switch, hubs don't have the intelligence to identify the destination of data packets. They simply broadcast everything they receive.

**Use Cases of Hubs:**

* **Simple LANs:** Hubs were commonly used in earlier days to set up basic LANs, especially for home or small office networks.

* **Specific Needs:** In some cases, hubs might be preferable if you need to connect devices with different network speeds or want to monitor all network traffic on a segment.

**Decline in Usage:**

* **Network Performance:** Due to their limitations, hubs are not widely used in modern networks. Broadcasting data to all devices can lead to network congestion, especially with heavy traffic.

* **Switches Offer Advantages:** Switches are more intelligent devices that can learn the MAC addresses of connected devices and direct data packets only to the intended recipient. This significantly reduces network congestion and improves overall performance.

While hubs have largely been replaced by switches, they can still be found in some specific scenarios or legacy networks.


### Bridge

In computer networking, a bridge acts like a smart traffic controller, specifically designed to connect multiple network segments or Local Area Networks (LANs) into a larger, logical network. Here's a breakdown of how bridges function:

**Segmentation and Traffic Control:**

* Bridges divide large networks into smaller, more manageable segments. This reduces overall traffic on the network and improves performance.

* Unlike hubs, which broadcast data to all connected devices, bridges are intelligent. They use MAC addresses (unique identifiers for network devices) to determine the destination of data packets.

* If the destination device is on the same segment as the sender, the bridge won't forward the packet, reducing unnecessary traffic.

* If the destination is on another segment, the bridge forwards the packet efficiently.

**Operational Layer:**

* Bridges operate at Layer 2 (Data Link Layer) of the OSI model. This layer deals with physical addressing of network devices and error-free transmission of data packets over the network media.

**Benefits of Bridges:**

* **Improved Network Performance:** By segmenting networks and reducing broadcast traffic, bridges significantly improve network efficiency.

* **Reduced Network Congestion:** With less overall traffic, bridges help alleviate congestion, especially in busy networks.

* **Extended Network Reach:** Bridges can connect geographically separated LANs, creating a larger logical network.


**While bridges offer advantages, they have limitations compared to routers:**

* **Limited Network Segmentation:** Bridges can only segment networks based on MAC addresses, not IP addresses like routers.

* **Broadcast Traffic Within Segments:** Even with bridges, broadcast traffic can still occur within each network segment.

**Use Cases of Bridges:**

* **Connecting LAN Segments:** Bridges are commonly used to connect LAN segments within a building or campus, extending the network reach.

* **Traffic Control:** They can be used to isolate network traffic and improve performance in specific network segments.

* **Legacy Networks:** Bridges might still be found in some older networks, but their use has diminished with the rise of more advanced switching technologies.

In summary, bridges play a crucial role in creating efficient and manageable network structures, particularly for connecting LAN segments. However, for more complex network routing and segmentation based on IP addresses, routers are the preferred solution.

### Switch

### Router

## The OSI Model

The OSI model, also known as the Open Systems Interconnection model, is a conceptual framework developed by the International Organization for Standardization (ISO).  It provides a common language for discussing how network communication works.

Think of the OSI model as a layered roadmap that illustrates the different stages involved in getting data from one device to another on a network. Each layer performs specific functions and interacts with the layer above and below it to ensure successful communication. Here's a breakdown of the seven layers of the OSI model:

**Layer 1: Physical Layer**

* The physical layer deals with the physical transmission of raw data bits across the network media, such as cables or wireless signals.
* It includes specifications for things like connectors, voltages, and data transmission rates.
* Examples of physical layer devices include network cables, hubs, wifi and repeaters.

**Layer 2: Data Link Layer**

* The data link layer is responsible for packaging data into frames and ensuring error-free transmission between network devices on the same physical link.
* It performs error detection and correction and handles media access control (MAC) addressing, which is the unique hardware address assigned to network devices.
* Switches operate at the data link layer.
* NIC's, wifi access cards

**Layer 3: Network Layer**

* The network layer is responsible for routing data packets across different network segments. It determines the best path for data to travel to reach its destination.
* This layer uses logical addressing, such as IP addresses, to identify devices on the network.
* Routers operate at the network layer.

**Layer 4: Transport Layer**

* The transport layer provides reliable data transfer services between applications on different devices.
* It establishes connections between applications, manages data flow control, and ensures error-free delivery of data packets.
* Protocols like TCP (Transmission Control Protocol) and UDP (User Datagram Protocol) operate at the transport layer.
* 0-65535 TCP (favors reliability)
* 0-65535 UDP (favors efficiency)
both are strategies of distinguishing data streams
**Layer 5: Session Layer**

* The session layer establishes, manages, and terminates sessions between applications on different devices.
* It allows applications to exchange control information and synchronize communication.

**Layer 6: Presentation Layer**

* The presentation layer deals with data formatting and encryption.
* It ensures that data is presented in a way that can be understood by the receiving application, regardless of the underlying hardware or software differences.

**Layer 7: Application Layer**

* The application layer provides network services directly to user applications.
* This is the layer where user applications like web browsers, email clients, and file transfer programs interact with the network.

The OSI model, although not a specific protocol used in actual network communication, serves as a valuable tool for understanding the different functionalities involved in data transmission over a network. It provides a common reference point for network professionals to troubleshoot network issues and develop network protocols.
