package info.livefans

/**
 * @author abertolo
 */
class Player {

	String name
	String lastname
	Date birthdate
	BigDecimal heigh
	String birthplace
	String photo

	static constraints = {
		photo nullable: true
	}

	static mapping = {
	}
}
