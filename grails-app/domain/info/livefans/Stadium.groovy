package info.livefans

/**
 * @author abertolo
 */
class Stadium {
	String name
	String location
	BigDecimal latitude
	BigDecimal longitude

    static constraints = {
		latitude( scale : 16 )
		longitude( scale : 16 )    	
    }

	static mapping = {
	}
}
