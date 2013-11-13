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
		TournamentTeam.findAllByTournament(this).collect{ it.team }
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
			tournament{
				idEq(this.id)
			}			
			ge("dateFrom", now)
			lt("dateTo", now)
			order("rank", "desc")
		}
		stages?.first()
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
