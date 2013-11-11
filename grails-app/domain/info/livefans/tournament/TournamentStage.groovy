package info.livefans.tournament

import info.livefans.Tournament

/**
 * @author abertolo
 */
class TournamentStage {

	Tournament tournament
	String name
	Date dateFrom
	Date dateTo
	
    static constraints = {
    }
	static mapping = {
		tournament  fetch:'join'
	}
}
