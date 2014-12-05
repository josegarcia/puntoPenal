Feature: "Jugar al puntoPenal"

Como Jugador
quiero realizar un lanzamiento 
para anotar un gol

Scenario Outline: "tiro"
	Given entro a la aplicacion
	And el arquero se tirara a la posicion <posicionArquero>
	When hago lanzamiento <posicionTiro>
	Then debo ver <mensaje>
	Scenarios:
	|posicionArquero|posicionTiro|mensaje|
	|1|2|"GOOOOLLLL!!!!"|
	|3|3|"QUE BOLUUUDOO !!!!"|

