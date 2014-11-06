Given(/^que me encuentro en la pagina de inicio, que lleno el campo "(.*?)" con "(.*?)" y apreto el boton "(.*?)"$/) do |campo, palabra, boton|
  visit '/secreto'
  fill_in(campo, :with => palabra)
  click_button(boton)
end

Then(/^me manda un mensaje de aprovacion "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

