[Project Name]
====

Version 0.01

Release date: Show commit log.

Project state: beta

----

Get started!
------

#### Add vagrant plugins
    $ xcode-select --install // install iconv if you use MacOS
    $ vagrant plugin install vagrant-omnibus
    $ vagrant plugin install vagrant-berkshelf


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

### Adding servers.

#### add server file.

    $ cp servers/api01.rb servers/{$filename}.rb

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




