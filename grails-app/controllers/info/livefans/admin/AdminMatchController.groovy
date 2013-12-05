package info.livefans.admin



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import info.livefans.tournament.*
import info.livefans.*


@Transactional(readOnly = true)
class AdminMatchController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Match.list(params), model:[matchInstanceCount: Match.count()]
    }

    def show(Match matchInstance) {
        respond matchInstance
    }

    def create() {
        respond new Match(params)
    }

    @Transactional
    def save(Match matchInstance) {
        if (matchInstance == null) {
            notFound()
            return
        }
        if (matchInstance.hasErrors()) {
            respond matchInstance.errors, view:'create'
            return
        }

        matchInstance.save flush:true

        def tournamentStadiumInstance = TournamentStadium.findByTournamentAndStadium(matchInstance.tournament, matchInstance.stadium)
        if (tournamentStadiumInstance == null) {
            new TournamentStadium(tournament: matchInstance.tournament, stadium: matchInstance.stadium).save()    
        }
        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'matchInstance.label', default: 'Match'), matchInstance.id])
                redirect (uri:"/admin/match/show/${matchInstance.id}")
            }
            '*' { respond matchInstance, [status: CREATED] }
        }
    }

    def edit(Match matchInstance) {
        respond matchInstance
    }

    @Transactional
    def update(Match matchInstance) {
        if (matchInstance == null) {
            notFound()
            return
        }
        if (matchInstance.hasErrors()) {
            respond matchInstance.errors, view:'edit'
            return
        }
        matchInstance.save flush:true
        
        def matchOldStadium = (params['old.stadium.id'])?Stadium.get(params.old.stadium.id):null
        
        if(matchOldStadium != null && matchInstance.stadium.id != matchOldStadium.id){
            def tournamentStadiumInstance = TournamentStadium.findByTournamentAndStadium(matchInstance.tournament, matchInstance.stadium)
            if (tournamentStadiumInstance == null) {
                new TournamentStadium(tournament: matchInstance.tournament, stadium: matchInstance.stadium).save()
            }

            def mos = Match.findByTournamentAndStadium(matchInstance.tournament, matchOldStadium)
            if (mos == null) {
                TournamentStadium.findByTournamentAndStadium(matchInstance.tournament, matchOldStadium).delete()    
            }      
        }
        
        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Match.label', default: 'Match'), matchInstance.id])
                redirect (uri:"/admin/match/show/${matchInstance.id}")
            }
            '*'{ respond matchInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Match matchInstance) {

        if (matchInstance == null) {
            notFound()
            return
        }
        matchInstance.delete flush:true
              
        def tournamentStadiumInstance = TournamentStadium.findByTournamentAndStadium(matchInstance.tournament, matchInstance.stadium)
        
        if (tournamentStadiumInstance != null) {
            def existTheSameMatch = Match.findByTournamentAndStadium(tournamentStadiumInstance.tournament, tournamentStadiumInstance.stadium)
            if (existTheSameMatch == null) {
               tournamentStadiumInstance.delete()    
            }
        }
         
        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Match.label', default: 'Match'), matchInstance.id])
                redirect (uri:"/admin/match/index")
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'matchInstance.label', default: 'Match'), params.id])
                redirect (uri:"/admin/match/index")
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
