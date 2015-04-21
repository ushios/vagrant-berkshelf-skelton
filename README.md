[Project Name]
====

Version 0.01

Release date: Show commit log.

Project state: beta

----

Get started!
------

#### Add vagrant omunibus
    $ xcode-select --install // install iconv if you use MacOS
    $ vagrant plugin install vagrant-omnibus
    $ vagrant plugin install vagrant-berkshelf

#### Add precise64 boxes

    $ vagrant box add precise64_12_04 http://files.vagrantup.com/precise64.box # for virtualbox provider
    $ vagrant box add precise64_12_04 http://files.vagrantup.com/precise64_vmware.box # for vmware fusion provider
    $ vagrant box add precise64_14_04 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box
    $ vagrant box add precise64_14_04 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vmwarefusion.box


##### Other boxes

- http://www.vagrantbox.es/

#### Vagrant up 

    $ git clone --recursive ${this_repo} path/to/clone
    $ cd path/to/clone
    $ vagrant up [--provider=vmware_fusion]


Credits
------

Project description
------

This is vagrant-skelton project.

Dependencies
------

- Required
    - [VirtualBox](https://www.virtualbox.org/)
    - [Vagrant](http://www.vagrantup.com/)
- Recommended
    - [VMWare fusion](https://www.vmware.com/jp/products/fusion/)

Documentation
------

### Add a new server.

#### add server file.

    $ cp servers/template.rb servers/{$filename}.rb

#### Define vm.

    $ vi Vagrantfile

and add define line.

    Vagrant.configure("2") do |config|
        ...
	    
	    config.vm.define(:your_server_name, &${$filename})
	    
	    ...
    end
    
    


Additional Notes
------




