 package info.livefans.exception.httpstatus
 /**
 * @author abertolo
 */
class BadRequestException extends Exception {

	def BadRequestException(message) {
        super(message)
    }

    def BadRequestException(Throwable t) {
        super(t)
    }

    def BadRequestException(message, Throwable t) {
        super(message, t)
    }
}