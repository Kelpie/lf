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
			service.teamMatchStats(	'Argentina', scoreA, scoreB) == [	
				'team':'Argentina',
				'won': won,
				'draw': draw,
				'lost': lost,
				'goalsFor': goalsFor,
				'goalsAgainst': goalsAgainst,
				'goalDifference': goalDifference,
				'points': points
			]



		where:
			scoreA	|	scoreB	|	won	|	draw	|	lost|	goalsFor|	goalsAgainst|	goalDifference	|	points
			1		|	2		|	0	|	0		|	1 	|	1 		|		2		|			-1 		|	0
			5		|	5		|	0	|	1 		|	0	|	5		|		5		|			0		|	1
			3		|	1 		|	1 	|	0		|	0	|	3		|		1 		|			2		|	3
	}

	void "Test league stats calculation"() {
		given: "an empty bank account"
		// ...

		when: "the account is credited 10"
		// ...

		then: "the account's balance is 10"
		// ...
	}

	void "Test sort of league stats"() {
		given: "an empty bank account"
		// ...

		when: "the account is credited 10"
		// ...

		then: "the account's balance is 10"
		// ...
	}

}
