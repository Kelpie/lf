package info.livefans.admin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import info.livefans.*

@Transactional(readOnly = true)
class AdminRefereeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Referee.list(params), model:[refereeInstanceCount: Referee.count()]
    }

    def show(Referee refereeInstance) {
        respond refereeInstance
    }

    def create() {
        respond new Referee(params)
    }

    @Transactional
    def save(Referee refereeInstance) {
        if (refereeInstance == null) {
            notFound()
            return
        }

        if (refereeInstance.hasErrors()) {
            respond refereeInstance.errors, view:'create'
            return
        }

        refereeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'refereeInstance.label', default: 'Referee'), refereeInstance.id])
                redirect (uri:"/admin/referee/show/${refereeInstance.id}")
            }
            '*' { respond refereeInstance, [status: CREATED] }
        }
    }

    def edit(Referee refereeInstance) {
        respond refereeInstance
    }

    @Transactional
    def update(Referee refereeInstance) {
        if (refereeInstance == null) {
            notFound()
            return
        }

        if (refereeInstance.hasErrors()) {
            respond refereeInstance.errors, view:'edit'
            return
        }

        refereeInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Referee.label', default: 'Referee'), refereeInstance.id])
                redirect (uri:"/admin/referee/show/${refereeInstance.id}")
            }
            '*'{ respond refereeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Referee refereeInstance) {

        if (refereeInstance == null) {
            notFound()
            return
        }

        refereeInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Referee.label', default: 'Referee'), refereeInstance.id])
                redirect (uri:"/admin/referee/index")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'refereeInstance.label', default: 'Referee'), params.id])
                redirect (uri:"/admin/referee/index")
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
