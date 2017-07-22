require_relative 'spec_helper'

describe 'remote_apt::test_install' do
  describe package('vagrant') do
    it { is_expected.to be_installed }
  end

  describe file("#{kitchen_path}/cache/vagrant_1.9.7_x86_64.deb") do
    it { is_expected.to be_file }

    its(:sha256sum) do
      is_expected.to eq \
        'd5579836c24d95c990aaa0fcd5c700b6a3cfac28d69229867e7cd614b7aecbdd'
    end
  end
end
