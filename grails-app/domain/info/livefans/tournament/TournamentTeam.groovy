package info.livefans.tournament

import info.livefans.Tournament
import info.livefans.Team

/**
 * @author abertolo
 */
class TournamentTeam {

	Tournament tournament
	Team team
	
    static constraints = {
    }
	static mapping = {
		tournament fetch:'join'
		team fetch:'join'
	}
}
