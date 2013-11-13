package info.livefans.match

import info.livefans.*

/**
 * @author abertolo
 */
class MatchFormation {

	Match match
	Player player
	Team team
	MatchPlayerPosition position

    static constraints = {
	}

    static mapping = {
    	match index:'Formation_Match_Idx'
		player fetch:'join'
		team  fetch:'join'
    }
}
