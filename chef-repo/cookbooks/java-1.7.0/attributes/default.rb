default['java']['install_flavor'] = "openjdk"

case platform
when "centos","redhat","fedora"
  default['java']['version'] = '7u21'
  default['java']['arch'] = kernel['machine'] =~ /x86_64/ ? "amd64" : "i586"
  default['java']['java_home'] = "/usr/bin/java"
else
  default['java']['java_home'] = "/usr/lib/jvm/default-java"
end
