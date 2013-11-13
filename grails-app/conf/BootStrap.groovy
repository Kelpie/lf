import grails.util.Environment
import info.livefans.*
import info.livefans.tournament.*

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

            //TODO: PLAYERS
            //TODO: TEAMS
            //TODO: STADIUMS
            //TODO: REFEREES

            def brazil2014 = new Tournament( 
                name:'2014 FIFA World Cup', 
                logo:'asd',
                poster:'asd',
                slogan:'All in One Rhythm',
                place: 'Brazil'
            ).save()

            def finals = new TournamentStage(
                tournament: brazil2014,
                name: 'Finals',
                rank: 1,
                next: null,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "12/07/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "13/07/2010 00:00:00")
            ).save()  

            def semifinals = new TournamentStage(
                tournament: brazil2014,
                name: 'Semi-finals',
                rank: 2,
                next: finals,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "08/07/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "13/07/2010 00:00:00")
            ).save()

            def knockout = new TournamentStage(
                tournament: brazil2014,
                name: 'Knockout Stage',
                rank: 3,
                next: semifinals,                
                type: TournamentStageType.KNOCKOUT,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "08/07/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "13/07/2010 00:00:00")
            ).save()

            def groupA = new TournamentStage(
                tournament: brazil2014,
                name: 'Group "A"',
                rank: 4,
                next: knockout,                
                type: TournamentStageType.LEAGUE,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "12/06/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "23/06/2010 00:00:00")
            ).save()

            def groupB = new TournamentStage(
                tournament: brazil2014,
                name: 'Group "B"',
                rank: 4,
                next: knockout,
                type: TournamentStageType.LEAGUE,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "13/06/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "23/06/2010 00:00:00")
            ).save()

            def groups = new TournamentStage(
                tournament: brazil2014,
                name: 'Group Stage',
                rank: 5,
                next: knockout,                
                type: TournamentStageType.GROUP,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "12/06/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "26/06/2010 00:00:00")
            ).save()

            //TODO: TOURNAMENT_TEAMS
            //TODO: TOURNAMENT_STADIUMS

            //TODO: MATCHES                        

    	}
    }

    def destroy = {
    }
}
