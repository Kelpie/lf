 package info.livefans.exception.httpstatus
 /**
 * @author abertolo
 */
class ForbiddenException extends Exception {

	def ForbiddenException(message) {
        super(message)
    }

    def ForbiddenException(Throwable t) {
        super(t)
    }

    def ForbiddenException(message, Throwable t) {
        super(message, t)
    }
}