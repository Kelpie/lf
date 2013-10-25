package info.livefans.match

import info.livefans.*

/**
 * @author abertolo
 */
class MatchBench {
	
	Match match
	Team team
	Player player

	static mapping = {
		player  fetch:'join'
		team  	fetch:'join'
	}
}