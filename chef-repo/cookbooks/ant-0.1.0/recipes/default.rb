#
# Cookbook Name:: ant
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "oracle-jdk-1.7"
ant_pkgs=value_for_platform(
 ["debian","ubuntu"] => {"default" => ["ant","ant-contrib"]
 },
 ["centos","redhat","fedora"] => {"default" => ["ant","ant-contrib"]
 },
 "default" => ["ant","ant-contrib"]
)


ant_pkgs.each do|pkg|
  package pkg do
    if pkg == "ant"
     action  :install
  else pkg == "ant-contrib"
      action  :install
 end
end
end

