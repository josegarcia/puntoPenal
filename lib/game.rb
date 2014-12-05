class Game

	attr_accessor :contGol

	attr_accessor :contAtajos

	def initialize
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

end
