#/usr/bin/ruby

require 'optparse'
require_relative 'lib/arabic/to/english'

options = {}

optparse = OptionParser.new do |opts|

	opts.banner = "Arabic to English"

	opts.on("-i", "--interactive", "Infitite loop") do |interactive|

		options[:loop] = interactive

	end

end

optparse.parse!

if options[:loop]

	loop do

		puts Arabic::To::English.convert( gets.to_i )

	end

else

	puts Arabic::To::English.convert( ARGV[0].to_i )

end

