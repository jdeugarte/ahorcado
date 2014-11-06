Given(/^que me encuentro en la pagina de juego$/) do
  visit '/'
  click_button ("Jugar!")
end

Then(/^veo los intentos restantes con "(.*?)", campo "(.*?)" y un maximo de caracteres de "(.*?)", el boton "(.*?)" y el boton "(.*?)"$/) do |intentos, campo, maximo, jugar, pista|
  last_response.body.should =~ /Intentos restantes: #{intentos}/m
  last_response.body.should =~ /<input type="text" name="#{campo}" maxlength="#{maximo}"/m
  last_response.body.should =~ />#{jugar}/m
  last_response.body.should =~ />#{pista}/m
end
