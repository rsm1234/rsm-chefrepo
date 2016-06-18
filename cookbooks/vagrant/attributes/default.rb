default['vagrant']['version'] = '1.7.2'
default['vagrant']['platform'] = node['kernel']['machine']

case node['platform']
when \^ubuntu\,\^debian\
default['vagrant']['package'] = 'deb'
when \^centos\,\^redhat\,\^fedora\
default['vagrant']['package'] = 'rpm'


