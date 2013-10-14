# encoding: utf-8
# Helpers module
module Helpers
  # Helpers::GccTest
  module GccTest
    require 'chef/mixin/shell_out'
    include Chef::Mixin::ShellOut
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources
  end
end
