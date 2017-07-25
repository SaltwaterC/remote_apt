name 'remote_apt'
maintainer 'Stefan Rusu'
maintainer_email 'saltwaterc@gmail.com'
version '1.0.0'
source_url 'https://github.com/SaltwaterC/remote_apt'
issues_url 'https://github.com/SaltwaterC/remote_apt/issues'
chef_version '>= 12.5'
%w[debian ubuntu].each do |platform|
  supports platform
end
license 'MIT'
description 'Installs remotely hosted apt packages'
