package info.livefans

/**
 * @author abertolo
 */
class TournamentController {

    def index() { 
		def wc = Tournament.findByName('2014 FIFA World Cup')
		redirect(action: "show", id: wc.id)
	}
	
	def show(){
		//buscar equipos del torneo
		//buscar estadios
		//proximos partidos
		//mostrar stages 
	}
	
}
