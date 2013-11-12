import grails.util.Environment
import info.livefans.*

class BootStrap {

    def init = { servletContext ->

    	if(Environment.PRODUCTION != Environment.current) {
    		
    		def superuser = new User(username: 'root', password: '12345').save()
    		def roles = [
    						new Role(authority: 'ADMIN').save(),
    						new Role(authority: 'MATCH_JOURNALIST').save(),
    						new Role(authority: 'TOURNAMENT_MANAGER').save(),
    						new Role(authority: 'TEAM_PLAYER_MANAGER').save(),
    						new Role(authority: 'USER_ADMIN').save(),
    						new Role(authority: 'USER').save()
    					]
    		roles.each{
    			if (superuser && it){
    				new UserRole(user: superuser, role: it).save()
    			}
    		}

            def brazil2014 = new Tournament( 
                name:'2014 FIFA World Cup', 
                logo:'asd',
                poster:'asd',
                slogan:'All in One Rhythm',
                place: 'Brazil'
            ).save() 

    	}
    }
    def destroy = {
    }
}
