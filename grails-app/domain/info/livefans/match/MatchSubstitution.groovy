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
		match index:'Substitution_Match_Idx'
		playerIn  fetch:'join'
		playerOut  fetch:'join'
	}
}
