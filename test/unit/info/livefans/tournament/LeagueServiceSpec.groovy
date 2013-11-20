package info.livefans.tournament

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(LeagueService)
class LeagueServiceSpec extends Specification {


	void "Points calculation of teamMatchStats"() {
		expect:
			def result = service.teamMatchStats('Argentina', scoreA, scoreB)
			result['won'] == won
			result['draw'] == draw
			result['lost'] == lost
			result['goalsFor'] == goalsFor
			result['goalsAgainst'] == goalsAgainst
			result['goalDifference'] == goalDifference
			result['points'] == points

		where:
			scoreA	|	scoreB	|	won	|	draw	|	lost|	goalsFor|	goalsAgainst|	goalDifference	|	points
			1		|	2		|	0	|	0		|	1 	|	1 		|		2		|			-1 		|	0
			5		|	5		|	0	|	1 		|	0	|	5		|		5		|			0		|	1
			3		|	1 		|	1 	|	0		|	0	|	3		|		1 		|			2		|	3
	}

	void "Test league stats calculation"() {
		given: "Certain matches"
			def matches = [
				[teamA: 'Arg', teamB: 'Bra', scoreA: 3, scoreB: 2],
				[teamA: 'Arg', teamB: 'Ita', scoreA: 2, scoreB: 4],
				[teamA: 'Ale', teamB: 'Arg', scoreA: 1, scoreB: 6],
				[teamA: 'Bra', teamB: 'Ale', scoreA: 0, scoreB: 1],
				[teamA: 'Bra', teamB: 'Ita', scoreA: 1, scoreB: 2],
				[teamA: 'Ita', teamB: 'Ale', scoreA: 2, scoreB: 3]
			]

		when: "calculate the league stats"
			def result = service.calculateStats(matches)

		then: "the result is the matches sumarization"
			result.each{ r ->
				def teamMatches = matches.findAll { m -> m.teamA == r.team || m.teamB == r.team}
				def sumarization = [:]
				service.STATS_FIELDS.each{ sumarization.put(it, 0) }
				teamMatches.each{ tm ->
					def tmResult = service.teamMatchStats(r.team, (tm.teamA==r.team?tm.scoreA:tm.scoreB), (tm.teamA==r.team?tm.scoreB:tm.scoreA))
					service.STATS_FIELDS.each{ sumarization.put(it, sumarization[it] + tmResult[it]) }
				}
				sumarization['won'] == r['won']
				sumarization['draw'] == r['draw']
				sumarization['lost'] == r['lost']
				sumarization['goalsFor'] == r['goalsFor']
				sumarization['goalsAgainst'] == r['goalsAgainst']
				sumarization['goalDifference'] == r['goalDifference']
				sumarization['points'] == r['points']				
			}
	}

	void "Test sort of league stats by points"() {
		given: "Certain matches"
			def matches = [
				[teamA: 'Arg', teamB: 'Bra', scoreA: 3, scoreB: 2],
				[teamA: 'Arg', teamB: 'Ita', scoreA: 2, scoreB: 4],
				[teamA: 'Ale', teamB: 'Arg', scoreA: 1, scoreB: 6],
				[teamA: 'Bra', teamB: 'Ale', scoreA: 0, scoreB: 1],
				[teamA: 'Bra', teamB: 'Ita', scoreA: 1, scoreB: 2],
				[teamA: 'Ita', teamB: 'Ale', scoreA: 2, scoreB: 2]
			]

		when: "calculate the league stats"
			def result = service.calculateStats(matches)

		then: "the result should be sorted by points"
			result[0].team == 'Ita'
			result[1].team == 'Arg'
			result[2].team == 'Ale'
			result[3].team == 'Bra'
	}


	void "Test sort of league stats by points and goalDifference"() {
		given: "Certain matches"
			def matches = [
				[teamA: 'Arg', teamB: 'Bra', scoreA: 3, scoreB: 1],
				[teamA: 'Arg', teamB: 'Ita', scoreA: 5, scoreB: 1],
				[teamA: 'Ale', teamB: 'Arg', scoreA: 6, scoreB: 6],
				[teamA: 'Bra', teamB: 'Ale', scoreA: 0, scoreB: 1],
				[teamA: 'Bra', teamB: 'Ita', scoreA: 1, scoreB: 2],
				[teamA: 'Ita', teamB: 'Ale', scoreA: 2, scoreB: 3]
			]

		when: "calculate the league stats"
			def result = service.calculateStats(matches)

		then: "the result should be sorted by points and goalDifference in that order"
			result[0].team == 'Arg'
			result[1].team == 'Ale'
			result[2].team == 'Ita'
			result[3].team == 'Bra'		
		
	}

	void "Test sort of league stats by points, goalDifference and goalsFor"() {
		given: "Certain matches"
			def matches = [
				[teamA: 'Arg', teamB: 'Bra', scoreA: 1, scoreB: 1],
				[teamA: 'Arg', teamB: 'Ita', scoreA: 4, scoreB: 4],
				[teamA: 'Ale', teamB: 'Arg', scoreA: 6, scoreB: 6],
				[teamA: 'Bra', teamB: 'Ale', scoreA: 0, scoreB: 0],
				[teamA: 'Bra', teamB: 'Ita', scoreA: 1, scoreB: 1],
				[teamA: 'Ita', teamB: 'Ale', scoreA: 2, scoreB: 3]
			]

		when: "calculate the league stats"
			def result = service.calculateStats(matches)

		then: "the result should be sorted by points, goalDifference and goalsFor in that order"
			result[0].team == 'Ale'
			result[1].team == 'Arg'
			result[2].team == 'Bra'
			result[3].team == 'Ita'			
	}
}
