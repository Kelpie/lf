
package info.livefans

import info.livefans.tournament.TournamentStage

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
		teamA nullable: true
		teamB nullable: true

		scoreA nullable: true
		scoreB nullable: true	
    }
	
	static mapping = {
		tournament  fetch:'join', index:'Match_Tournament_Date_Idx'
		stage  		fetch:'join', index:'Match_Stage_Date_Idx'
		teamA 		fetch:'select'
		teamB 		fetch:'select'
		referee1 	fetch:'join'
		referee2 	fetch:'join'
		referee3 	fetch:'join'
		referee4 	fetch:'join'
		date 		index:'Match_Tournament_Date_Idx,Match_Stage_Date_Idx'
	}
	
}