#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
java_home = node['java']['java_home']
pkgs = value_for_platform(
  ["centos","redhat","fedora"] => {
  "default" => ["java-1.7.0-openjdk"]
},
  "default" => ["openjdk-7-jdk","default-jdk"]
)

pkgs.each do |pkg|
 package pkg do 
 action :install
 end

ruby_block "set-env-java-home" do
  block do
    ENV["JAVA_HOME"] = java_home
  end
  not_if { ENV["JAVA_HOME"] == java_home }
end

file "/etc/profile.d/jdk.sh" do
  content <<-EOS
export JAVA_HOME=#{node['java']['java_home']}
EOS
  mode 0755
end
end
