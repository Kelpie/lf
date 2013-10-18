package info.livefans

/**
 * @author abertolo
 */
class Match {
	
	Tournament tournament
	TournamentStage stage
	Team teamA
	Team teamB
	Integer scoreA
	Integer scoreB
	Stadium stadium
	Referee referee1
	Referee referee2
	Referee referee3
	Referee referee4
	Date date

    static constraints = {

    }
	
	static mapping = {
		tournament  fetch:'join'
		stage  		fetch:'join'
		teamA 		fetch:'join'
		teamB 		fetch:'join'
		referee1 	fetch:'join'
		referee2 	fetch:'join'
		referee3 	fetch:'join'
		referee4 	fetch:'join'
	}
	
}