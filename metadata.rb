name             'hipchat_client'
maintainer       'Urbandecoder Labs'
maintainer_email 'jdunn@aquezada.com'
license          'Apache 2.0'
description      'Installs Atlassian HipChat client'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

%w{mac_os_x windows debian ubuntu centos rhel}.each do |os|
  supports os
end

depends 'windows'
depends 'apt', '>= 2.2.1'
depends 'yum', '>= 3.1.2'
