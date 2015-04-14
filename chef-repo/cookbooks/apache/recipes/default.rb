#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'httpd'

service 'httpd' do

  action [:enable, :start]

end

file '/var/www/html/index.html' do 
  
content'
     <html>
       <body>
         <h1>hello world</h1>
       </body>
     </html>'
end
