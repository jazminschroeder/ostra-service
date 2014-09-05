require 'sinatra/base'
require 'multi_json'
require 'ostra/prediction'

class OstraService < Sinatra::Base

  def classifier
    ::Ostra::Prediction.new
  end

  get '/heartbeat' do
    MultiJson.dump({status: "OK", timestamp: Time.now})
  end

  post '/predict' do
    classifier.predict(params[:text])
  end
end
