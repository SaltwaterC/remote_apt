# test install action of remote_apt

url = 'https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb'
remote_apt url do
  sha256 'd5579836c24d95c990aaa0fcd5c700b6a3cfac28d69229867e7cd614b7aecbdd'
end
