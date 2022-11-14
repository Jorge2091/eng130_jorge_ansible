# Ansible
Ansible Acts as a controller to other instances. Ansible is an automated engine that automates provisioning configuration management, application deployment and many other processes.
Ansible can be installed on Red Hat Enterprise Linux, CentOS, or Fedora; Ubuntu; Debian making it really flexible.
## what is Iac
Infrastructure as code (IaC) uses DevOps methodology and versioning with a descriptive model to define and deploy infrastructure, such as networks, virtual machines, load balancers, and connection topologies. Just as the same source code always generates the same binary, an IaC model generates the same environment every time it deploys.

## Blue green deployment
It used for upgrade or updates in applications. It is used when you don't want any downtime when deploying new features or updates to a server.
### requirement 
requirement for ansible download/installation
- `sudo apt-get install software-properties-common`
- `sudo apt-add-repository ppa:ansible/ansible`
- `sudo apt install ansible`
- to make easier to view `sudo apt install tree`
### setup for ansible
1. SSH into Controller VM
2. Run Update and Upgrade
3. Run `sudo apt-get install software-properties-common`
4. Run `sudo apt-add-repository ppa:ansible/ansible`
5. Run `Sudo apt-get update`
6. Run `sudo apt-get install ansible -y`
7. Check `sudo apt-get install tree `
8. cd into `cd /etc`
9. cd into `cd ansible/`
10. pwd = /etc/ansible
11. Now we want to ssh into web vm from insode the controller vm
12. Enter `sudo ssh vagrant@192.168.56.12` enter then password `vagrant`
13. you should now be inside the web vm
14. To return back to controller enter `exit`
15. Now we want to ssh into web db from insode the controller vm
16. Enter `sudo ssh vagrant@192.168.56.12` enter then password `vagrant`
we can automated this be going inside the hosts file
17. sudo nano hosts - now we can edit and some example are there
18. for this case `[web]`; in a new line `192.168.33.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant`
