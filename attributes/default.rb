#
# Cookbook Name:: hipchat_client
# Attributes:: default
#

if node['os'].eql?('linux')
  default['hipchat']['baseurl']      = 'http://downloads.hipchat.com/linux/yum'
  default['hipchat']['description']  = 'Atlassian Hipchat'
  default['hipchat']['key']          = 'https://www.hipchat.com/keys/hipchat-linux.key'
  default['hipchat']['repo_name']    = 'atlassian-hipchat'
  default['hipchat']['uri']          = 'http://downloads.hipchat.com/linux/apt'
end
