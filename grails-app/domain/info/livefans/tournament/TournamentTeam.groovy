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
		tournament fetch:'join', index:'Team_Tournament_Idx'
		team fetch:'join'
	}
}
