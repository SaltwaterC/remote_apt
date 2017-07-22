# remote_apt Cookbook

Very basic cookbook to install remote apt packages supplied by vendors - i.e they are not part of the distribution's repositories.

## Requirements

### Platforms

 - Debian
 - Ubuntu

May work with or without modification on other Debian derivatives.

### Chef

 - Chef 12.5+

### Cookbooks

 - None

## Recipes

 - test_install
 -  test_remove

These recipes are only used for testing this cookbook. Do no use them in your cookbooks. The remote_apt resource is available without any include_recipe statements.

## Attributes

 - None

## Libraries

 - None

## Resources/Providers

### remote_apt

This resource wraps all the necessary steps required to install a remote apt package. It also validates the download by checking the SHA256 of the file.

#### Actions

 - `:install`: download the apt file, validate SHA256, install package
 - `:remove`: remove the cached file, uninstall package

#### Attribute Parameters

 - url: name attribute. The URL to the remote apt file
 - sha256: the SHA256 of the remote apt package (required for install action)

#### Examples

```ruby
remote_apt 'https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb' do
  sha256 'd5579836c24d95c990aaa0fcd5c700b6a3cfac28d69229867e7cd614b7aecbdd'
end

remote_apt 'https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb' do
  action :remove
end
```

## Usage

Add as dependency in the metadata of the cookbook which uses remote apt packages.

## Maintainer

[Stefan Rusu](https://github.com/SaltwaterC)

## License

[MIT](https://github.com/SaltwaterC/remote_apt/blob/master/LICENSE)
