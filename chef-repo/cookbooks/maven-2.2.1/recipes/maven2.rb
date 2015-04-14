

package "maven" do
 version node['maven']['version']
 #release node['maven']['release']
 #checksum node['maven']['2']['checksum']
 action :install
end

#template "/etc/mavenrc" do
#source "mavenrc.erb"
#mode "0755"
#end



