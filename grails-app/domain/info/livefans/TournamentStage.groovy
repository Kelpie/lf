package info.livefans

/**
 * @author abertolo
 */
class TournamentStage {

	Tournament tournament
	String name
	Date date_from
	Date date_to
	
    static constraints = {
    }
	static mapping = {
		tournament  fetch:'join'
	}
}
