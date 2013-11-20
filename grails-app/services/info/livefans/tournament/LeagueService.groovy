package info.livefans.tournament

import info.livefans.Team
import grails.transaction.Transactional

@Transactional
class LeagueService {

	public static final STATS_FIELDS = [	'played',
											'won','draw','lost',
											'goalsFor',
											'goalsAgainst',
											'goalDifference',
											'points']

	def calculateStats(TournamentStage stage) {
		def matches = stage.matches()
		return calculateStats(matches)
	}

	def calculateStats(List matches) {
		def teamStats = [:]
		matches.each{ m ->
			if(m.scoreA != null && m.scoreB != null){
				[
					[m.teamA, m.scoreA, m.scoreB],
					[m.teamB, m.scoreB, m.scoreA]
				].each{ combination ->
					def team = combination[0]
					def stats = teamMatchStats(	team, 
												combination[1], 
												combination[2])
					if(teamStats.containsKey(team)){
						def oldStats = teamStats.get(team)
						STATS_FIELDS.each{ f->
							oldStats[f] = oldStats[f] + stats[f]
						}
						teamStats.put(team, oldStats)
					}else{
						teamStats.put(team, stats)
					}
				}
			}
		}
		def list = teamStats.values()
		list = list.sort{ b, a ->
			a['points'] <=> b['points'] ?: a['goalDifference'] <=> b['goalDifference'] ?: a['goalsFor'] <=> b['goalsFor']
		}
		return list
	}

	def teamMatchStats(team, Integer score, Integer otherScore){
		def stats = [:]
		stats['team'] = team
		stats['played'] = 1
		stats['won'] = (score > otherScore?1:0)
		stats['draw'] = (score == otherScore?1:0)
		stats['lost'] = (score < otherScore?1:0)
		stats['goalsFor'] = score
		stats['goalsAgainst'] = otherScore
		stats['goalDifference'] = (score - otherScore)
		stats['points'] = (score > otherScore?3:(score == otherScore?1:0))
		stats
	}
}
