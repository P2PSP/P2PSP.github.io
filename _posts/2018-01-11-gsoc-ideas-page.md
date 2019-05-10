---
layout: post
title: 'GSoC Ideas Page'
author: 'P2PSP Team'
---

Welcome to P2PSP Google Summer of Code (GSoC) 2018 project ideas page. We will use this page to develop possible project ideas. Please note that anyone who is interested can participate in this process. You do not have to be a GSoC student or mentor to suggest possible project ideas. If you want to suggest an idea, please, send an email with the subject "GSoC 18 Ideas" to info [at] p2psp.org. You can also join the team at GitHub, chat on Gitter.

**Potential mentors**: Vicente González Ruiz, Cristóbal Medina López, Leocadio González Casado, Juan Álvaro Muñoz Naranjo, Juan Pablo García Ortiz, Jose Manuel García Salmerón, Max Mertens,  Juan José Moreno Riado, and Yuansong Qiao.

## The current list of ideas for the GSoC

### Statistics module to measure the audience and other interesting data.
  * Explanation: This project addresses the implementation of a statistics module for P2PSP that records information related to the stream, number of peers (audience) per minute, in/out of peers, total peers, etc. That set of data must be displayed a convenient graphical interface. A very interesting extension is to consider also the use of social sign-in (Facebook, Twitter, Google+).
  * Expected deliverables: An application that displays graphs of all data recovered. 
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Python and JavaScript.
  * Skill level: Easy.
  * Mentor:
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/core/Statistics-module.

### WebRTC implementation of a NAT traversal procedure based on port prediction.
  * Explanation:  To implement NTS using STUN servers. Using the tools provided by ICE, users behind a symmetric NAT cannot participate in a team in a collaborative way by themselves, because the current solution using TURN servers does not follow the distributed communication scheme of P2P networks. Several STUN servers or a STUN server with several IP addresses can be used to implement a similar port prediction algorithm as the one in NTS.
  * Expected deliverables: A JS + WebRTC code implementing the procedure.
  * Knowledge prerequisites: Basic skills on computer networks, sockets, JS and WebRTC.
  * Skill level:  Easy.
  * Mentor: 
  * Priority: High.
  * Room: https://gitter.im/P2PSP/Virtual-Room. 

### Chromecast support for P2PSP.
  * Explanation: Chromecast is a digital media player developed by Google which can be connected to a TV. This idea consist in adding the option "send to chromecast" to the P2PSP GUI (See 11). This option should send the stream from a desktop application to Chromecast. Note that the player controls are held in the desktop version.
  * Expected deliverables: A new module for the GUI with Chromecast support.
  * Knowledge prerequisites: Python and API Chomecast programming skills.
  * Skill level: Easy.
  * Mentor:  
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/core/Chromecast-support

### Implementation of the P2PSP as a JS library: P2PSP-JS.
  * Explanation: A WebRTC implementation providing a comprehensive, configurable, and easy to use P2PSP API.
  * Expected deliverables: A P2PSP API.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Python, JavaScript, HTML5 and WebRTC.
  * Skill level: Experienced.
  * Mentor:  
  * Priority: High.
  * Room: https://gitter.im/P2PSP/core/Chromecast-DBS.

### Implementation of the Data Broadcasting Set of Rules 2 (DBS2) using P2PSP-JS as a Chromecast application.
  * Explanation: A Chromecast device can run a P2PSP peer and a player using the WebRTC framework. This idea depends on the success of idea number 2, but after that, a minor programming effort should be performed.
  * Expected deliverables: A peer implementation for Chromecast.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Bash, Python, JavaScript, HTML5 and WebRTC.
  * Skill level: Experienced.
  * Mentor:  
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/core/Chromecast-DBS.

### Improving data security with the DPS layer.
  * Explanation: In some context, data privacy could be necessary. This functionality can be provide by data encryption and some kind of keys sharing between peers.
  * Expected deliverables: A new implementation of the DPS (Data Privacy Set of rules) layer.
  * Knowledge prerequisites: Basic skills on computer networks, security and Python.
  * Skill level: Intermediate.
  * Mentor:
  * Priority: Medium. 
  * Room: https://gitter.im/P2PSP/core/DPS.

### Automatization of the deployment of a P2PSP team (or a part of it) over the PlanetLab infrastructure.
  * Explanation: The PlanetLab is a network of public (Linux) hosts exclusively dedicated to the development and performance measurement of communication protocols. The idea of this project is to automatize as much as possible this task, enabling the deployment and evaluation of hundreds peers.
  * Expected deliverables: A script deploying a P2PSP team over PlanetLab.
  * Knowledge prerequisites: Shell scripting, Unix.
  * Skill level: Intermediate.
  * Mentor: 
  * Priority: Low.
  * Room: https://gitter.im/P2PSP/PlanetLab.

### Development of a tracker of splitters.
  * Explanation: A channel is associated to one or more splitters that stream the same content, in a synchronized way. In order to achieve a good load balancing among the splitters of the same channel, a tracker could determine (depending on the number of peers, for example, in each team) the a free splitter (team) and redirect the incomming peer to it. See https://github.com/P2PSP/core/tree/master/doc/TCS.
  * Expected deliverables: A standalone application (written in a portable language such as Python or C++) which implements the previously described behaviour.
  * Knowledge prerequisites: Socket programming and a good understanding of P2PSP.
  * Skill level: Easy.
  * Mentor: 
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/Splitters-Tracker.

### Implementation of a media-aware splitter.
  * Explanation: The current splitter divides the code-stream into blocks (chunks) of the same size and that size usually does not match with the native block of the video (for example, in H.264 exist NAL units, in Theora there are pages, etc). Therefore, if a chunk is lost (in the current implementation), even if it is two bytes long, two blocks of video could be affected. To solve this drawback, this idea proposes to modify the implementation of the splitter available at: https://github.com/P2PSP/p2psp, in order to use a chunk size suitable for the media transmitted. The incorporation of such functionality should be provided as a "pluging".
  * Expected deliverables: A new version of the splitter.
  * Knowledge prerequisites: C++, video formats.
  * Skill level: Experienced.
  * Mentor: 
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/core/MediaAware-Splitter

### Improve GoPro project.
  * Explanation: This idea is an extension of implemented idea 7 (see below). Add support for other cameras like SJCAM (the more the merrier). Maybe would be possible to add more streaming platforms like twitch or Twitter.
  * Expected deliverables: An improved GoPro Gateway app.
  * Knowledge prerequisites: Java, Android and socket programming.
  * Skill level: Easy.
  * Mentor: 
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/GoPro-Gateway.

### Testing the reliability of P2PSP teams.
  * Explanation: It not easy to test if a modification in P2PSP has the expected impact. For this reason, we propose to write a Bash script which is able to create a team on a single host, run it and provide statistics about its performance (lost chunk ratio, for example). 
  * Expected deliverables: A tester for the P2PSP protocol.
  * Knowledge prerequisites: P2PSP and Bash.
  * Skill level: Easy.
  * Mentor: 
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/ProtocolTest

### Automatic peer clustering using several teams.
  * Explanation: The synchronizer entity can be used by peers to receive (the same) media from two or more team, simultaneously. In this idea, we propose to extend the functionality of the synchronizer to allow a peer to move between teams in a seamless manner.
  * Expected deliverables: An extended synchronizer.
  * Knowledge prerequisites: C++ and socket programming.
  * Skill level: Experienced.
  * Mentor: 
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/DBS-Min-Latency

### Using Internet Sockets instead of Unix sockets.
  * Explanation: Currently, we use Unix domain sockets to communicate between processes in the same host system. So, our simulator uses files as "address" instead of a (host, port) pair. If we turn AF_UNIX into AF_INET the translation between the simulator and the production code would be almost the same. We could apply all changes tested in the simulator to the production code in a faster way. Additionally, the code which gathers statistics should be implemented using socket.
  * Expected deliverables: An improved P2PSP simulation version.
  * Knowledge prerequisites: Socket programming, Python.
  * Skill level: Intermediate.
  * Mentor: 
  * Priority: High.
  * Room: https://gitter.im/P2PSP/Simulator

### Measure the latency of the chunks transmission.
  * Explanation: This idea consist in measuring the time the chunks take to travel from the splitter to the peers.
  * Expected deliverables: An improved P2PSP simulation version.
  * Knowledge prerequisites: Socket programming, Python.
  * Skill level: Easy.
  * Mentor:
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/Simulator

### Implement a lost-chunks recovery system based on Reed-Solomon codes.
  * Explanation: This idea consist in implement a recovery system based on Reed-Solomon error correction codes.
  * Expected deliverables: An improved P2PSP simulation version.
  * Knowledge prerequisites: Socket programming, Python.
  * Skill level: Easy.
  * Mentor:
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/Simulator

### Implement IMS layer.
  * Explanation: Take advantage of IP multicast facility when available. See https://github.com/P2PSP/core/tree/master/doc/IMS.
  * Expected deliverables: An improved P2PSP simulation version.
  * Knowledge prerequisites: Socket programming, Python.
  * Skill level: Easy.
  * Mentor:
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/Simulator

### Reimplement splitter_dbs.py to replace threading.Thread by multiprocessing processes.
  * Explanation: Python GIL has some limitations for CPU intensive applications. Processes could help to resolve that problem.
  * Expected deliverables: An improved P2PSP simulation version.
  * Knowledge prerequisites: Socket programming, Python.
  * Skill level: Easy.
  * Mentor:
  * Priority: High.
  * Room: https://gitter.im/P2PSP/Simulator
 
Note: the mentor assigned for each idea is not definitive.

## Ideas proposed in the past turned into reality:

### Design and Implementation of a new source video from mobile phone (Android). 
  * Explanation: Mobile phones are nowadays present in everyone's pocket, meaning that there is a camera at virtually any populated place in the world. Giving users the chance to share what they are watching live with the rest of the world seems to be a good idea and is a natural application of the phone+Internet combination. On the other hand, P2PSP is a minimal (easy to implement) protocol designed for the streaming of media (audio and video). At the present time, there is a working Python implementation available at Launchpad. We propose the development of an Android app that captures the video of the camera and sends it to a streaming server (possibly Icecast) on real time. From there, P2PSP distributes the stream to the rest of the world.
  * Expected deliverables: An application for Android that captures the video of the camera and send it to a streaming server (icecast) in real time.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Android programming skill.
  * Skill level: Experienced.
  * Mentor: Juan Pablo García Ortiz, Vicente González Ruiz and Cristóbal Medina López
  * Student: Jorge Martín Espinosa
  * Results: GitHub - https://goo.gl/jMgZnE 
  * Funded by Luxunda S.L. Thanks!!

### Translate core code in python to C++.
  * Explanation: In order to create a common core for different devices implementations such as mobile phone, desktop, embedded devices, etc., we propose a translation of the core to C++.
  * Expected deliverables: A new core code in C++.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, C++ programming skills.
  * Skill level: Intermediate.
  * Mentor: Juan Pablo García Ortiz and Vicente González Ruiz
  * Student: Jorge García Hinestrosa and Antonio Vicente Martín.
  * Results: GitHub - http://code.p2psp.org 
  * Funded by Luxunda S.L. Thanks!!

### Implementation of the NAT Traversal Set (NTS) of rules of the Peer-to-Peer Straightforward Protocol (P2PSP).
  * Explanation: Another important aspect for improving P2PSP is that peers behind NATs can run with some form of restricted access from the outside. This set of rules defines how to provide this functionality.
Expected deliverables: A Python class that inherits the Splitter_DBS class of splitter.py and a Python class that inherits the Peer_DBS class of peer.py, both implementing the techniques described in the NTS.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Bash and Python.
  * Skill level: Intermediate.
  * Mentor: Vicente González Ruiz and Juan Pablo García Ortiz
  * Student: Max Mertens
  * Results: GSoC15 - https://goo.gl/VuTfP9 | GitHub - https://goo.gl/IJFQAb
  * Funded by Google Summer of Code 2015. Thanks!!

### Prevention of Pollution Attacks - Model 1.
  * Explanation: In the P2PSP system it is necessary  a method to avoid attacks consisting on the injection of fake information into the team. An attacker can do this by sending poisoned chunks. A way to tackle this problem is by inserting one o more “trusted-peers”. These peers are authenticated as trusted to the splitter, but not to the rest of peer (the behavior of a trusted-peer is identical to any other peer making impossible for a poisonous peer to know these special peers). The source sends to the trusted-peers a hash code for every chunk sent to the team, using a reliable transmission protocol. Alternatively, hash codes for randomly chosen chunks are sent to the trusted-peers (note that the poisonous peer is not aware of which chunks were selected). If a poisonous peer sends an altered chunk to a trusted-peer, it will detect the change using the hash code and will notify the source, which will eject the poisonous peer from the team. 
Expected deliverables: A Python class that inherits the DBS class of splitter.py and a Python class that inherits the DBS class of peer.py, both implementing the techniques described in the DIS of rules.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Bash and Python.
  * Skill level: Easy/ Intermediate.
  * Mentor: Leocadio González Casado and Juan Álvaro Muñoz Naranjo.
  * Student: Ilya Shakirov
  * Results: GSoC15 - https://goo.gl/jaHQ83 | GitHub - https://goo.gl/bqTe9X 
  * Funded by Google Summer of Code 2015. Thanks!!

### Design, implementation and integration of a graphical user interface for the Peer in the P2PSP python implementation.
  * Explanation: There already is a working implementation in Python but it does not have any integrated GUI, so the user must run a player separately. The purpose of this work is to use LibVLC (a media framework that embeds the features of VLC into an application) to integrate a peer and a player into a single executable. However, any other suggestions about multimedia libraries are welcome. The P2PSP source code is available at https://launchpad.net/p2psp. You can find more information about LibVLC and Python in https://wiki.videolan.org/PythonBinding/. The code must be documented with Doxygen.
  * Expected deliverables: A single executable integrating a GUI, a player and a P2PSP peer. 
  * Knowledge prerequisites: Python programming skills.
  * Skill level: Easy / Intermediate.
  * Mentor: Cristóbal Medina López and Jose Juan Sánchez Hernández.
  * Student: Prince Kumar
  * Results: GSoC15 - https://goo.gl/oWxmnV | GitHub - https://goo.gl/y5zJUj 
  * Funded by Google Summer of Code 2015. Thanks!!

### Implementation of the End-point Masquerading Set (EMS) of rules of the Peer-to-Peer Straightforward Protocol (P2PSP).
  * Explanation: EMS handles those situations where two or more peers and behind a NAT device that performs IP masquerading (a framework commonly found when peers runs in private networks).
  * Expected deliverables: A C++ SplitterEMS class that inherits the SplitterDBS class defined in splitter_dbs.h and a C++ PeerEMS class that inherits the PeerDBS class of peer_dbs.h.
  * Knowledge prerequisites: Basic skills on computer networks, sockets and C++.
  * Skill level:  Intermediate.
  * Mentor: Vicente González Ruiz and Max Mertens.
  * Room: https://gitter.im/P2PSP/p2psp/EMS.
  * Student: Kevin Shi
  * Results: GSoC16 - https://goo.gl/JsP92v | GitHub - https://goo.gl/my1XnO
  * Funded by Google Summer of Code 2016. Thanks!!

### Implementation of a GoPro Gateway.
  * Explanation: Action cameras are becoming popular. We think that create a gateway between the camera and Internet is a interesting thing. So, in this project we propose create an app for mobile devices that use the GoPro camera as a source and send the stream to the Internet. It could be sent to a P2PSP splitter, Youtube, Icecast, etc.
  * Expected deliverables: A mobile phone application (Android or iOS) which implements the previously described behaviour.
  * Knowledge prerequisites: Mobile programming (Android or iOS), basic skills on computer networks and sockets.
  * Skill level: Intermediate.
  * Mentor: Jose Manuel García Salmerón and Vicente González Ruiz
  * Room: https://gitter.im/P2PSP/GoPro-Gateway.
  * Student: Sravan Ravi
  * Result: GSoC16 - https://goo.gl/QuYbPO | GitHub - https://goo.gl/jiDdlv
  * Funded by Google Summer of Code 2016. Thanks!!

### The P2PSP virtual room application.
  * Explanation: We want to offer an evolution of this experiment (https://youtu.be/R7035-XaZd4). A virtual room where friends share videos among them in real time directly over the web browser, with synchronized playback and a video chat at the same time. It is like to be in the same room watching a movie but in a virtual way. Browsers are connected each other over a P2P overlay (using WebRTC), this means that we have a private communication, without going through a server. It's a browser-to-browser connection. 
  * Expected deliverables: A website where an user can share a video with his friends in real time, with synchronized playback and they can have a video chat at the same time. All of this over a P2P overlay.
  * Knowledge prerequisites: Basic skills on computer networks and sockets, Python, JavaScript, HTML5 and WebRTC.
  * Skill level: Intermediate.
  * Mentor: Cristóbal Medina López and Jose Manuel García Salmerón 
  * Priority: High.
  * Room: https://gitter.im/P2PSP/Virtual-Room.
  * Funded by Google Summer of Code 2017. Thanks!!

### Implementation of a REST WebService for the P2PSP media sources.
  * Explanation: At its current state, the Splitter - which handles the team of peers - needs to be connected using an IP and Port which must be either fixed or previously agreed for both streaming video and peer connection. Which we want to accomplish here is to have a wrapper WebService that can receive the video through an HTTP request - or any other way that can easily get through NATs-, create an Splitter instance and redirect the video to it, assigning a 'friendly URL' to it that can be easily shared. When this URL is visited, it will reply with the IP and port that the peers need in order to connect to the Splitter.
  * Expected deliverables: A REST web application that will dynamically create Splitters, receive the video and redirect it to the correct Splitter, assign URLs to them and reply to those URL with the IP and port needed to connect to the team that the Splitter runs.
  * Knowledge prerequisites: Basic skill on computer networks, sockets, REST apis and the HTTP protocol.
  * Skill level: Easy.
  * Mentor: Vicente González Ruiz and Juan Pablo García Ortiz
  * Priority: High. 
  * Room: https://gitter.im/P2PSP/MediaSources-server.
  * Funded by Google Summer of Code 2017. Thanks!!

### A P2PSP simulator.
  * Explanation: Create a simulator of the P2PSP protocol using Thread and message passing in order to do the prototyping of new strategies easier. If we use Python, we can use Queue class. It’ll be very useful!
  * Expected deliverables: A complete stand-alone simulator of P2PSP.
  * Knowledge prerequisites: Python.
  * Skill level: Intermediate.
  * Mentor:  Cristóbal Medina López
  * Priority: High.
  * Room: https://gitter.im/P2PSP/Simulator
  * Funded by University of Almería and Ministry of Education Spain (MECD). Thanks!!

## Ideas partially done

### GUI-QT.
  * Explanation: The purpose of this work is to integrate a peer and a player into a single executable GUI using QT and C++.
  * Expected deliverables: A GUI for the P2PSP peer + player.
  * Knowledge prerequisites: QT and C++.
  * Skill level: Intermediate.
  * Mentor: 
  * Priority: Medium.
  * Room: https://gitter.im/P2PSP/GUI-QT
  * Funded by Google Summer of Code 2017. Thanks!!

