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
		player  fetch:'join'
		team  fetch:'join'
    }
}
