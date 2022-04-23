import personas.*

object spa {
	
	var ultimoCliente = null
	
	method atender(persona){
		
		if(persona == ultimoCliente){
			persona.recibirMasajes()
		}

		persona.recibirMasajes()
		persona.darBanioDeVapor()
		
		ultimoCliente = persona
	}
}
