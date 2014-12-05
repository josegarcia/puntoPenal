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
	@lanzamiento = params[:some_name].to_i
	@atajo = @@game.posicionarArquero();
	@gol = @lanzamiento != @atajo
	if(@gol)
		@@game.anotarGol()
	else
		@@game.fallarLanzamiento()
	end

	@goles = @@game.contGol
	@atajos = @@game.contAtajos

	erb :home
end
