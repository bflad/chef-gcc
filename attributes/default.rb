# encoding: utf-8

default['gcc']['cpp']['packages'] = value_for_platform(
  %w(centos redhat) => {
    'default' => %w(devtoolset-1.1-gcc-c++)
  },
  %w(ubuntu) => {
    '12.04' => %w(g++-4.8),
    '12.10' => %w(g++-4.7),
    %(13.04 13.10) => %w(g++-4.8),
    'default' => %w(g++)
  }
)

default['gcc']['install_type'] = 'package'
