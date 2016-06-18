#
# Cookbook Name:: vagrant
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

$vagrant_install_filename = 'vagrant' +
                            '_' + node['vagrant']['version'] +
                            '_' + node['vagrant']['platform'] +
                            '.' + node['vagrant']['package']


remote_file 'Downloading vagrant install file' do
 path "/tmp/#{$vagrant_install_filename}"
 source "https://releases.hashicorp.com/vagrant/#{node['vagrant']['version']}/#{$vagrant_install_filename}"
 backup false
 notifes :run, "execute[Vagrant_install]", :immediately
end

execute 'Vagrant_install' do
 action :nothing
 cwd '/tmp'
 user 'root'
 group 'root'
 command "/usr/bin/rpm -i #{$vagrant_install_filename}"
end
