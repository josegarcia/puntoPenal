require 'sinatra'
require './lib/game'

configure do
	enable :sessions
	@@game = Game.new
	@@campos = 3
end

get '/' do
	erb :home
end

post '/lanzar' do
	@lanzamiento = params[:some_name]
	@atajo = @@game.posicionarArquero();
	@gol = @lanzamiento.to_i == @atajo
	if(@gol)
		@@game.anotarGol()
	else
		@@game.fallarLanzamiento()
	end

	@goles = @@game.contGol
	@atajos = @@game.contAtajos

	erb :home
end
