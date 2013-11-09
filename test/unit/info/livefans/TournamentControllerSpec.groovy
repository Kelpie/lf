package info.livefans

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(TournamentController)
class TournamentControllerSpec extends Specification {

	/*
    def setup() {

    }

    def cleanup() {
    }
	*/

    void testIndex() {
    	controller.index()


    	assert response.redirectedUrl == '/tournament/show'
    }
}
