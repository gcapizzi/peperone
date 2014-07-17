ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rack/test'
require File.expand_path '../../app.rb', __FILE__

RSpec.configure do |conf|
  conf.mock_with :mocha
  conf.include Rack::Test::Methods
end
