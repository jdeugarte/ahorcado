Feature: Palabra secreta
	Scenario: Pagina secreta para la palabra secreta
	Given que me encuentro en la pagina secreta
	Then veo el mensaje "Ponga la palabra secreta con la que quiere jugar"
	Then veo el campo "palabra"
	Then veo el boton "Anadir"
	