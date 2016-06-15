#
# Cookbook Name:: installpackage
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
    action :install
end

service "crond" do
    action :start
end

file "/etc/chef/validation.pem" do
      action :delete
end



