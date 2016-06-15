#
# Cookbook Name:: packages
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
      action :install
end

file "/etc/chef/validation.pem" do
      action :delete
end

