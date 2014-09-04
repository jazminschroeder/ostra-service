$:.unshift File.dirname(__FILE__) + '/../app'

require 'rack/test'

RSpec.configure do |conf|
    conf.include Rack::Test::Methods
end
