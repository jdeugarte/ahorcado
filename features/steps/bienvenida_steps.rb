Given(/^que me encuentro en la pagina de inicio$/) do
	visit '/'
end

Then(/^veo el mensage "(.*?)",veo la imagen "(.*?)", veo el campo "(.*?)" y el boton "(.*?)"$/) do |mensaje, imagen, campo, boton|
	last_response.body.should =~ /#{mensaje}/m
	last_response.should have_xpath("//img[@src=\"#{imagen}\"]")
	last_response.body.should =~ /<input type="text" name="#{campo}">/m
	last_response.body.should =~ />#{boton}/m
end
