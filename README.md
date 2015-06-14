# Locanon

Local development environment automatic setting  
"Locanon" means "Rocannon"("Rocannon's World" is a novel that Ansible appears first.) and "local".

## Prerequisites

* Vagrant (1.6.5 or later)
* Ansible (1.6.6 or later)

## Getting Started

### 1. Execute init.sh

If the following errors occur, try `vagrant ssh -c 'sudo yum update -y kernel'`, `vagrant reload` and `vagrant vbguest --status`.

```
Failed to mount folders in Linux guest. This is usually because
the "vboxsf" file system is not available. Please verify that
the guest additions are properly installed in the guest and
can work properly. The command attempted was:

mount -t vboxsf -o uid=`id -u vagrant`,gid=`getent group vagrant | cut -d: -f3` vagrant /vagrant
mount -t vboxsf -o uid=`id -u vagrant`,gid=`id -g vagrant` vagrant /vagrant

The error output from the last command was:

/sbin/mount.vboxsf: mounting failed with the error: No such device
```

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

