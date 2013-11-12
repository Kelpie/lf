package info.livefans.tournament

import info.livefans.Tournament
import info.livefans.Stadium

/**
 * @author abertolo
 */
class TournamentStadium {

	Tournament tournament
	Stadium stadium
	
    static constraints = {
    }

	static mapping = {
		tournament  fetch:'join'
		stadium  fetch:'join'
	}
}
