# encoding: utf-8

require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'gcc::default' do
  include Helpers::Gcc
end
