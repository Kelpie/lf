package info.livefans.admin



import grails.test.mixin.*
import spock.lang.*
import info.livefans.tournament.*
import info.livefans.*

@TestFor(AdminTournamentStageController)
@Mock([Tournament,TournamentStage])
class AdminTournamentStageControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        def brazil2014 = new Tournament( 
            name:'tournament.fifa.world.cup.2014', 
            logo:'tournament/WC2014.logo.png',
            poster:'asd',
            slogan:'tournament.fifa.world.cup.2014.slogan',
            place: 'place.brazil'
        ).save()

    params.tournament = brazil2014
    params.name = 'FINAL'
    params.rank = '2'
    params.dateFrom = new Date().parse("d/M/yyyy H:m:s", "02/11/2013 12:00:00")
    params.dateTo = new Date().parse("d/M/yyyy H:m:s", "02/11/2013 14:00:00")
    params.type = 'KNOCKOUT'
    params.next = null
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.tournamentStageInstanceList
            model.tournamentStageInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.tournamentStageInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def tournamentStage = new TournamentStage()
            tournamentStage.validate()
            controller.save(tournamentStage)

        then:"The create view is rendered again with the correct model"
            model.tournamentStageInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            tournamentStage = new TournamentStage(params)

            controller.save(tournamentStage)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/admin/tournamentStage/show/1'
            controller.flash.message != null
            TournamentStage.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def tournamentStage = new TournamentStage(params)
            controller.show(tournamentStage)

        then:"A model is populated containing the domain instance"
            model.tournamentStageInstance == tournamentStage
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def tournamentStage = new TournamentStage(params)
            controller.edit(tournamentStage)

        then:"A model is populated containing the domain instance"
            model.tournamentStageInstance == tournamentStage
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/admin/tournamentStage/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def tournamentStage = new TournamentStage()
            tournamentStage.validate()
            controller.update(tournamentStage)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.tournamentStageInstance == tournamentStage

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            tournamentStage = new TournamentStage(params).save(flush: true)
            controller.update(tournamentStage)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/admin/tournamentStage/show/$tournamentStage.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/admin/tournamentStage/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def tournamentStage = new TournamentStage(params).save(flush: true)

        then:"It exists"
            TournamentStage.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(tournamentStage)

        then:"The instance is deleted"
            TournamentStage.count() == 0
            response.redirectedUrl == '/admin/tournamentStage/index'
            flash.message != null
    }
}
