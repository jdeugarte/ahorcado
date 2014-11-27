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
	| Pepe   | hola   |
	| Jorge  | loco   |

	Scenario: tres partidas
	Given que lleno la palabra secreta "loco", juego con el nombre "Jorge" y gano

	Given que lleno la palabra secreta "hola", juego con el nombre "Pepe" y gano

	Given que lleno la palabra secreta "chau", juego con el nombre "Pedro" y gano

	And que me encuentro en "/"
	
	Then los ganadores:
	| Nombre | Palabra|
	| Pedro  | chau   |
	| Pepe   | hola   |
	| Jorge  | loco   |


	Scenario: cuatro partidas
	Given que lleno la palabra secreta "loco", juego con el nombre "Jorge" y gano

	Given que lleno la palabra secreta "hola", juego con el nombre "Pepe" y gano

	Given que lleno la palabra secreta "chau", juego con el nombre "Pedro" y gano

	Given que lleno la palabra secreta "lampara", juego con el nombre "Sergio" y gano

	And que me encuentro en "/"
	
	Then los ganadores:
	| Nombre | Palabra|
	| Sergio | lampara|
	| Pedro  | chau   |
	| Pepe   | hola   |
	
