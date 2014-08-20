require 'coveralls'
Coveralls.wear!

require 'minitest/autorun'
require 'logger'
require 'faker'

require 'core.rb'

d = ENV['DEBUG']
Log = Logger.new(d && IO.new(d.to_i))

Log.formatter = proc do |sev, time, prog, msg|
  "#{time.strftime('%Y%m%d%H%M%S')}(#{sev.downcase}) #{msg}\n"
end