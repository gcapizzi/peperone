require 'spec_helper'

describe "Peperone App" do
  def app
    Sinatra::Application
  end

  it "shows peperone" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Peperone')
  end
end
