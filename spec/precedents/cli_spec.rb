require 'rspec'
require 'precedents/cli'

RSpec.describe Precedents::CLI do

  class TestCLI < Parse::CLI
    def parse
      yield options
    end
  end

  def run_cli(options)
    TestCLI.start(options)
  end
  describe 'default input' do
    it "uses standard input"

  end

  describe 'dry run flag' do
    it "on --dry-run" do
      run_cli([:"--dry-run"]) do |options|
        options[:dry_run].should == true
      end
    end
  end
end