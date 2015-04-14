#default['jenkins']['IP_ADDR'] = `/sbin/ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
default['jenkins']['JENKINS_HOME'] = '/var/lib/jenkins'
default['jenkins']['JENKINS_USER'] = 'jenkins'
default['jenkins']['JENKINS_JAVA_OPTIONS'] = '-Djava.awt.headless=true'
default['jenkins']['JENKINS_PORT'] = '8080'
default['jenkins']['JENKINS_LISTEN_ADDRESS'] = '0.0.0.0'
default['jenkins']['log_directory'] = '/var/log/jenkins'
default['jenkins']['user'] = ['jenkins']
default['jenkins']['group'] = ['jenkins']
default['jenkins']['host'] = ['localhost']
default['jenkins']['endpoint'] = "http://#{node['jenkins']['host']}:#{node['jenkins']['JENKINS_PORT']}"
