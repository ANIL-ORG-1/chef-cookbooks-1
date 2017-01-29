#
# Cookbook Name:: nexuspull
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#folder_name                  = node['nexuspull']['folder_name']

remote_file '/var/lib/tomcat7/webapps/Realtime.war' do
  source 'http://192.168.99.1:8082/nexus/service/local/artifact/maven/redirect?r=snapshots&g=javahome&a=Realtime&v=LATEST&e=war'
end