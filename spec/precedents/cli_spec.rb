require 'rspec'
require 'precedents/cli'

RSpec.describe Precedents::CLI do

  DEFAULT = :DEFAULT

  class OptCLI < Precedents::CLI

    def parse(input = DEFAULT)
      return {:command => :parse, :options => options, :input => input}
    end
  end

  describe "Command Parse" do
    def run_cli(argv)
      arg_info = OptCLI.start(["parse"] + argv)
      expect(arg_info[:command]).to eq(:parse)
      yield arg_info[:options], arg_info[:input]
    end

    describe 'default input' do
      it "is not a dry run" do
        run_cli([]) do |options|
          expect(options[:dry_run]).to be_falsy
        end
      end
      it "uses standard input" do
        run_cli([]) do |_, input|
          expect(input).to eq(DEFAULT)
        end
      end
      it "uses standard output" do
        run_cli([]) do |options|
          expect(options[:output]).to be_nil
        end
      end
    end

  describe 'dry run flag' do
    it "on --dry-run" do
      run_cli(%w[--dry-run]) do |options|
        expect(options[:dry_run]).to be_truthy
      end
    end
  end
  end
end