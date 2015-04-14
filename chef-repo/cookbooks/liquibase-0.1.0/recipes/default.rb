#
# Cookbook Name:: liquibase
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "install_liquibase" do
   user "root"
   cwd "/home/sound"
   code <<-EOH
   wget https://github.com/downloads/liquibase/liquibase/liquibase-2.0.5-bin.zip
   mkdir liquibase
  owner 'root'
  group 'root'
  mode 00644
  unzip liquibase-2.0.5-bin.zip -d ./liquibase
  EOH
end
