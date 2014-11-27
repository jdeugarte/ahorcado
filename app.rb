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
		aux=@palabra.split('')
		if letra
			if letra=='pista'
				@intentos-=1
				aux.each do |char|
				if !@letras_acertadas.include? (char)
					@letras_acertadas.push (char)
					break
				end
			end
			elsif !@palabra.include? letra
				@intentos-=1

			else
				@letras_acertadas.push(letra)
			end

		end
		@palabra_aux=""
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

ganadores = []
ahorcado=Ahorcado.new

get '/' do
	@vec=ganadores
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
			ganadores.unshift([@nombre,@palabra])
			erb :ganaste
			
		else
	 		erb :jugar
	 	end
end

	