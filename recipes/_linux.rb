#
# Cookbook Name:: hipchat_client
# Recipe:: linux
#

case node['platform_family']
when 'debian'
  apt_repository node['hipchat']['repo_name'] do
    action     :add
    components ['stable', 'main']
    key        node['hipchat']['key']
    repo_name  "#{node['hipchat']['repo_name']}.list"
    uri        node['hipchat']['uri']
  end
when 'rhel'
  yum_repository node['hipchat']['repo_name'] do
    action      :create
    baseurl     node['hipchat']['baseurl']
    description node['hipchat']['description']
    enabled     true
    gpgcheck    true
    gpgkey      node['hipchat']['key']
  end
end

package 'hipchat' do
  action :install
end
