# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'pathname'


##
# chef settings
#
$cookbooks_path = ["cookbooks"]
$roles_path = ["roles"]

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


    # 仮想環境にインストールするchefのバージョン
    config.omnibus.chef_version = :latest

    # berkshelfを有効にする
    config.berkshelf.enabled = true
    config.berkshelf.berksfile_path = "./Berksfile"

    # template server
    config.vm.define(:api01, &$api01)
end
