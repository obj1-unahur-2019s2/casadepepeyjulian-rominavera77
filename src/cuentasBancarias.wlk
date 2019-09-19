object cuentaCorriente {
	var saldo = 0
	
	method saldo() { return saldo}
	method depositar(importe) = saldo + importe
	method extraer(importe) = saldo - importe
}


object cuentaConGastos {
	var saldo = 0 
	
	method saldo() { return saldo}
	method depositar(importe) = saldo + importe - 20
	method extraer(importe){
		if (importe < 1000) { saldo + importe - 20}
		else saldo 
	}
}