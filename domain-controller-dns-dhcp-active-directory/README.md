# Windows Server Project
## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Technologies](#technologies)
- [Steps](#Step_by_step)
- [Comments](#comments)
- [License](#license)

## Overview

This project sets up a Windows Server home lab environment to set up essential services such as Active Directory, DNS, and DHCP and more. By simulating a small-scale network infrastructure we can test windows server environment and our applications.

## Architecture

[//]: # ![Diagram of the system](<Diagram-system.jpg>)

## Technologies

- **Windows Server**: Serving as the primary operating system, Windows Server provides the foundation for hosting essential network services and applications within the home lab environment.
- **Active Directory**: Active Directory (AD) is a directory service developed by Microsoft for Windows domain networks. It authenticates and authorizes all users and computers in a Windows domain network, assigning and enforcing security policies for all computers and installing or updating software.
- **DNS**: Domain Name System (DNS) is a hierarchical decentralized naming system for computers, services, or other resources connected to the Internet or a private network. It translates domain names, which are meaningful to humans, into numerical identifiers associated with networking equipment for the purpose of locating and addressing these devices worldwide.
- **DHCP**: Dynamic Host Configuration Protocol (DHCP) is a network management protocol used on Internet Protocol (IP) networks. DHCP automatically assigns IP addresses and other network configuration settings to devices on a network.

## Step_by_step

The usage of this home lab environment involves setting up and configuring the Windows Server with Active Directory, DNS, and DHCP roles. Here are the steps we follow :
- Install VirtualBox and add Virtual Machines
- Install Windows Server 2019 on the new Virtual Machine
- Configure Active Directory Directory Services
- Create the Domain and Configure the Domain Controller
- Create an Admin User
- Setup Windows 10 Virtual Machine
- Configure Network Connections
- Join Computer to Domain
- View Active Directory Computers

## Comments

Comments or Contributions to enhance the project or usability of this lab environment are welcome. 

## License

This project is a private one