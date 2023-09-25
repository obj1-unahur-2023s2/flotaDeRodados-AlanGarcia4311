import rodados.*
import pedidos.*

class Dependencia {
	var property cantidadDeEmpleados = 0
	
	const flotaRodados = []
	const regPedidos = []
	
	method agregarPedido(pedido){
		regPedidos.add(pedido)
	}
	method quitarPedido(pedido){
		regPedidos.remove(pedido)
	}	
	method totalPasajerosEnLosPedidos() = regPedidos.sum({pedido => pedido.cantidadDePasajeros()})
	method pedidosNoSatisfechos() = flotaRodados.filter({pedido => regPedidos.all({x => not x.puedeSatisfacerElPedido(pedido)})}) 
	method todosTienenIncompatible(color) = regPedidos.all({pedido => pedido.coloresIncompatibles().contains(color)})
	method relajarTodosLosPedidos() = regPedidos.forEach({pedido => pedido.relajar()})
	method agregarAFlota(rodado) = flotaRodados.add(rodado)
	method quitarDeFlota(rodado) = flotaRodados.remove(rodado)
	method pesoTotalFlota() = flotaRodados.sum({x => x.peso()})
	method estaBienEquipada() = flotaRodados.size() >= 3 and flotaRodados.all({x => x.velocidadMaxima() >= 100})
	method capacidadTotalEnColor(color) = flotaRodados.filter({x => x.color() == color}).sum({r => r.capacidad()})
	method colorDelRodadoMasRapido() = if (flotaRodados.isEmpty()) self.error("no se puede calcular")
										else flotaRodados.max({x => x.velocidadMaxima()}).color()
	method capacidadFaltante() = 0.max(cantidadDeEmpleados - flotaRodados.sum({r => r.capacidad()}))
	method esGrande() = cantidadDeEmpleados >= 40 and flotaRodados.size() >= 5
}

