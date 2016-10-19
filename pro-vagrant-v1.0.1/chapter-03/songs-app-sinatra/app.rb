require 'sinatra'

get '/' do
  erb :baa
end

get '/sixpence.html' do
  erb :sixpence
end

get '/hush.html' do
  erb :hush
end

