# encoding: utf-8
name 'gcc'
maintainer 'Brian Flad'
maintainer_email 'bflad417@gmail.com'
license 'Apache 2.0'
description 'Installs GCC'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.0'
recipe 'gcc', 'Installs GCC'
recipe 'gcc::cpp', 'Installs GCC C++'
recipe 'gcc::tru_devtools_repo', 'Installs tru devtools repo'
recipe 'gcc::ubuntu_toolchain_repo', 'Installs Ubuntu toolchain repo'

%w(centos redhat ubuntu).each do |os|
  supports os
end

depends 'apt'
depends 'build-essential'
depends 'yum', '>= 3.0'
