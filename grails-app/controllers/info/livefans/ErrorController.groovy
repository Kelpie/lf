package info.livefans

import static org.springframework.http.HttpStatus.*

/**
 * @author abertolo
 */
class ErrorController {

    def badRequest() { 
    	println "ErrorController: badRequest"
		render status: BAD_REQUEST
	}

	def notFound(){
		println "ErrorController: notFound"
		render status: NOT_FOUND
	}

	def forbidden(){
		println "ErrorController: forbidden"
		render status: FORBIDDEN 
	}

	def internalError(){
		println "ErrorController: internalError"
		render status: INTERNAL_SERVER_ERROR 
	}
	
}
