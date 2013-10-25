package info.livefans.match

import info.livefans.*

/**
 * @author abertolo
 */
class MatchGoal {
	
	Match match
	Team team
	Player player
	Integer time

	static mapping = {
		player  fetch:'join'
	}
}
