package info.livefans.tournament

import info.livefans.Tournament
import info.livefans.Team

/**
 * @author abertolo
 */
class TournamentResult {

	Tournament tournament
	Team champions
	Team runnerUp
	Team thirdPlace
	Team fourthPlace
	
    static constraints = {
    	thirdPlace nullable: true
    	fourthPlace nullable: true
    }

	static mapping = {
		tournament index:'Result_Tournament_Idx'
	}
}
