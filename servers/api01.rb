server = Proc.new{|conf|
	conf.vm.box = 'ubuntu14_10'
	conf.vm.hostname = "api01"
	conf.vm.box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'

	conf.vm.network :private_network, ip: "192.168.100.10"
	conf.vm.network :forwarded_port, guest:80, host:49152
	
	# share folder
	conf.vm.synced_folder(
		$share_folders[:api01],
		"/mnt/api01",
		:owner => 'vagrant', :group => 'vagrant'
	) 
	
	conf.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = $cookbooks_path
		chef.roles_path = $roles_path
		
		# add rolse (roles folder)		
		chef.add_role 'api01'

		chef.json = {}
	end

	conf.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "512"]
	end


	# 仮想環境にインストールするchefのバージョン
	conf.omnibus.chef_version = :latest

	# berkshelfを有効にする
	conf.berkshelf.enabled = true
	conf.berkshelf.berksfile_path = "./Berksfile"
}

# Do not delete here!!
var_name = File.basename(__FILE__).sub(/\.rb/, "")
eval("$#{var_name} = server")