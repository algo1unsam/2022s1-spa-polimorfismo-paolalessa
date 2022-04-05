 object olivia {
	
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasajes(){
		gradoDeConcentracion += 3
	}
	
	method discutir(){
		gradoDeConcentracion -= 1
	}
}

object bruno {
	
	var feliz = true
	
	var sed = false
	
	var peso = 55000 //gramos
	
	const pesoMinimo = 50000 //gramos
	
	const pesoMaximo = 70000 //gramos
	
	method pesoIdeal() = peso.between(pesoMinimo, pesoMaximo)
	
	method recibirMasajes(){
		feliz = true
	}
	
	method darBanioDeVapor(){
		peso -= 500
		sed = true
	}
	
	method tomarAgua(){
		sed = false
	}
	
	method comerFideos(){
		peso += 250
		sed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verElNoticiero(){
		feliz = false
	}
	
	method estaPerfecto() = feliz and not sed and self.pesoIdeal()
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramino{
	
	var nivelDeContractura = 0
	
	var pielGrasosa = false
	
	method recibirMasajes(){
		nivelDeContractura -= 2
		nivelDeContractura.max(0)
	}
	
	method darBanioDeVapor(){
		pielGrasosa = false
	}
	
	method comerBigMac(){
		pielGrasosa = true
	}
	
	method bajarALaFosa(){
		pielGrasosa = true
		nivelDeContractura += 1
	}
	
	method jugarAlPaddle(){
		nivelDeContractura += 3
	}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}