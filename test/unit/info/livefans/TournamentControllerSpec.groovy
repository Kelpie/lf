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
        when: "The index action is executed"
            def brazil2014 = new Tournament( 
                name:'2014 FIFA World Cup', 
                logo:'asd',
                poster:'asd',
                slogan:'All in One Rhythm',
                place: 'Brazil'
            ).save(flush: true)         
    	   controller.index()

        then: "It should redirect to show the wold cup 2014"
            response.redirectedUrl == "/tournament/show/${brazil2014.id}"
    }


}
