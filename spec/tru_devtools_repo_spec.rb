require 'spec_helper'

describe 'gcc::tru_devtools_repo' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
