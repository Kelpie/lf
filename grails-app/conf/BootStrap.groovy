import grails.util.Environment
import info.livefans.*
import info.livefans.match.*
import info.livefans.tournament.*

class BootStrap {

    def init = { servletContext ->

    	if(Environment.PRODUCTION != Environment.current) {
    		
    		def superuser = new User(username: 'root', password: '12345').save()
    		def roles = [
    						new Role(authority: 'ROLE_ADMIN').save(),
    						new Role(authority: 'ROLE_MATCH_JOURNALIST').save(),
    						new Role(authority: 'ROLE_TOURNAMENT_MANAGER').save(),
    						new Role(authority: 'ROLE_TEAM_PLAYER_MANAGER').save(),
    						new Role(authority: 'ROLE_USER_ADMIN').save(),
    						new Role(authority: 'ROLE_USER').save()
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
                dateFrom: new Date() + 7,
                dateTo:   new Date() + 8
            ).save()  

            def semifinals = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.semifinals',
                rank: 2,
                next: finals,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date() -2,
                dateTo:   new Date() + 2
            ).save()

            def knockout = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.knockout',
                rank: 3,
                next: semifinals,                
                type: TournamentStageType.KNOCKOUT,
                dateFrom: new Date() + -3,
                dateTo:   new Date() + 8
            ).save()

            def groupA = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.group.a',
                rank: 4,
                next: knockout,                
                type: TournamentStageType.LEAGUE,
                dateFrom: new Date() - 15,
                dateTo:   new Date() - 4
            ).save()

            def groupB = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.group.b',
                rank: 4,
                next: knockout,
                type: TournamentStageType.LEAGUE,
                dateFrom: new Date() - 14,
                dateTo:   new Date() - 3
            ).save()

            def groups = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.group',
                rank: 5,
                next: knockout,                
                type: TournamentStageType.GROUP,
                dateFrom: new Date() - 15,
                dateTo:   new Date() - 3
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
                scoreA: 2,
                scoreB: 0,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 14
            ).save()

            def ga2match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: arg,
                teamB: usa,
                scoreA: 4,
                scoreB: 2,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 12
            ).save()   

            def ga3match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: arg,
                teamB: italy,
                scoreA: 1,
                scoreB: 1,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() -10
            ).save()

            def ga4match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: netherlands,
                teamB: usa,
                scoreA: 2,
                scoreB: 3,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 8
            ).save()

            def ga5match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: netherlands,
                teamB: italy,
                scoreA: 1,
                scoreB: 2,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 6
            ).save()

            def ga6match = new Match(
                tournament: brazil2014,
                stage: groupA,
                teamA: usa,
                teamB: italy,
                scoreA: 1,
                scoreB: 3,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 5
            ).save()

            //...
            def gb1match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: australia,
                teamB: france,
                scoreA: 0,
                scoreB: 0,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 13
            ).save()

            def gb2match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: australia,
                teamB: england,
                scoreA: 1,
                scoreB: 1,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 12
            ).save()   

            def gb3match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: australia,
                teamB: colombia,
                scoreA: 2,
                scoreB: 1,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 11
            ).save()

            def gb4match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: france,
                teamB: england,
                scoreA: 0,
                scoreB: 2,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 9
            ).save()

            def gb5match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: france,
                teamB: colombia,
                scoreA: 4,
                scoreB: 2,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 7
            ).save()

            def gb6match = new Match(
                tournament: brazil2014,
                stage: groupB,
                teamA: england,
                teamB: colombia,
                scoreA: 2,
                scoreB: 1,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 5
            ).save()

            def sf1 = new Match(
                tournament: brazil2014,
                stage: semifinals,
                teamA: arg,
                teamB: australia,
                scoreA: 6,
                scoreB: 1,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() -1
            ).save()

            def sf2 = new Match(
                tournament: brazil2014,
                stage: semifinals,
                teamA: england,
                teamB: italy,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() + 1
            ).save()   

            def f = new Match(
                tournament: brazil2014,
                stage: finals,
                teamA: null,
                teamB: null,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() + 7
            ).save()
            def third = new Match(
                tournament: brazil2014,
                stage: finals,
                teamA: null,
                teamB: null,
                scoreA: null,
                scoreB: null,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() + 7
            ).save()         
            
            new MatchPreCondition(
                match: sf1,
                teamAFromStage: groupA,
                teamAfromStagePosition: 1,
                teamBFromStage: groupB,
                teamBfromStagePosition: 2
            ).save()
            new MatchPreCondition(
                match: sf2,
                teamAFromStage: groupB,
                teamAfromStagePosition: 1,
                teamBFromStage: groupA,
                teamBfromStagePosition: 2
            ).save()            

            new MatchPreCondition(
                match: f,
                teamAFromMatch: sf1,
                teamAFromMatchWinner: true,
                teamBFromMatch: sf2,
                teamBFromMatchWinner: true
            ).save()
            new MatchPreCondition(
                match: third,
                teamAFromMatch: sf1,
                teamAFromMatchWinner: false,
                teamBFromMatch: sf2,
                teamBFromMatchWinner: false
            ).save()            
            
    	}
    }

    def destroy = {
    }
}
