package info.livefans.tournament

import info.livefans.Tournament

/**
 * @author abertolo
 */
class TournamentStage {

	Tournament tournament
	String name
	Integer rank
	Date dateFrom
	Date dateTo
	TournamentStageType type
	TournamentStage next

	
    static constraints = {
    	next nullable: true
    	rank nullable: true
    }
	static mapping = {
		tournament  fetch:'join', index:'Stage_Tournament_Idx'
	}
}
