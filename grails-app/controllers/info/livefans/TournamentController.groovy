package info.livefans

import info.livefans.tournament.*
import info.livefans.request.RequestUtils
import static org.springframework.http.HttpStatus.*

/**
 * @author abertolo
 */
class TournamentController {

	static allowedMethods = [index: "GET", show: "GET"]

    def index() { 
		def wc = Tournament.findByName('2014 FIFA World Cup')
		redirect(action: "show", id: wc.id)
	}
	
	def show(Long id){
		Tournament tournament = RequestUtils.secureDomainGet(Tournament, id)
		[tournament: tournament]
	}
	
}
