class Corsa { 
	const color

	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
	method color() = color
}

class Renault {
	const tieneTanqueAdicional
	
	method capacidad() = if (tieneTanqueAdicional) 3 else 4
	method velocidadMaxima() = if (tieneTanqueAdicional) 120 else 110
	method peso() = if (tieneTanqueAdicional) 1350 else 1200
	method color() = "azul"
}

object trafic {
	var interior
	var motor
	
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = 4000 + interior.peso() + motor.peso()
	method color() = "blanco"
}

object comodo {
	method capacidad() = 5
	method peso() = 700	
}

object popular {
	method capacidad() = 12
	method peso() = 1000
}

object pulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}

object bataton {
	method velocidadMaxima() = 80
	method peso() = 500
} 

class AutosEspeciales {
	var capacidad
	var velocidadMaxima
	var peso
	var color
}

class Dependencia {
	const rodados = []
	
	
}