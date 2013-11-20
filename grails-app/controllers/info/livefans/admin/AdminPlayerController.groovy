package info.livefans.admin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import info.livefans.*

@Transactional(readOnly = true)
class AdminPlayerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Player.list(params), model:[playerInstanceCount: Player.count()]
    }

    def show(Player playerInstance) {
        respond playerInstance
    }

    def create() {
        respond new Player(params)
    }

    @Transactional
    def save(Player playerInstance) {
        if (playerInstance == null) {
            notFound()
            return
        }

        if (playerInstance.hasErrors()) {
            respond playerInstance.errors, view:'create'
            return
        }

        playerInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'playerInstance.label', default: 'Player'), playerInstance.id])
                redirect (uri:"/admin/player/show/${playerInstance.id}")
            }
            '*' { respond playerInstance, [status: CREATED] }
        }
    }

    def edit(Player playerInstance) {
        respond playerInstance
    }

    @Transactional
    def update(Player playerInstance) {
        if (playerInstance == null) {
            notFound()
            return
        }

        if (playerInstance.hasErrors()) {
            respond playerInstance.errors, view:'edit'
            return
        }

        playerInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Player.label', default: 'Player'), playerInstance.id])
                redirect (uri:"/admin/player/show/${playerInstance.id}")
            }
            '*'{ respond playerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Player playerInstance) {

        if (playerInstance == null) {
            notFound()
            return
        }

        playerInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Player.label', default: 'Player'), playerInstance.id])
                redirect (uri:"/admin/player/index")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerInstance.label', default: 'Player'), params.id])
                redirect (uri:"/admin/player/index")
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
