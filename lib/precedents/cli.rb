require 'thor'
module Parse

  class CLI < Thor
    method_option :dry_run, :type => :boolean
    desc "parse", "Run parser"
    def parse
      puts(options[:dry_run])
    end
  end
end