Feature: Jugar
	Scenario: no adivinar letra, perder un intento
	Given que que ingrese en la pagina "/secreto" la palabra "loco" en el campo "palabra" y apreto el boton "Anadir" y que luego me encuentro en la pagina "/" e ingreso el nombre "Jorge" en el campo "nombre" y apreto el boton "Jugar!" y tengo "5" intentos
	When lleno el campo "letra" con "p" y apreto "Jugar"
	Then deberia ver que tengo "4" 
	Then intentos y la cadena "____"

	Scenario: adivinar letra
	Given que que ingrese en la pagina "/secreto" la palabra "loco" en el campo "palabra" y apreto el boton "Anadir" y que luego me encuentro en la pagina "/" e ingreso el nombre "Jorge" en el campo "nombre" y apreto el boton "Jugar!" y tengo "5" intentos
	When lleno el campo "letra" con "o" y apreto "Jugar"
	Then deberia ver que tengo "5" 
	Then intentos y la cadena "_o_o"

	Scenario: pedir pista
	Given que que ingrese en la pagina "/secreto" la palabra "loco" en el campo "palabra" y apreto el boton "Anadir" y que luego me encuentro en la pagina "/" e ingreso el nombre "Jorge" en el campo "nombre" y apreto el boton "Jugar!" y tengo "5" intentos
	When apreto "Pista"
	Then deberia ver que tengo "4" 
	Then intentos y la cadena "l___"

	Scenario: Ganar
	Given que que ingrese en la pagina "/secreto" la palabra "l" en el campo "palabra" y apreto el boton "Anadir" y que luego me encuentro en la pagina "/" e ingreso el nombre "Jorge" en el campo "nombre" y apreto el boton "Jugar!" y tengo "5" intentos
	When lleno el campo "letra" con "l" y apreto "Jugar"
	Then deberia ver el mensaje "FELICITACIONES JORGE GANASTE! ADIVINASTE LA PALABRA L"

	Scenario: Perder
	Given que que ingrese en la pagina "/secreto" la palabra "lOCO" en el campo "palabra" y apreto el boton "Anadir" y que luego me encuentro en la pagina "/" e ingreso el nombre "Jorge" en el campo "nombre" y apreto el boton "Jugar!" y tengo "5" intentos
	When lleno el campo "letra" con "p", apreto "Jugar" y repito 5 veces
	Then deberia ver el mensaje "PERDISTE JORGE... LA PALABRA ERA LOCO"
	