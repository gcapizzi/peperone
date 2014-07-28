require 'sinatra'

get '/' do
  erb :"peperones/view"
end

get '/peperones' do
  erb :"peperones/view"
end

get '/short-breaks' do
  erb :"short-breaks/view"
end

get '/long-breaks' do
  erb :"long-breaks/view"
end

post '/peperones' do
  erb :"peperones/view"
end
