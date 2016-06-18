# CHnage on the oracle vm
#Test
#
# Cookbook Name:: mexico
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


mexico "httpd" do
    action :install
end

service "crond" do
     action :start
end

file "/etc/chef/validation.pem" do 
      action :delete
end
