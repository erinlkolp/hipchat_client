#
# Cookbook Name:: hipchat_client
# Attributes:: default
#

## deb
# deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client
# key: https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public
## yum
# https://atlassian.artifactoryonline.com/atlassian/hipchat-yum-client/
#

if node['os'] == 'linux'
  default['hipchat']['baseurl']      = 'http://downloads.hipchat.com/linux/yum'
  default['hipchat']['description']  = 'Atlassian Hipchat'
  default['hipchat']['key']          = 'https://www.hipchat.com/keys/hipchat-linux.key'
  default['hipchat']['repo_name']    = 'atlassian-hipchat'
  default['hipchat']['uri']          = 'http://downloads.hipchat.com/linux/apt'
end
