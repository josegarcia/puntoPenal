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
	#@guess_number = params[:numero]
	#@pista = @@game.arriesgar(@guess_number)
	#if( @pista == "X X X X")
	#	@mensaje = 'Ganaste GENIO'
	#else
	#	@mensaje = 'Intentalo de nuevo....'
	#end
	#=end
	@lanzamientosCount = @@game.aumentarContador(  )
	erb :home
end
