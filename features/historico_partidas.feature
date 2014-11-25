Feature: historico de partidas
	Scenario: una partidas

	Given que lleno la palabra secreta "loco", juego con el nombre "Jorge" y gano

	Then los ganadores:
	| Nombre | Palabra|
	| Jorge  | loco   |


	Scenario: dos partidas
	Given que lleno la palabra secreta "loco", juego con el nombre "Jorge" y gano

	Given que lleno la palabra secreta "hola", juego con el nombre "Pepe" y gano


	And que me encuentro en "/"
	
	Then los ganadores:
	| Nombre | Palabra|
	| Jorge  | loco   |
	| Pepe   | hola   |

