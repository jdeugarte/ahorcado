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

Given(/^que lleno la palabra secreta "(.*?)", juego con el nombre "(.*?)" y gano$/) do |palabra, nombre|
	visit '/secreto'
	fill_in('palabra', :with => palabra)
	click_button("Anadir")
	visit '/'
	fill_in('nombre', :with => nombre)
	click_button("Jugar!")
	palabra.split('').uniq.each do |letra|
		fill_in('letra', :with => letra)
		click_button("Jugar")
	end
	visit '/'
end
