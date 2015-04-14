#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#IP_ADDR = node['jenkins']['IP_ADDR']
bash "install_jenkins" do
user "root"
cwd "/opt"
code <<-EOH
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
yum -y install jenkins
EOH
end

template '/etc/sysconfig/jenkins' do
 source  'jenkins-config-rhel.erb'
 mode    '644'
 notifies :restart, 'service[jenkins]', :immediately
end

service 'jenkins' do
  supports [:start, :stop, :restart]
  action [:start, :enable]
end

bash "jenkins_chkconfig" do
user "root"
cwd "/opt"
code <<-EOH
chkconfig jenkins on
EOH

end
