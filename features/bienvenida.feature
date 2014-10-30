Feature:Bienvenida
	Scenario: Pagina de Bienvenida
	Given que me encuentro en la pagina de inicio
	Then veo el mensage "Bienvenido al juego del ahorcado!",veo la imagen "/ahorcado.jpg", veo el campo "nombre" y el boton "Jugar!" 