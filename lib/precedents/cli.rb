require 'thor'
require 'precedents/io'

module Precedents

  class CLI < Thor
    method_option :dry_run, type: :boolean
    method_option :output, type: :string, aliases: :t, banner: 'BUSINESS_ACCESS_TOKEN',
                  desc: 'The business access token'
    desc "precedents", "Run parser"
    def parse(input = Precedents::IO::STDIO)
      output = Precedents::IO::STDOUT
      puts "Input is #{input}"
      puts "Output is #{output}"
    end


  end
end