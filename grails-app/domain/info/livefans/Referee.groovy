package info.livefans

import java.util.Date;

/**
 * @author abertolo
 */
class Referee {

	String name
	String lastname
	Date birthdate
	String birthplace

	String photo

	
	static constraints = {
		photo nullable: true
	}
	static mapping = {
	}
}
