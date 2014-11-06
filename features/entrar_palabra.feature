Feature: Entrar palabra
	Scenario: Pagina secreta
	Given que me encuentro en la pagina de inicio, que lleno el campo "palabra" con "loco" y apreto el boton "Anadir"
	Then me manda un mensaje de aprovacion "Palabra lista para jugar"