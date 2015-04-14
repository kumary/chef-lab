bash "install_maven" do
   user "root"
   cwd "/opt"
   code <<-EOH
   wget "http://download.nextag.com/apache/maven/maven-2/2.2.1/binaries/apache-maven-2.2.1-bin.tar.gz"
   tar -zxf apache-maven-2.2.1-bin.tar.gz
   EOH
end
