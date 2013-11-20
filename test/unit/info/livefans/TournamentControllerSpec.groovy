package info.livefans

import grails.test.mixin.TestFor
import spock.lang.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(TournamentController)
@Mock(Tournament)
class TournamentControllerSpec extends Specification {


    void "Tournament home"() {
        given:
            def brazil2014 = new Tournament( 
                name:'tournament.fifa.world.cup.2014', 
                logo:'tournament/WC2014.logo.png',
                poster:'asd',
                slogan:'tournament.fifa.world.cup.2014.slogan',
                place: 'place.brazil'
            ).save()

        when: "The index action is executed"
    	   controller.index()

        then: "It should redirect to show the wold cup 2014"
            response.redirectedUrl.contains("/tournament/${brazil2014.id}")
    }

    void "show a tournament"(){
        given:
            def brazil2014 = new Tournament( 
                name:'tournament.fifa.world.cup.2014', 
                logo:'tournament/WC2014.logo.png',
                poster:'asd',
                slogan:'tournament.fifa.world.cup.2014.slogan',
                place: 'place.brazil'
            ).save()

        when: "The show action is executed"
            def model = controller.show(brazil2014.id)

        then: "It should search for tournament teams, stadiums, stages and matches"
            response.status == 200
            model.tournament == brazil2014


        when: "The show action is executed with non-existent id"
            controller.show(3)

        then: "It should return not found"
            thrown(info.livefans.exception.httpstatus.NotFoundException)         
    }

}
