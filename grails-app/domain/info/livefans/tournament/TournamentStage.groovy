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

	boolean isPlaying(){
		def now = System.currentTimeMillis()
		if(now >= dateFrom.time && now < dateTo.time)
			return true

		return false
	}

	boolean isFinished(){
		def now = System.currentTimeMillis()
		if(now > dateTo.time)
			return true

		return false
	}

}
