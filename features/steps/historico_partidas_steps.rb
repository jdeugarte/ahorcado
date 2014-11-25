Given(/^que me encuentro en "(.*?)"$/) do |ruta|
  visit ruta
end

Given(/^lleno el campo "(.*?)" con la palabra "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

Given(/^apreto el boton "(.*?)"$/) do |nombre|
    click_button(nombre)
end

Then(/^los ganadores:$/) do |table|
  table.raw.each do |fila|
  	  last_response.body.should =~ /#{fila[0]}/m
  	  last_response.body.should =~ /#{fila[1]}/m
  end
end