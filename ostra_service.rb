require 'sinatra/base'
require 'multi_json'

class OstraService < Sinatra::Base

  get '/heartbeat' do
    MultiJson.dump({status: "OK", timestamp: Time.now})
  end
end
