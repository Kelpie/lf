 package info.livefans.exception.httpstatus
 /**
 * @author abertolo
 */
class NotFoundException extends Exception {

	def NotFoundException(message) {
        super(message)
    }

    def NotFoundException(Throwable t) {
        super(t)
    }

    def NotFoundException(message, Throwable t) {
        super(message, t)
    }
}