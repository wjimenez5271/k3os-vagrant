# k3os on Vagrant

# This project has moved!
The code for this project is now being maintained in the official Rancher repository. Please use this ongoing: https://github.com/rancher/k3os/tree/master/package/packer/vagrant


Thank You!




-----



### Purpose
For testing and experimentation with [k3os](https://github.com/rancher/k3os) in your local environment. Quickly spin up k3os virtual machines 
using [Vagrant](https://www.vagrantup.com/) and Virtualbox

### What is k3os? 
k3os is a purpose built OS for [Kubernetes](https://kubernetes.io/), fully managed by Kubernetes. It is developed by [Rancher Labs](https://rancher.com/) and the open source community. 

### Super Quick Start

Use the [prebuit image](https://app.vagrantup.com/wjimenez5271/boxes/k3os) provided through Vagrant Cloud by running from the root of this repo (should use the included `Vagrantfile`)

```
vagrant up
```

Then:

```
vagrant ssh
```

### Quick Start

1. Build vagrant box image using [Packer](https://www.packer.io/): 

```
packer build packer/vagrant.json
```

2. Import vagrant box image into your local Vagrant install: 

```
vagrant box add metadata.json
```

3. Edit the provided `Vagrantfile` in the root of this repo to reference the name of your image (in this example `k3os`)

```
config.vm.box = "k3os"
```

4. From the repo root (might need to `cd ../`) run:

```
vagrant up
```

You can then login to the box using `vagrant ssh`. See [Vagrant Docs](https://www.vagrantup.com/docs/index.html) for more details on how to use Vagrant

### Notes
Folder sync currently not supported. You can also create your own `Vagrantfile` just note the addition of 
`config.vm.guest = "linux"` to tell it Vagrant which OS to expect and  
`config.vm.synced_folder ".", "/vagrant", disabled: true` to disable folder syncing

### Questions/Feedback
Send me an email or find me on the [Rancher community slack](https://slack.rancher.io/), my username is `william`

### Similar project

https://github.com/cwebd/k3os-vagrant
