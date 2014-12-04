require './lib/game'

describe Game do

	before(:each)do
		@juego = Game.new
	end

	it "el contador debe iniciar en 0" do
		@juego.contGol.should == 0
		@juego.contAtajos.should == 0
	end

	it "si hago 3 goles, debo tener 3 goles anotados en el marcador " do
		@juego.anotarGol()
		@juego.anotarGol()
		@juego.anotarGol()
		@juego.contGol.should == 3
	end

	it "si el arquero atajo 3 lanzamientos, debo tener 3 goles atajados en el marcador " do
		@juego.fallarLanzamiento()
		@juego.fallarLanzamiento()
		@juego.fallarLanzamiento()
		@juego.contAtajos.should == 3		
	end

	it "si hago un gol, me atajan 1, y hago otro gol, debo tener 2 goles y una atajada en el marcador" do
		@juego.anotarGol()
		@juego.fallarLanzamiento()
		@juego.anotarGol()
		@juego.contGol.should == 2
		@juego.contAtajos.should == 1
	end

end
