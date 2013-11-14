package info.livefans

/**
 * @author abertolo
 */
class Team {

	String name
	String logo
	Player coach
	
    static constraints = {
    }
	static mapping = {
		coach  fetch:'join'
	}
}
