# encoding: utf-8

default['gcc']['cpp']['packages'] = value_for_platform(
  %w(centos redhat) => {
    'default' => %w(devtoolset-1.1-gcc-c++)
  },
  %w(ubuntu) => {
    '12.04' => %w(g++-4.8),
    'default' => %w(gcc-c++)
  }
)

default['gcc']['install_type'] = 'package'
