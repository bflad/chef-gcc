require 'spec_helper'

describe 'gcc::cpp' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
