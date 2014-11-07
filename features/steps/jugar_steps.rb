Given(/^que que ingrese en la pagina "(.*?)" la palabra "(.*?)" en el campo "(.*?)" y apreto el boton "(.*?)" y que luego me encuentro en la pagina "(.*?)" e ingreso el nombre "(.*?)" en el campo "(.*?)" y apreto el boton "(.*?)" y tengo "(.*?)" intentos$/) do |secreto, palabra, campo1,boton1, raiz, nombre, campo2, boton2, intentos|
  visit secreto
  fill_in(campo1, :with => palabra)
  click_button (boton1)
  visit raiz
  fill_in(campo2, :with => nombre)
  click_button (boton2)
  last_response.body.should =~ /Intentos restantes: #{intentos}/m
end

When(/^lleno el campo "(.*?)" con "(.*?)" y apreto "(.*?)"$/) do |campo, letra, boton|
  fill_in(campo, :with => letra)
  click_button(boton)	
end

When(/^lleno el campo "(.*?)" con "(.*?)", apreto "(.*?)" y repito (\d+) veces$/) do |campo, letra, boton, numero|
  veces=0
  while veces<numero.to_i do
    fill_in(campo, :with => letra)
    click_button(boton)
    veces+=1 
  end
end

When(/^apreto "(.*?)"$/) do |pista|
  click_button(pista)
end



Then(/^deberia ver que tengo "(.*?)"$/) do |intentos|
  last_response.body.should =~ /Intentos restantes: #{intentos}/m
end

Then(/^intentos y la cadena "(.*?)"$/) do |cadena|
  last_response.body.should =~ /#{cadena}/m
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end
