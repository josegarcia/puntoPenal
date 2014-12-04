require 'sinatra'
require './lib/game'

configure do
	enable :sessions
	@@game = Game.new
end

get '/' do
	erb :home
end

post '/lanzar' do
	@lanzamiento = params[:some_name] 
	if( @lanzamiento == "2" )
		@@game.anotarGol()
	else
		@@game.fallarLanzamiento()
	end

	@goles = @@game.contGol
	@atajos = @@game.contAtajos

	erb :home
end
