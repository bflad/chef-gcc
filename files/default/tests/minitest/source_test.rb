# encoding: utf-8

require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'gcc::source' do
  include Helpers::Gcc

  it 'installs gcc binary' do
    file("#{node['gcc']['install_dir']}/bin/gcc").must_exist
  end
end
