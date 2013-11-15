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
		def wc = Tournament.findByName('tournament.fifa.world.cup.2014')
		redirect(uri:"/tournament/${wc.id}/${RequestUtils.forSeoUrl(g.message(code: wc.name))}")
	}
	
	def show(Long id){
		Tournament tournament = RequestUtils.secureDomainGet(Tournament, id)
		[tournament: tournament]
	}
	
}
