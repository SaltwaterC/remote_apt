require 'digest'

resource_name :remote_apt

property :url, String, required: true, name_property: true
property :sha256, String

default_action :install

action :install do
  if new_resource.sha256.nil?
    raise 'Fatal: the sha256 attribute must be specified!'
  end

  pkg = new_resource.url.split('/').last
  path = "#{Chef::Config[:file_cache_path]}/#{pkg}"

  remote_file path do
    source new_resource.url
    owner 'root'
    group 'root'
    mode '0644'
  end

  ruby_block path do
    block do
      unless Digest::SHA256.file(path).hexdigest == new_resource.sha256
        raise "Fatal: the #{pkg} package failed SHA256 check!"
      end
    end
  end

  dpkg_package path
end

action :remove do
  pkg = new_resource.url.split('/').last

  file "#{Chef::Config[:file_cache_path]}/#{pkg}" do
    action :delete
  end

  package pkg.split('_').first do
    action :remove
  end
end
