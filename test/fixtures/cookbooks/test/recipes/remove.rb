# test remove action of remote_apt

url = 'https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb'

include_recipe 'test::install'

remote_apt 'test_remove' do
  url url
  action :remove
end
