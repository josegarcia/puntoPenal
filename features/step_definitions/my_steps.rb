Given(/^entro a la aplicacion$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Given(/^debo ver la posicion del arquero inicial (\d+)$/) do |value|
  @@game.arquero_posicion = value
end

When(/^hago lanzamiento (\d+)$/) do |value|	
  click_button(value)
end


Given(/^el arquero se tirara a la posicion (\d+)$/) do |posicion|
	@@atajo = posicion
end

