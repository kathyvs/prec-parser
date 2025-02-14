require 'rspec'
require 'precedents/cli'

RSpec.describe Precedents::CLI do

  class OptCLI < Precedents::CLI
    def parse
      return options
    end
  end
    #describe "Parse"
  def run_cli(argv)
    yield OptCLI.start(argv)
  end
  describe 'default input' do
    it "is not a dry run" do
      run_cli(%w[parse]) do |options|
        expect(options[:dry_run]).to be_falsy
      end
    end
    it "uses standard input"

  end

  describe 'dry run flag' do
    it "on --dry-run" do
      run_cli(%w[parse --dry-run]) do |options|
        expect(options[:dry_run]).to be_truthy
      end
    end
  end
end