require_relative 'spec_helper'

describe 'remote_apt::test_remove' do
  describe package('vagrant') do
    it { is_expected.not_to be_installed }
  end

  describe file("#{kitchen_path}/cache/vagrant_1.9.7_x86_64.deb") do
    it { is_expected.not_to be_file }
  end
end
