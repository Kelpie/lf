package info.livefans.match

import info.livefans.*

/**
 * @author abertolo
 */
class MatchCard {
	
	Match match
	Player player
	MatchCardType type
	Integer time

	static mapping = {
		player  fetch:'join'
	}
}
