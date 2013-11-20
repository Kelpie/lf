package info.livefans.admin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import info.livefans.*

@Transactional(readOnly = true)
class AdminStadiumController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Stadium.list(params), model:[stadiumInstanceCount: Stadium.count()]
    }

    def show(Stadium stadiumInstance) {
        respond stadiumInstance
    }

    def create() {
        respond new Stadium(params)
    }

    @Transactional
    def save(Stadium stadiumInstance) {
        if (stadiumInstance == null) {
            notFound()
            return
        }

        if (stadiumInstance.hasErrors()) {
            respond stadiumInstance.errors, view:'create'
            return
        }

        stadiumInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stadiumInstance.label', default: 'Stadium'), stadiumInstance.id])
                redirect (uri:"/admin/stadium/show/${stadiumInstance.id}")
            }
            '*' { respond stadiumInstance, [status: CREATED] }
        }
    }

    def edit(Stadium stadiumInstance) {
        respond stadiumInstance
    }

    @Transactional
    def update(Stadium stadiumInstance) {
        if (stadiumInstance == null) {
            notFound()
            return
        }

        if (stadiumInstance.hasErrors()) {
            respond stadiumInstance.errors, view:'edit'
            return
        }

        stadiumInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Stadium.label', default: 'Stadium'), stadiumInstance.id])
                redirect (uri:"/admin/stadium/show/${stadiumInstance.id}")
            }
            '*'{ respond stadiumInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Stadium stadiumInstance) {

        if (stadiumInstance == null) {
            notFound()
            return
        }

        stadiumInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Stadium.label', default: 'Stadium'), stadiumInstance.id])
                redirect (uri:"/admin/stadium/index")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stadiumInstance.label', default: 'Stadium'), params.id])
                redirect (uri:"/admin/stadium/index")
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
