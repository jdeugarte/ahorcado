require 'sinatra'
class Ahorcado 

	def initialize

	end

	def inicializar()
		@intentos=5
	end
	attr_accessor :intentos,:palabra ,:nombre

	def jugar(letra)
		if letra
			if !@palabra.include? letra
				@intentos-=1
			else
				
			end
		end
		self
	end
end

ahorcado=Ahorcado.new

get '/' do
	ahorcado.inicializar
	erb :bienvenida
end

get '/secreto' do
	erb :secreto
end

post '/entrar_palabra' do
	ahorcado.palabra = params[:palabra]
	erb :aprovacion
end

post '/jugar' do
	@nombre = params[:nombre]
	@intentos=ahorcado.jugar(params[:letra]).intentos
 	erb :jugar

end

