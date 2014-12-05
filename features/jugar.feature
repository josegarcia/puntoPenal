Feature: "Jugar al puntoPenal"

Como Jugador
quiero realizar un lanzamiento 
para anotar un gol

Scenario Outline: "tiro"
	Given entro a la aplicacion
	And debo ver la posicion del arquero inicial <posicionArquero>	
	Scenarios:
	|posicionArquero|
	|1|
	|2|

