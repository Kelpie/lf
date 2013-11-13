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
		match index:'Card_Match_Idx'
		player  fetch:'join'
	}
}
