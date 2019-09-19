import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) { cosas.add(cosa)}
	method cantidadDeCosasCompradas(){ cosas.size()}
	method tieneComida(){ return cosas.any({cosa => cosa.esComida()})}
	method vieneDeEquiparse(){ return cosas.last().esElectrodomestico() 
		or cosas.last().precio() > 5000 }
	method esDerrochona() { return cosas.sum({cosa=>cosa.precio()}) > 9000} 
	method comprarMasCara() { return cosas.max({ cosa=>cosa.precio()})}
	method electrodomesticosComprados(){ return cosas.filter({cosa=>cosa.esElectrodomestico()})}
	method malaEpoca() { return cosas.all({cosa=>cosa.esComida()})}
	
	
	//Mas cosas sobre la casa
	method gastoEnComida(){ return cosas
		.filter{cosa=>cosa.esComida()}
		.sum({cosa=>cosa.precio()})
	}
	method hayElectrodomesticosBaratos(){ return cosas
		.filter({cosa=>cosa.esElectrodomestico()})
		.any({cosa=>cosa.precio()<3000})
	}
	method preciosDeElectrodomesticos(){ return cosas
		.filter({cosa=>cosa.esElectrodomestico()})
		.
	}
	method nivelEnAumento(){return cosas.last().precio() >= cosas.first().precio() * 2}
	method primeraComidaComprada(){ return cosas.filter({cosa=>cosa.esComida()}).first()}
	
	
	
	
	
	
	
	
	
}
