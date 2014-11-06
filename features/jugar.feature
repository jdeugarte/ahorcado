Feature: Jugar
	Scenario: Pagina de juego
	Given que que ingrese en la pagina "/secreto" la palabra "loco" en el campo "palabra" y apreto el boton "Anadir" y que luego me encuentro en la pagina "/" e ingreso el nombre "Jorge" en el campo "nombre" y apreto el boton "Jugar!" y tengo "5" intentos
	When lleno el campo "letra" con "p" y apreto "Jugar"
	Then deberia ver que tengo "4" 
	Then intentos y la cadena "____"