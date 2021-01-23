# Linux Patching w/Ansible and Docker (Takes about 5 mins to Build)


This project will attempt to set up a local environment with Docker to test ansible scripts.  
In an attempt to automate some patching steps for groups supported by PAS.  

* [ ]  Install Docker Desktop https://www.docker.com/products/docker-desktop
* [ ]  Start Docker Desktop
* [ ]  Download this project from GitLab with the Download Button
* [ ]  Extract all the contents into a location on your PC
* [ ]  Navigate to the location on you PC that you have just extracted the project contents
* [ ]  Build test env w/Docker using the following command: 
    *       docker-compose up -d --build --scale ansible_node=3
* [ ]  Docker containers are build with an **ansible** and **root** user available.  
    *       Both users passwords are ansible
* [ ]  Log into the **control_node** using command line: 
    *       Linux:   docker exec -it control_node bash
    *       Windows: winpty docker exec -it control_node bash
* [ ]  Log into the **control_node** using Docker Desktop CLI button:  
    *     >_    CLI button
* [ ]  Run the command:  
    *       su root ./add_hosts.sh
    *       password = ansible
The worker nodes are named:  ansible_node_**number**

After running the **./add_host.sh** on the **control node**:

**ssh** onto any worker node from the ansible control node.  With the following command:
*   ssh **box_1**
    *     Change the box_(number) to ssh into a different box

* [ ]  To test ssh connection run the following command from the **control_node** :   
    *     ssh box_1
* [ ]  To test **ansible** run the following command from the **control_node**:   
    *       ansible patching[0] -m ping
            ansible patching[0] -a "free -h"
* [ ]  Happy Testing!


# Project Commands
*  **Build**: Current Scale Limit = 50
    *       docker-compose up -d --build --scale ansible_node=3
            Change the --scale ansible_node=<number>  to scale up or down.  
                 i.e. 
            docker-compose up -d --build --scale ansible_node=50
*  **Test** **Adhoc** **Commands**: 
    *  **Ping:** 
    *      box_1: 
           ansible patching[0] -m ping
    *      box_1-50:
           ansible patching[0:49] -m ping
    *  **Memory Stats:** 
    *      box_1: 
           ansible patching[0] -a "free -h"
    *      box_1-50: 
           ansible patching[0:49] -a "free -h"

# Play Books Commands
*  Install and Enable Chrony (for time synchronization) This example playbook will only do it for 1 node_1 server.  Will ignore the rest.  
    *       ansible-playbook chrony-playbook.yml
