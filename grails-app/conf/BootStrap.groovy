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

            def messi = new Player( 
                name: 'Lionel',
                lastname: 'Messi',
                birthdate: new Date().parse("d/M/yyyy H:m:s", "24/06/1987 00:00:00"),
                heigh: 1.69,
                birthplace: 'Rosario, Santa Fe, Argentina'
            ).save()

            def dt = new Player( 
                name: 'I am',
                lastname: 'Couch',
                birthdate: new Date().parse("d/M/yyyy H:m:s", "24/06/1987 00:00:00"),
                heigh: 1.69,
                birthplace: 'Capital Federal, Buenos Aires, Argentina'
            ).save()          

            def arg = new Team( 
                name: 'team.argentina',
                logo: 'country/argentina.png',
                coach : dt,
            ).save()

            def netherlands = new Team( 
                name: 'team.netherlands',
                logo: 'country/netherlands.png',
                coach : dt,
            ).save()

            def usa = new Team( 
                name: 'team.usa',
                logo: 'country/usa.png',
                coach : dt,
            ).save()

            def italy = new Team( 
                name: 'team.italy',
                logo: 'country/italy.png',
                coach : dt,
            ).save()

            def australia = new Team( 
                name: 'team.australia',
                logo: 'country/australia.png',
                coach : dt,
            ).save()

            def france = new Team( 
                name: 'team.france',
                logo: 'country/france.png',
                coach : dt,
            ).save()

            def england = new Team( 
                name: 'team.england',
                logo: 'country/england.png',
                coach : dt,
            ).save()

            def colombia = new Team( 
                name: 'team.colombia',
                logo: 'country/colombia.png',
                coach : dt,
            ).save()

            def maracana = new Stadium( 
                name: 'place.maracana.stadium',
                location: 'place.rio.de.janeiro',
                latitude: -22.912167,
                longitude: -43.230164,
                photo: 'stadium/maracana.jpeg'
            ).save()
         
            def ref = new Referee( 
                name:'William Selorm',
                lastname:'Agbovi',
                birthdate: new Date().parse("d/M/yyyy H:m:s", "01/01/1972 00:00:00"),
                birthplace: 'place.ghana',
            ).save()

            def brazil2014 = new Tournament( 
                name:'tournament.fifa.world.cup.2014', 
                logo:'tournament/WC2014.logo.png',
                poster:'asd',
                slogan:'tournament.fifa.world.cup.2014.slogan',
                place: 'place.brazil'
            ).save()

            def finals = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.finals',
                rank: 1,
                next: null,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "12/07/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "13/07/2014 00:00:00")
            ).save()  

            def semifinals = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.semifinals',
                rank: 2,
                next: finals,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "08/07/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "13/07/2014 00:00:00")
            ).save()

            def knockout = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.knockout',
                rank: 3,
                next: semifinals,                
                type: TournamentStageType.KNOCKOUT,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "08/07/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "13/07/2014 00:00:00")
            ).save()

            def groupA = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.group.a',
                rank: 4,
                next: knockout,                
                type: TournamentStageType.LEAGUE,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "12/06/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "23/06/2014 00:00:00")
            ).save()

            def groupB = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.group.b',
                rank: 4,
                next: knockout,
                type: TournamentStageType.LEAGUE,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "13/06/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "23/06/2014 00:00:00")
            ).save()

            def groups = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.group',
                rank: 5,
                next: knockout,                
                type: TournamentStageType.GROUP,
                dateFrom: new Date().parse("d/M/yyyy H:m:s", "12/06/2014 00:00:00"),
                dateTo:   new Date().parse("d/M/yyyy H:m:s", "26/06/2014 00:00:00")
            ).save()

            new TournamentStageTeam(stage: groupA, team: arg).save()
            new TournamentStageTeam(stage: groupA, team: netherlands).save()
            new TournamentStageTeam(stage: groupA, team: usa).save()
            new TournamentStageTeam(stage: groupA, team: italy).save()

            new TournamentStageTeam(stage: groupB, team: australia).save()
            new TournamentStageTeam(stage: groupB, team: france).save()
            new TournamentStageTeam(stage: groupB, team: england).save()
            new TournamentStageTeam(stage: groupB, team: colombia).save()

            new TournamentStageTeam(stage: groups, team: arg).save()
            new TournamentStageTeam(stage: groups, team: netherlands).save()
            new TournamentStageTeam(stage: groups, team: usa).save()
            new TournamentStageTeam(stage: groups, team: italy).save()
            new TournamentStageTeam(stage: groups, team: australia).save()
            new TournamentStageTeam(stage: groups, team: france).save()
            new TournamentStageTeam(stage: groups, team: england).save()
            new TournamentStageTeam(stage: groups, team: colombia).save()
            new TournamentStadium(tournament: brazil2014, stadium: maracana).save()

            def ga1match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: arg,
                teamB: netherlands,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "12/06/2014 00:00:00")
            ).save()

            def ga2match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: arg,
                teamB: usa,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "13/06/2014 00:00:00")
            ).save()   

            def ga3match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: arg,
                teamB: italy,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "14/06/2014 00:00:00")
            ).save()

            def ga4match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: netherlands,
                teamB: usa,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "15/06/2014 00:00:00")
            ).save()

            def ga5match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: netherlands,
                teamB: italy,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "16/06/2014 00:00:00")
            ).save()

            def ga6match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: usa,
                teamB: italy,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "17/06/2014 00:00:00")
            ).save()

            //...
            def gb1match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: australia,
                teamB: france,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "12/06/2014 00:00:00")
            ).save()

            def gb2match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: australia,
                teamB: england,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "13/06/2014 00:00:00")
            ).save()   

            def gb3match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: australia,
                teamB: colombia,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "14/06/2014 00:00:00")
            ).save()

            def gb4match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: france,
                teamB: england,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "15/06/2014 00:00:00")
            ).save()

            def gb5match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: france,
                teamB: colombia,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "16/06/2014 00:00:00")
            ).save()

            def gb6match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: england,
                teamB: colombia,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date().parse("d/M/yyyy H:m:s", "17/06/2014 00:00:00")
            ).save()            

    	}
    }

    def destroy = {
    }
}
