package info.livefans.match

import info.livefans.*

/**
 * @author abertolo
 */
class MatchSubstitution {
	
	Match match
	Team team
	Player playerIn
	Player playerOut
	Integer time

	static mapping = {
		playerIn  fetch:'join'
		playerOut  fetch:'join'
	}
}
