# Ansible nginx Webserver deployement stack 

## 1. Requirements
- [Docker-ce](https://docs.docker.com/engine/install/)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Python3.7.x](https://realpython.com/installing-python/#:~:text=There%20are%20several%20common%20ways%20to%20accomplish%20this%3A,relevant%20section%20in%20the%20tutorial.%20More%20items...%20)
## 2. File Architecture
### 2.1 CentOS
A folder containing the [Dockerfile](CentOS/Dockerfile) of the nginx web server, the [index](CentOS/index.html) HTML file to serve and a [.conf](CentOS/nginx.conf) file to setup and configure the webserver inside the container.
### 2.2 Ansible
A folder containing all the ansible configuration files:

- [hosts](ansible/inventory/hosts.yml) : containing the list of hosts to configured by ansible.
- [playbook](ansible/playbook/playbook.yml) : the ansible playbook that contains the required tasks and commands to configure the aforementioned hosts. 

## 3. What's the purpose of this project ?
The execution of the ansible playbook does the following tasks: 

- Installs [**docker-python**](https://pypi.org/project/docker/) module to allow comms between docker.sock and Ansible.
- Builds the webserver Docker Image and tags with a **latest** tag.
- Runs a container based on the previously mentioned Image and binds the the host's and the container's *http* ports

## 4. How to run the project
```shell
ansible-playbook ansible/playbook/playbook.yml -K
```
P.S: The `-K` flag is mandatory only if your **root** user is protected with a password... this prompts ansible to ask for a password tty

After Ansible finishes running all the listed plays the project should be accessible from [localhost](http://localhost)
