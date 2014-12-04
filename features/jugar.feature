Feature: "Jugar al codeBreaker"

Como nerd 
quiero ingresar un numero 
para comenzar a jugar

Scenario Outline: "Primera jugada"
	Given entro a la aplicacion
	And el numero secreto es <secret>
	When intento con <guess>
	Then debo ver <mensaje>
	Scenarios:
	|secret|guess|mensaje|
	|"1234"|"1234"|"Ganaste GENIO"|
	|"1234"|"3456"|"Intentalo de nuevo...."|

Scenario Outline: "Jugar"
	Given entro a la aplicacion
	And el numero secreto es <secret>
	When intento con <guess>
	Then debo ver <pista>
	Scenarios:
	|secret|guess|pista|
	|"1234"|"5678"|"()"|
	|"1234"|"1234"|"(X X X X)"|
	|"1234"|"1598"|"(X)"|
	|"1234"|"1538"|"(X X)"|
	|"1234"|"5284"|"(X X)"|
	|"1234"|"5234"|"(X X X)"|
	|"1234"|"1235"|"(X X X)"|
	|"1234"|"5671"|"(_)"|
	
Scenario: No Gano
	Given entro a la aplicacion
	And el numero secreto es "1234"
	When intento con "9876"
	Then no debo ver "Ganaste GENIO"
	And debo ver "Intentalo de nuevo...."


