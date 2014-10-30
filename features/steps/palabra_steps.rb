Given(/^que me encuentro en la pagina secreta$/) do
  visit '/secreto'
end

Then(/^veo el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^veo el campo "(.*?)"$/) do |campo|
  last_response.body.should =~ /name="#{campo}">/m
end

Then(/^veo el boton "(.*?)"$/) do |boton|
  last_response.body.should =~ />#{boton}</m
end
