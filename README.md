# Locanon

Local development environment automatic setting  
"Locanon" means "Rocannon"("Rocannon's World" is a novel that Ansible appears first.) and "local".

## Prerequisites

* Vagrant (1.6.5 or later)
* Ansible (1.6.6 or later)

## Getting Started

### 1. Execute init.sh

### 2. Copy SSH public key to guest.

```
> ssh-keygen -t rsa
> ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@192.168.53.51
```
or
```
> ssh-keygen -t rsa
> cp ~/.ssh/id_rsa.pub .
> vagrant ssh

(on guest vm)
> cat /vagrant/id_rsa.pub >> ~/.ssh/authorized_keys
```

### 3. Test connection settings

```
> ansible locanon -i hosts -m ping -u vagrant

192.168.53.51 | success >> {
    "changed": false,
    "ping": "pong"
}
```
### 4. Execute Ansible PlayBook

```
> ansible-playbook playbook.yml -i hosts
```

