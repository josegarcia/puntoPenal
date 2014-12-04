Given(/^entro a la aplicacion$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^no debo ver "(.*?)"$/) do |text|
  last_response.body.should_not =~ /#{text}/m
end


Given(/^el numero secreto es "(.*?)"$/) do |value|
	@@game.secret_code = value
end

When(/^intento con "(.*?)"$/) do |value|	
  fill_in("numero", :with => value)
  click_button("jugar")
end

