class Corsa { 
	var property color

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
	var property interior
	var property motor
	
	method capacidad() = interior.capacidadInterior()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = 4000 + interior.peso() + motor.pesoMotor()
	method color() = "blanco"
}

object comodo {
	method capacidadInterior() = 5
	method peso() = 700	
}

object popular {
	method capacidadInterior() = 12
	method peso() = 1000
}

object pulenta {
	method velocidadMaxima() = 130
	method pesoMotor() = 800
}

object bataton {
	method velocidadMaxima() = 80
	method pesoMotor() = 500
} 

class AutosEspeciales {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
}
