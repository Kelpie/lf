package info.livefans.tournament

import info.livefans.Tournament
import info.livefans.Match

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

	def nextStages(){
		def path = []
		def lastRank = this.rank
		this.tournament.stages().each{ ts->
			if(ts.rank < lastRank){
				lastRank = ts.rank
				path << ts
			}
		}
		path
	}

	def previusStages(){
		def path = []
		def stages = this.tournament.stages()
		def ignoreRanks = []
		stages.eachWithIndex{ ts, i ->
			if(i + 1 < stages.size() && ts.rank == stages[i+1].rank){
				ignoreRanks << ts.rank
			}
			if(!ignoreRanks.contains(ts.rank) && ts.rank > this.rank){
				path << ts
			}
		}
		path
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

	def matches(){
		matches(null)
	}		

	def matches(Integer howMany){
		def opt = [sort: "date", order: "asc"]
		if(howMany)
			opt.max = howMany

		Match.findAllByStage(this, opt)
	}	

}
