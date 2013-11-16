package info.livefans

import info.livefans.tournament.*

/**
 * @author abertolo
 */
class Tournament {

	String name
	String logo
	String poster
	String slogan
	String place
	

    static constraints = {
    }
	static mapping = {
	}

	def teams(){
		TournamentStageTeam.findAllByStage(stages().first()).collect{ it.team }
	}

	def stadiums(){
		TournamentStadium.findAllByTournament(this).collect{ it.stadium }
	}

	def stages(){
		TournamentStage.findAllByTournament(this, [sort: "rank", order: "desc"])
	}

	def currentStage(){
		def now = new Date()
		def c = TournamentStage.createCriteria()
		def stages = c.list {
			eq('tournament',this)			
			le("dateFrom", now)
			gt("dateTo", now)
			order("rank", "desc")
		}
		if (!stages.isEmpty())
			return stages.first()

		null
	}

	def matches(){
		matches(null)
	}		

	def matches(Integer howMany){
		def opt = [sort: "date", order: "asc"]
		if(howMany)
			opt.max = howMany

		Match.findAllByTournament(this, opt)
	}

	def nextMatches(){
		nextMatches(null)
	}		

	def nextMatches(Integer howMany){
		def opt = [sort: "date", order: "asc"]
		if(howMany)
			opt.max = howMany

		Match.findAllByTournamentAndDateGreaterThan(this, new Date(),  opt)
	}		
}
