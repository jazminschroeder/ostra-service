require 'spec_helper'
ENV['RACK_ENV'] = 'test'

require './ostra_service'

describe 'Ostra Service' do
  def app
    OstraService
  end

  def json(hash)
    MultiJson.dump(hash)
  end

  it "has a heartbeat" do
    allow(Time).to receive(:now).and_return('now')
    get '/heartbeat'
    expect(last_response.status).to eq 200
    expect(last_response.body).to eq json({status: "OK", timestamp: 'now'})
  end
end
