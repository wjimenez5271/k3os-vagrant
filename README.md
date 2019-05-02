# K3os on Vagrant

### Purpose
For testing and experimentation with [k3os](https://github.com/rancher/k3os) in your local environment. Quickly spin up k3os virtual machines 
using [Vagrant](https://www.vagrantup.com/) and Virtualbox

### Quick Start

1. Build vagrant box image using [Packer](https://www.packer.io/): 

```
cd packer 
packer build vagrant.json
```

2. Import vagrant box image into your local Vagrant install: 

```
vagrant box add packer_virtualbox-iso_virtualbox.box --name k3os
```

3. Run vagrant using provided `Vagrantfile` in the root of this repo

```
cd ../
vagrant up
```

### Notes
Folder sync currently not supported. You can also create your own `Vagrantfile` just note the addition of 
`config.vm.guest = "linux"` to tell it Vagrant which OS to expect and  
`config.vm.synced_folder ".", "/vagrant", disabled: true` to disable folder syncing
