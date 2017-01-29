#
# Cookbook Name:: deploy-war
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Get the latest artifactory from nexus server
folder_name                  = node['nexuspull']['folder_name']

remote_file '/var/lib/tomcat7/webapps/Realtime.war' do
  source 'http://localhost:8081/nexus/service/local/artifact/maven/redirect?r=snapshots&g=javahome&a=Realtime&v=LATEST&e=war'
end