
object rolando {
	const capacidad = 2
	const mochila = []
	const registro = []

	
	method encuentra(artefacto) {
		if (mochila.size() < capacidad) {
			mochila.add(artefacto)
			
		}
		registro.add(artefacto)
		
	}
	
	method mochila(){
		return mochila
	}
	
	method registro(){
		return registro
	}
	
	method llega() {
		castillo.guardar(mochila)
		mochila.clear()
	}
	
	method tiene(){
		return castillo.guardados().union(mochila.asSet())  
	}
	
	method tiene(_artefacto){
		return mochila.contains(_artefacto) || castillo.posee(_artefacto)
	}
}


object castillo {
	const boveda = #{}
	
	method guardar(objetos){
		boveda.addAll(objetos)
			
	}
	
	method posee(_artefacto){
		return boveda.contains(_artefacto)
	}
	
	
	method guardados(){
		return boveda
	}
}

///////////////////////////////
object espada {
	
}


object libro {
	
}

object collar {
	
}

object armadura{
	
}

