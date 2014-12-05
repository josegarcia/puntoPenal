Given(/^entro a la aplicacion$/) do
	visit '/'
end

Given(/^debo ver la posicion del arquero inicial (\d+)$/) do |value|
  @@game.arquero_posicion = value
end

