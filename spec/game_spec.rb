require './lib/game'

describe Game do

	before(:each)do
		@juego = Game.new
	end

	it "debe retornar X X X X cuando ingreso 1234 y el codigo secreto es 1234" do 
		@juego.secret_code = "1234"
		pista = @juego.arriesgar("1234")
		pista.should == "X X X X"
	end

	it "debe permitirme setear un codigo secreto" do 
		@juego.secret_code = "1234"
		@juego.secret_code.should == "1234"
	end

	it "el codigo generado debe tener cuatro digitos" do
		@juego.secret_code.size.should == 4
	end

	it "el codigo debe generarse al arrancar el juego" do
		@juego.secret_code.to_i.should > 0
	end

	it "el codigo secreto debe tener los 4 digitos diferentes" do
		digitos = @juego.secret_code.split('')
		digitos[0].should_not == digitos[1]
		digitos[0].should_not == digitos[2]
		digitos[0].should_not == digitos[3]
		digitos[1].should_not == digitos[2]
		digitos[1].should_not == digitos[3]
		digitos[2].should_not == digitos[3]
	end

	it "debe retornar '' cuando ingreso 5678 y el codigo secreto es 1234" do
		@juego.secret_code = "1234"
		pista = @juego.arriesgar("5678")
		pista.should == ""
	end

	it "debe retornar X cuando ingreso 1678 y el codigo secreto es 1234" do
		@juego.secret_code = "1234"
		pista = @juego.arriesgar("1678")
		pista.should == "X"
	end

	it "debe retornar X X cuando ingreso 1278 y el codigo secreto es 1234" do
		@juego.secret_code = "1234"
		pista = @juego.arriesgar("1278")
		pista.should == "X X"
	end

	it "debe retornar X X X cuando ingreso 1238 y el codigo secreto es 1234" do
		@juego.secret_code = "1234"
		pista = @juego.arriesgar("1238")
		pista.should == "X X X"
	end

	it "debe retornar _ cuando ingreso 5671 y el codigo secreto es 1234"

end
