Ansible Playbook for PHP Development on Manjaro
===============================================

This playbook is designed to be used on a fresh install of Manjaro Linux with AwesomeWM window manager. The preconfigured `master.yml` will install and configure all of the needed software for a PHP developer to be able to start working on projects.  
Be aware to change the user variable in `master.yml` to your username.  
If you want to add your own roles, just copy the `new-role` folder and rename it. Then add it to the `master.yml` file.  

**Try to NOT install software manually. But put it in an existing role or better yet, a new and specific role.**

How to Use
----------

1. install Manjaro from https://github.com/luho91/manjaro-awesome/releases/latest
2. copy your personal configuration to the new system
   1. ssh keys
   2. dotfiles (.bashrc etc.)
   3. rc.lua (AwesomeWM config)
3. pull down this repo
4. change the user variable in `master.yml` to your username (it is currently set to `luho`)
5. install the requirements `ansible-galaxy install -r requirements.yml`
6. run playbook `ansible-playbook master.yml --ask-become-pass` and enter the sudo password
7. Setup the Docker Proxy Stack
   1. Follow the instructions to install the certificates in your browsers. (Firefox and Chrome) https://sengorius.github.io/repositories/docker-proxy/install.html#install-the-rootca-to-firefox
   2. The Docker network built by the Docker Proxy Stack is called "proxy-network". Use this in your projects `docker-compose.proxy.yml` and declare it as "external".
8. To setup VPN, follow this guide: https://docs.tools.vcat.de/books/anleitungen/page/open-vpn-einrichten-linux-manjaro the needed packages are already installed.

-----
To Do
-----

- [ ] add a role for mounting the VCAT Cloud and the shared file server
