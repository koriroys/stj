$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'stj'
require "pry"
# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|

end


BIN = File.expand_path('../bin/stj', File.dirname(__FILE__))
LIB_PATH = File.expand_path('../lib/stj', File.dirname(__FILE__))
SPEC_PATH = File.expand_path(File.dirname(__FILE__))