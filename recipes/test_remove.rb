# the purpose of this recipe is to test the remote_apt resource

url = 'https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb'

include_recipe 'remote_apt::test_install'

remote_apt 'test_remove' do
  name url
  action :remove
end
