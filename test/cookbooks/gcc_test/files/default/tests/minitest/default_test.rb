# encoding: utf-8
require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'gcc_test::default' do
  include Helpers::GccTest
end
