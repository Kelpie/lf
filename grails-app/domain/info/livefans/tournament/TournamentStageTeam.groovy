package info.livefans.tournament

import info.livefans.tournament.TournamentStage
import info.livefans.Team

/**
 * @author abertolo
 */
class TournamentStageTeam {

	TournamentStage stage
	Team team
	
	static constraints = {
	}
	static mapping = {
		stage fetch:'join', index:'Team_Stage_Idx'
		team fetch:'join'
	}
}
