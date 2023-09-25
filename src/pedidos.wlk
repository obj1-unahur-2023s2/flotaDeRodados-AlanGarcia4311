class Pedido {
	var property distanciaEnKm = 0
	var property tiempoMaximo = 0
	var property cantidadDePasajeros = 0
	const coloresIncompatibles = #{}
	
	method coloresIncompatibles() = coloresIncompatibles
	method agregarColorIncompatible(color) = coloresIncompatibles.add(color)
	method velocidadRequerida() = distanciaEnKm / tiempoMaximo
	method puedeSatisfacerElPedido(auto) = 0.max(auto.velocidadMaxima() - self.velocidadRequerida()) >= 10 and
											auto.capacidad() >= self.cantidadDePasajeros() and
											not coloresIncompatibles.contains(auto.color())
	method acelerar(){
		tiempoMaximo -= 1
	}
	method relajar(){
		tiempoMaximo += 1
	}
}