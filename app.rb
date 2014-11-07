require 'sinatra'
class Ahorcado 

	def initialize

	end

	def inicializar()
		@intentos=5
		@letras_acertadas=[]
		@palabra_aux=""
	end
	attr_accessor :intentos,:palabra ,:nombre,:palabra_aux,:letras_acertadas

	def jugar(letra)
		if letra
			if !@palabra.include? letra
				@intentos-=1
			else
				@letras_acertadas.push(letra)
			end
		end
		@palabra_aux=""
		aux=@palabra.split('')
		aux.each do |char|
			if @letras_acertadas.include?(char)
				@palabra_aux<<char
			else
				@palabra_aux<<'_'
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
	ahorcado.palabra = params[:palabra].to_s.downcase.gsub(/\W/,'')
	erb :aprovacion
end

post '/jugar' do

		@nombre = params[:nombre]
		letra=params[:letra].to_s.downcase
		ahorcado=ahorcado.jugar(letra)
		@intentos=ahorcado.intentos
		@palabra=ahorcado.palabra_aux
		if @intentos==0
			@palabra=ahorcado.palabra
	 		erb :perdiste
		elsif @palabra==ahorcado.palabra
			erb :ganaste
		else
	 		erb :jugar
	 	end
end

