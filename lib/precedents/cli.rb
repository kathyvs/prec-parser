require 'thor'
module Precedents

  class CLI < Thor
    method_option :dry_run, :type => :boolean
    desc "precedents", "Run parser"
    def parse
      puts(options.keys)
      return options
    end
  end
end