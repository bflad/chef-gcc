# chef-gcc [![Build Status](https://secure.travis-ci.org/bflad/chef-gcc.png?branch=master)](http://travis-ci.org/bflad/chef-gcc)

## Description

Installs GCC. Please see [COMPATIBILITY.md](COMPATIBILITY.md) for more information about GCC versions that are tested and supported by cookbook versions.

## Requirements

### Platforms

* CentOS 6
* RHEL 6
* Ubuntu 12.04

### Cookbooks

[Opscode Cookbooks](https://github.com/opscode-cookbooks/)

* [apt](https://github.com/opscode-cookbooks/apt)
* [build-essential](https://github.com/opscode-cookbooks/build-essential)
* [yum](https://github.com/opscode-cookbooks/yum)

## Attributes

These attributes are under the `node['gcc']` namespace.

Attribute | Description | Type | Default
----------|-------------|------|--------
install_type | Installation type for GCC ("package" or "source") | String | package

## Recipes

* `recipe[gcc]` Installs GCC
* `recipe[gcc::cpp]` Installs GCC C++
* `recipe[gcc::tru_devtools_repo]` Installs tru devtools repo
* `recipe[gcc::ubuntu_toolchain_repo]` Installs Ubuntu toolchain repo

## Usage

### Default Installation

* Add `recipe[gcc]` to your node's run list

### C++11 Installation

* Add `recipe[gcc::cpp11]` to your node's run list

## Testing and Development

### Vagrant

Here's how you can quickly get testing or developing against the cookbook thanks to [Vagrant](http://vagrantup.com/) and [Berkshelf](http://berkshelf.com/).

    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-cachier
    vagrant plugin install vagrant-omnibus
    git clone git://github.com/bflad/chef-gcc.git
    cd chef-gcc
    vagrant up BOX # BOX being centos6, ubuntu1204, ubuntu1210, or ubuntu1304

You can then SSH into the running VM using the `vagrant ssh BOX` command.

The VM can easily be stopped and deleted with the `vagrant destroy` command. Please see the official [Vagrant documentation](http://docs.vagrantup.com/v2/cli/index.html) for a more in depth explanation of available commands.

### Test Kitchen

Please see documentation in: [TESTING.md](TESTING.md)

## Contributing

Please use standard Github issues/pull requests and if possible, in combination with testing on the Vagrant boxes or Test Kitchen suite.

## Maintainers

* Brian Flad (<bflad417@gmail.com>)
