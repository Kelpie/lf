package info.livefans.admin



import grails.test.mixin.*
import spock.lang.*
import info.livefans.*

@TestFor(AdminRefereeController)
@Mock(Referee)
class AdminRefereeControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        params['name'] = 'William Selorm'
        params['lastname'] = 'Agbovi'
        params['birthdate'] = new Date().parse("d/M/yyyy H:m:s", "01/01/1972 00:00:00")
        params['birthplace'] = 'place.ghana'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.refereeInstanceList
            model.refereeInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.refereeInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def referee = new Referee()
            referee.validate()
            controller.save(referee)

        then:"The create view is rendered again with the correct model"
            model.refereeInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            referee = new Referee(params)

            controller.save(referee)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/admin/referee/show/1'
            controller.flash.message != null
            Referee.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def referee = new Referee(params)
            controller.show(referee)

        then:"A model is populated containing the domain instance"
            model.refereeInstance == referee
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def referee = new Referee(params)
            controller.edit(referee)

        then:"A model is populated containing the domain instance"
            model.refereeInstance == referee
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/admin/referee/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def referee = new Referee()
            referee.validate()
            controller.update(referee)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.refereeInstance == referee

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            referee = new Referee(params).save(flush: true)
            controller.update(referee)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/admin/referee/show/$referee.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/admin/referee/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def referee = new Referee(params).save(flush: true)

        then:"It exists"
            Referee.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(referee)

        then:"The instance is deleted"
            Referee.count() == 0
            response.redirectedUrl == '/admin/referee/index'
            flash.message != null
    }
}
