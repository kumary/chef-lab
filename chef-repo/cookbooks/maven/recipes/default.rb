#
# Cookbook Name:: maven
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "inatall_maven" do
user "root"
cwd "/opt"
code <<-EOH
wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz
tar xzf apache-maven-3.2.3-bin.tar.gz -C /usr/local
ln -s /usr/local/apache-maven-3.2.3 /usr/local/maven
EOH
end

file "/etc/profile.d/maven.sh" do
content <<-EOS
export M2_HOME=#{node['maven']['M2_HOME']}
export PATH=#{node['maven']['PATH']}
EOS
mode 0755
end
