#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


package 'tree' do
  action:install
end 

file '/myfile2' do
  content '2nd recipe in cookbook'
  action:create
  owner 'root'
  group 'root'
end



%w(httpd  unzip git vim).each do |p|
 package p do
  action :install
 end
end
