class Game

	attr_accessor :contGol
	attr_accessor :contAtajos
	attr_accessor :arquero_posicion

	def initialize
		@arquero_posicion = 2
		@contGol = 0
		@contAtajos = 0
	end
	
	def anotarGol()
		 @contGol += 1
	end

	def fallarLanzamiento()
		 @contAtajos += 1
	end
	
	def posicionarArquero()
		rand(1..@@campos)
	end

	def reiniciarMarcador()
		@contGol = 0
		@contAtajos = 0
	end

end
