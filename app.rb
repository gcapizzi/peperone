require 'sinatra'

get '/' do
  erb :"peperones/view", locals: { minutes: '25' }
end

get '/peperones' do
  erb :"peperones/view", locals: { minutes: '25' }
end

get '/short-breaks' do
  erb :"peperones/view", locals: { minutes: '05' }
end

get '/long-breaks' do
  erb :"peperones/view", locals: { minutes: '15' }
end

post '/peperones' do
  erb :"peperones/view"
end
