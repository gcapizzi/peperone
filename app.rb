require 'sinatra'

get '/' do
   erb :"peperones/view"
end

post '/pomodoros' do
   erb :"peperones/view"
end
