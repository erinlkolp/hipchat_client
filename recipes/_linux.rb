#
# Cookbook Name:: hipchat_client
# Recipe:: linux
#

def add_apt_source

  apt_repository node['hipchat']['repo_name'] do
    action     :add
    components ['stable', 'main']
    key        node['hipchat']['key']
    repo_name  "#{node['hipchat']['repo_name']}.list"
    uri        node['hipchat']['uri']
  end

end

def add_yum_repo

  yum_repository node['hipchat']['repo_name'] do
    action      :create
    baseurl     node['hipchat']['baseurl']
    description node['hipchat']['description']
    enabled     true
    gpgcheck    true
    gpgkey      node['hipchat']['key']
  end

end

case node['platform_family']
when 'debian'
  add_apt_source
when 'rhel'
  add_yum_repo
end

package 'hipchat' do
    action :install
end
