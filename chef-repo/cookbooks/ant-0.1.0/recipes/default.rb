#
# Cookbook Name:: ant
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
ant_pkgs=value_for_platform(
 ["debian","ubuntu"] => {"default" => ["ant","ant-contrib","ivy"]
 },
 ["centos","redhat","fedora"] => {"default" => ["ant","ant-contrib","ivy"]
 },
 "default" => ["ant","ant-contrib","ivy"]
)


ant_pkgs.each do|pkg|
  package pkg do
    if pkg == "ant"
     action  :install
  elsif pkg == "ant-contrib"
      action  :install
  elsif pkg == "ivy"
     action  :install
  end
 end
end

