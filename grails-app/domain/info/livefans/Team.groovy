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
<<<<<<< HEAD
		coach  fetch:'join'
=======
		coachId  fetch:'join'
>>>>>>> c65642dc0630adb4ccaba8da0d4b3be26b252352
	}
}
