package info.livefans.admin

import grails.plugin.springsecurity.annotation.Secured

class AdminController {

	
	@Secured(['ROLE_ADMIN'])
    def index() { }
    
}
