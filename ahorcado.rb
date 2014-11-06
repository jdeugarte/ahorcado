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
			end
		end
		self
	end
end