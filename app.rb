require 'sinatra'
require './lib/game'

configure do
	enable :sessions
	@@game = Game.new
	@@campos = 3
end

get '/' do
	@@atajo = @@game.posicionarArquero();
	@gol = true
	@continuar = true
	@@game.reiniciarMarcador()
	erb :home
end

post '/lanzar' do
	@atajo = @@atajo.to_i
	@lanzamiento = params[:some_name].to_i
	
	@gol = @lanzamiento != @atajo
	if(@gol)
		@@game.anotarGol()
		@mensaje = "GOOOOLLLL!!!!"
	else
		@@game.fallarLanzamiento()
		@mensaje = "QUE BOLUUUDOO !!!!"
	end

	@goles = @@game.contGol
	@atajos = @@game.contAtajos
	@@atajo = @@game.posicionarArquero();
	erb :home
end

get '/continuar' do
	@atajo = 2
	@gol = true
	
	@continuar = true
	@goles = @@game.contGol
	@atajos = @@game.contAtajos
	erb :home
end
