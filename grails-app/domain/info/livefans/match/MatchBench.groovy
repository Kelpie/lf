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
		match index:'Bench_Match_Idx'
		player  fetch:'join'
		team  	fetch:'join'
	}
}