package info.livefans.tournament

import grails.transaction.Transactional
import info.livefans.match.*
import info.livefans.*
/**
*@author abertolo
**/
@Transactional
class KnockoutService {


	def calculateBrackets(TournamentStage stage) {
		def knockout = (stage.type == TournamentStageType.KNOCKOUT)?stage:stage.tournament.knockout()

		def brackets = []
		def nextRound = null
		knockout.nextStages().reverse().each{ s -> //final - semifinal - quarterfinal
			def round = []
			if(!nextRound){
				s.matches().each{ m -> round << matchBracketMap(m, stage) }
				//primero la final y desp el tercer puesto
				round.sort{a,b -> 
					b['precondition'].teamAFromMatchWinner <=> a['precondition'].teamAFromMatchWinner
				}
			}else{
				def matches = [] as Set
				nextRound.each{ rm -> 
					MatchPreCondition pc = rm['precondition']
					[pc.teamAFromMatch, pc.teamBFromMatch].each{
						if (!matches.contains(it.id)){
							round << matchBracketMap(it, stage)
							matches << it.id
						}
					}
				}
			}
			nextRound = round
			brackets.add(0, round)
		}
		brackets
	}

	def matchBracketMap(Match match, TournamentStage selectedStage = null){
		def c = MatchPreCondition.findByMatch(match)
		def ma = ['match': match, 'precondition': c]
		if(selectedStage?.id == match.stage.id)
			ma.selected = true
		ma
	}
}
