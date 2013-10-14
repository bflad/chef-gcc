# encoding: utf-8
case node['gcc']['install_type']
when 'source'
  include_recipe 'gcc::source'
else
  case node['platform']
  when 'centos'
    include_recipe 'gcc::tru_devtools_repo'
  when 'ubuntu'
    include_recipe 'apt'
    include_recipe 'gcc::ubuntu_toolchain_repo' if node['platform_version'] == '12.04'
  end

  node['gcc']['cpp']['packages'].each do |p|
    package p
  end

  case node['platform']
  when 'centos'
    execute 'export_devtools_env_variables' do
      command <<-EOF
export CC=/opt/centos/devtoolset-1.1/root/usr/bin/gcc
export CPP=/opt/centos/devtoolset-1.1/root/usr/bin/cpp
export CXX=/opt/centos/devtoolset-1.1/root/usr/bin/c++
export PATH=/opt/centos/devtoolset-1.1/root/usr/bin${PATH:+:${PATH}}
EOF
      action :run
    end
  when 'ubuntu'
    if node['platform_version'] == '12.04'
      link '/usr/bin/gcc' do
        to '/usr/bin/gcc-4.8'
      end
      link '/usr/bin/g++' do
        to '/usr/bin/g++-4.8'
      end
    end
  end
end
