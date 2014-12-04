class Game

	attr_accessor :secret_code

	def initialize
		#@secret_code = "1234"
		@counter = 0
	end

	def aumentarContador( )  
		 @counter += 1
	end

	def arriesgar(guess_code)
		entregarPista(guess_code)
	end

	def entregarPista(guess_code)
		pista = ""
		pista2 = ""
		for i in 0..3 do
			if(@secret_code[i] == guess_code[i])
				pista += "X "
			else
				if(@secret_code.count(guess_code[i]) == 1)
					pista2 += "_ "
				end
			end
		end
		if(pista2.size > 0)
			pista = pista.strip + " " + pista2.strip
		end
		pista.strip
	end

end
