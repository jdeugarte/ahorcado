Feature: historico de partidas
	Scenario: una partidas
	Given que me encuentro en "/secreto"
	And lleno el campo "palabra" con la palabra "loco"
	And apreto el boton "Anadir"
	And que me encuentro en "/"
	And lleno el campo "nombre" con la palabra "Jorge"
	And apreto el boton "Jugar!"
	And lleno el campo "letra" con la palabra "l"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "o"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "c"
	And apreto el boton "Jugar"
	And que me encuentro en "/"
	Then los ganadores:
	| Nombre | Palabra|
	| Jorge  | loco   |


	Scenario: dos partidas
	Given que me encuentro en "/secreto"
	And lleno el campo "palabra" con la palabra "loco"
	And apreto el boton "Anadir"
	And que me encuentro en "/"
	And lleno el campo "nombre" con la palabra "Jorge"
	And apreto el boton "Jugar!"
	And lleno el campo "letra" con la palabra "l"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "o"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "c"
	And apreto el boton "Jugar"

	And que me encuentro en "/secreto"
	And lleno el campo "palabra" con la palabra "hola"
	And apreto el boton "Anadir"
	And que me encuentro en "/"
	And lleno el campo "nombre" con la palabra "Pepe"
	And apreto el boton "Jugar!"
	And lleno el campo "letra" con la palabra "h"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "l"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "a"
	And apreto el boton "Jugar"
	And lleno el campo "letra" con la palabra "o"
	And apreto el boton "Jugar"

	And que me encuentro en "/"
	Then los ganadores:
	| Nombre | Palabra|
	| Jorge  | loco   |
	| Pepe   | hola   |

