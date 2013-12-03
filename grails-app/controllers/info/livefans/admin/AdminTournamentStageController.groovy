package info.livefans.admin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import info.livefans.*
import info.livefans.admin.*
import info.livefans.tournament.*


@Transactional(readOnly = true)
class AdminTournamentStageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TournamentStage.list(params), model:[tournamentStageInstanceCount: TournamentStage.count()]
    }

    def show(TournamentStage tournamentStageInstance) {
        respond tournamentStageInstance
    }

    def create() {
        respond new TournamentStage(params)
    }

    @Transactional
    def save(TournamentStage tournamentStageInstance) {
        if (tournamentStageInstance == null) {
            notFound()
            return
        }
        println params
        if (tournamentStageInstance.hasErrors()) {
            respond tournamentStageInstance.errors, view:'create'
            return
        }

        tournamentStageInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tournamentStageInstance.label', default: 'TournamentStage'), tournamentStageInstance.id])
                redirect (uri:"/admin/tournamentStage/show/${tournamentStageInstance.id}")
            }
            '*' { respond tournamentStageInstance, [status: CREATED] }
        }
    }

    def edit(TournamentStage tournamentStageInstance) {
        respond tournamentStageInstance
    }

    @Transactional
    def update(TournamentStage tournamentStageInstance) {
        if (tournamentStageInstance == null) {
            notFound()
            return
        }

        if (tournamentStageInstance.hasErrors()) {
            respond tournamentStageInstance.errors, view:'edit'
            return
        }

        tournamentStageInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TournamentStage.label', default: 'TournamentStage'), tournamentStageInstance.id])
                redirect (uri:"/admin/tournamentStage/show/${tournamentStageInstance.id}")
            }
            '*'{ respond tournamentStageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TournamentStage tournamentStageInstance) {

        if (tournamentStageInstance == null) {
            notFound()
            return
        }

        tournamentStageInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TournamentStage.label', default: 'TournamentStage'), tournamentStageInstance.id])
                redirect (uri:"/admin/tournamentStage/index")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tournamentStageInstance.label', default: 'TournamentStage'), params.id])
                redirect (uri:"/admin/tournamentStage/index")
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}