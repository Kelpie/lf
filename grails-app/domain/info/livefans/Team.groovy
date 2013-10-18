package info.livefans

/**
 * @author abertolo
 */
class Team {

	String name
	String logo
	Player coach_id
	
    static constraints = {
    }
	static mapping = {
		coach_id  fetch:'join'
	}
}
