object pepita {
	var energia = 100
	


	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		
		return energia.between(500,1000)
		
	}
	
	method cuantoQuiereVolar(){
		
		var distancia = (energia / 5)
		
		if( energia.between(300,400) ){
			
			distancia += 10
			
		}
		
		if(distancia % 20 == 0){
			
			distancia += 15
			
		}
		
	}
	
	method salirAComer() {
		
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	method haceLoQueQuieras(){
		
		if( self.estaCansada() ){ self.come(alpiste) }
		
		if( self.estaFeliz() ){ self.vola(8) } 
		
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}
	
object mijo{
		
		var calorias = 20 // asumo que un mijo esta seco por defecto
		
		method mojarse(){ calorias = 15 }
		method secarse(){ calorias = 20}
		method energiaQueOtorga() { return calorias }
	}
	
object canelones{
	
	var calorias = 20
	
	method ponerSalsa(){ calorias += 5 }
	method sacarSalsa(){ calorias -= 5 }
	method ponerQueso(){ calorias += 7 }
	method sacarQueso(){ calorias -= 7 }
	method energiaQueOtorga() { return calorias }
	}


