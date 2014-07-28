require 'spec_helper'

describe "Peperone App" do
  def app
    Sinatra::Application
  end

  it "shows peperone" do
    get '/peperones'
    expect(last_response).to be_ok
    expect(last_response.body).to include('25:00')
  end

  it "shows short break" do
    get '/short-breaks'
    expect(last_response).to be_ok
    expect(last_response.body).to include('05:00')
  end

  it "shows long break" do
    get '/long-breaks'
    expect(last_response).to be_ok
    expect(last_response.body).to include('15:00')
  end
end
