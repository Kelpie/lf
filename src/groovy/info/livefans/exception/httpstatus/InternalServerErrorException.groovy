 package info.livefans.exception.httpstatus
 /**
 * @author abertolo
 */
class InternalServerErrorException extends Exception {

	def InternalServerErrorException(message) {
        super(message)
    }

    def InternalServerErrorException(Throwable t) {
        super(t)
    }

    def InternalServerErrorException(message, Throwable t) {
        super(message, t)
    }
}