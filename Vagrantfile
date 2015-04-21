# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'pathname'


##
# chef settings
#
$cookbooks_path = "cookbooks"
$roles_path = ["roles", "approles"]

##
# import personal setting
#
require './settings/current.rb'

##
# import vm settings
#
Dir::glob("./servers/*.rb").each do |f|
	require "#{f}"
end

Vagrant.configure("2") do |config|

	# template server
	config.vm.define(:api01, &$api01)
end
