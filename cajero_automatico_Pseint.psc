Función saldo <- consultar_saldo(saldo)
	Escribir 'Tu saldo actual es: ', saldo
FinFunción

Función saldo <- depositar_saldo(saldo)
	Definir deposito Como Real
	Escribir 'Ingresa la cantidad a depositar:'
	Leer deposito
	Si deposito>0 Entonces
		saldo <- saldo+deposito
		Escribir 'Tu saldo actual es: ', saldo
	SiNo
		Escribir 'La cantidad debe ser positiva.'
	FinSi
FinFunción

Función saldo <- retirar_saldo(saldo)
	Definir retiro Como Real
	Escribir 'Ingresa la cantidad a retirar:'
	Leer retiro
	Si retiro>0 Entonces
		Si retiro<=saldo Entonces
			saldo <- saldo-retiro
			Escribir 'Tu saldo actual es: ', saldo
		SiNo
			Escribir 'Fondos insuficientes.'
		FinSi
	SiNo
		Escribir 'La cantidad debe ser positiva.'
	FinSi
FinFunción

Función salir <- sal
	Escribir 'Gracias por usar el cajero automático.'
FinFunción

Algoritmo cajero_automatico
	Definir saldo Como Real
	saldo <- 1000
	Definir opcion Como Entero
	Repetir
		Escribir 'Menú de opciones:'
		Escribir '1. Consultar saldo'
		Escribir '2. Depositar dinero'
		Escribir '3. Retirar dinero'
		Escribir '4. Salir'
		Escribir 'Elige una opción:'
		Leer opcion
		Si opcion=1 Entonces
			saldo <- consultar_saldo(saldo)
		FinSi
		Si opcion=2 Entonces
			saldo <- depositar_saldo(saldo)
		FinSi
		Si opcion=3 Entonces
			saldo <- retirar_saldo(saldo)
		FinSi
		Si opcion=4 Entonces
			salir <- sal
		FinSi
		Si opcion<1 O opcion>4 Entonces
			Escribir 'Opción no válida.'
		FinSi
	Hasta Que opcion=4
FinAlgoritmo
