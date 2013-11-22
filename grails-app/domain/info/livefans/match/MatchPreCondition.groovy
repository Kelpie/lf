package info.livefans.match

import info.livefans.*
import info.livefans.tournament.*

/**
 * @author abertolo
 */
class MatchPreCondition {
	
	Match match

	TournamentStage teamAFromStage
	Integer teamAfromStagePosition
	Match teamAFromMatch
	Boolean teamAFromMatchWinner

	TournamentStage teamBFromStage
	Integer teamBfromStagePosition
	Match teamBFromMatch
	Boolean teamBFromMatchWinner

    static constraints = { 
		teamAFromStage nullable: true
		teamAfromStagePosition nullable: true
		teamAFromMatch nullable: true
		teamAFromMatchWinner nullable: true

		teamBFromStage nullable: true
		teamBfromStagePosition nullable: true
		teamBFromMatch nullable: true
		teamBFromMatchWinner nullable: true		
    }

	static mapping = {
		match index:'PreCondition_Match_Idx'
		teamAFromMatch index:'PreCondition_TeamsFromMatch_Idx'
		teamBFromMatch index:'PreCondition_TeamsFromMatch_Idx'
	}
}

