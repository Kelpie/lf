package info.livefans.user

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class MeController {

    def index() { }
    
}
