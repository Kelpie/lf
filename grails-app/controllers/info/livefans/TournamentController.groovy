package info.livefans

import info.livefans.tournament.*

/**
 * @author abertolo
 */
class TournamentController {

    def index() { 
		def wc = Tournament.findByName('2014 FIFA World Cup')
		redirect(action: "show", id: wc.id)
	}
	
	def show(Long id){
		Tournament tournament = Tournament.get(id)
		
		//buscar equipos del torneo
		tournament.teams()
		//buscar estadios
		//proximos partidos
		//mostrar stages 
	}
	
}
