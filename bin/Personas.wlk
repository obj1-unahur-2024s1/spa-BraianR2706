object olivia {
	
	var concentracion = 6
	
	
	method gradoDeConcentracion() = concentracion
	
	
	method recibirMasaje(){
		concentracion = concentracion + 3
	}
	
	
	method discutir(){
		concentracion = concentracion - 1
	}
	
	method banoDeVapor(){
	//segun la consigna, no debe hacer nada
	}
	
}


object bruno{
	
	var esFeliz = true
	var tieneSed = false
	var peso = 5500
	
	method recibirMasaje(){
		esFeliz = true
	}
	
	method banoDeVapor(){
		peso = 0.max(peso - 500)
		tieneSed = true
		
	}
	
	method tomarAgua(){
		tieneSed = false
	}
	
	method comeFideos(){
		peso = peso + 250
		tieneSed = true
	}
	
	method correr(){
		peso = 0.max(peso - 300)
	}
	
	method verNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto() = esFeliz and not(tieneSed) and peso.between(50,70)
	
	method medioDiaEnCasa(){
		self.comeFideos()
		self.tomarAgua()
		self.verNoticiero()
		
	}
	
}


object ramiro{
	var contracturado = 0
	var pielGrasosa = false
	
	method recibirMasaje(){
		contracturado = 0.max(contracturado - 2)
		}
	
	method banoDeVapor(){
		pielGrasosa = false
	}
	
	method comerBigMac(){
		pielGrasosa = true
	}
	
	method bajarALaFosa(){
		pielGrasosa = true
		contracturado = contracturado + 1
	}
	
	method jugarPaddle(){
		contracturado = contracturado + 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
	
	
}
