name 'softening'
maintainer 'Alex Pop'
maintainer_email 'alex@example.com'
license 'all_rights'
description 'Softens an operating system'
long_description 'Installs/Configures software against industry standard security recommendations'
version '0.1.0'

%w(redhat centos fedora oracle).each do |os|
  supports os
end

depends 'line'
