#
# Cookbook Name:: oracle-jdk-1.7
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "install_oracle_jdk_7" do
user "root"
cwd "/opt"
code <<-EOH
if rpm -qa | grep -q jdk-1.7.0_75-fcs.x86_64; then
    echo "jdk-1.7 already exist"
    exit 0
else
    wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.rpm" -O jdk-7-linux-x64.rpm
    rpm -ivh jdk-7-linux-x64.rpm
fi
EOH
end

file "/etc/profile.d/jdk.sh" do
content <<-EOS
  export JAVA_HOME=/usr/java/latest
  export PATH=$JAVA_HOME/bin:$PATH
EOS
  mode 0755
end


