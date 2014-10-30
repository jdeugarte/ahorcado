require 'sinatra'

get '/' do
	erb :bienvenida
end

get '/secreto' do
	erb :secreto
end