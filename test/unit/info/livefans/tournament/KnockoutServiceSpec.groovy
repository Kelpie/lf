package info.livefans.tournament

import grails.test.mixin.TestFor
import spock.lang.Specification
import info.livefans.match.*
import info.livefans.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(KnockoutService)
@Mock([Match,Referee,Stadium,Tournament,TournamentStage,Team,MatchPreCondition,Player])
class KnockoutServiceSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "Get knockout matches should be returned ordered"() {
		given: "Certain matches"
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
            def quarterfinal = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.quarterfinals',
                rank: 3,
                next: semifinals,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date() -5,
                dateTo:   new Date() - 8
            ).save()
            def knockout = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.knockout',
                rank: 4,
                next: quarterfinal,                
                type: TournamentStageType.KNOCKOUT,
                dateFrom: new Date() - 8,
                dateTo:   new Date() + 8
            ).save()

            def qf1 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: arg,
                teamB: australia,
                scoreA: 2,
                scoreB: 0,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 8
            ).save()
            def qf2 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: england,
                teamB: italy,
                scoreA: 1,
                scoreB: 2,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 7
            ).save()
            def qf3 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: usa,
                teamB: colombia,
                scoreA: 2,
                scoreB: 3,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 6
            ).save()
            def qf4 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: netherlands,
                teamB: france,
                scoreA: 4,
                scoreB: 0,
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

            def sf2 = new Match(
                tournament: brazil2014,
                stage: semifinals,
                teamA: netherlands,
                teamB: colombia,
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
                teamAFromMatch: qf1,
                teamAFromMatchWinner: true,
                teamBFromMatch: qf2,
                teamBFromMatchWinner: true
            ).save()
            new MatchPreCondition(
                match: sf2,
                teamAFromMatch: qf3,
                teamAFromMatchWinner: true,
                teamBFromMatch: qf4,
                teamBFromMatchWinner: true
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

		when: "knockout brackets are asked"
            def result = service.calculateBrackets(knockout)

		then: "the result should be a list of list, each level will be the round matches ordered"
            result.size() == 3 //cuartos, semis y final
            result[0].size() == 4 //4 partidos
            result[0][0]['match'].id == qf1.id
            result[0][1]['match'].id == qf2.id
            result[0][2]['match'].id == qf3.id
            result[0][3]['match'].id == qf4.id
            result[1].size() == 2 //2 partidos de semis
            result[1][0]['match'].id == sf1.id
            result[1][1]['match'].id == sf2.id
            result[2].size() == 2 //final y 3er puesto
            result[2][0]['match'].id == f.id
            result[2][1]['match'].id == third.id
    }	

    void "Brackets should be show from the first round always"() {
		given: "Certain matches"
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
            def quarterfinal = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.quarterfinals',
                rank: 3,
                next: semifinals,                
                type: TournamentStageType.SINGLE_MATCH,
                dateFrom: new Date() -5,
                dateTo:   new Date() - 8
            ).save()
            def knockout = new TournamentStage(
                tournament: brazil2014,
                name: 'tournament.stage.knockout',
                rank: 4,
                next: quarterfinal,                
                type: TournamentStageType.KNOCKOUT,
                dateFrom: new Date() - 8,
                dateTo:   new Date() + 8
            ).save()

            def qf1 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: arg,
                teamB: australia,
                scoreA: 2,
                scoreB: 0,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 8
            ).save()
            def qf2 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: england,
                teamB: italy,
                scoreA: 1,
                scoreB: 2,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 7
            ).save()
            def qf3 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: usa,
                teamB: colombia,
                scoreA: 2,
                scoreB: 3,
                stadium: maracana,
                referee1: ref,
                referee2: ref,
                referee3: ref,
                referee4: ref,
                date: new Date() - 6
            ).save()
            def qf4 = new Match(
                tournament: brazil2014,
                stage: quarterfinal,
                teamA: netherlands,
                teamB: france,
                scoreA: 4,
                scoreB: 0,
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

            def sf2 = new Match(
                tournament: brazil2014,
                stage: semifinals,
                teamA: netherlands,
                teamB: colombia,
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
                teamAFromMatch: qf1,
                teamAFromMatchWinner: true,
                teamBFromMatch: qf2,
                teamBFromMatchWinner: true
            ).save()
            new MatchPreCondition(
                match: sf2,
                teamAFromMatch: qf3,
                teamAFromMatchWinner: true,
                teamBFromMatch: qf4,
                teamBFromMatchWinner: true
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
		when: "knockout brackets are asked"
            def result = service.calculateBrackets(finals)

		then: "redirect to the main knockout stage"
            result.size() > 1 //no solo la final

		when: "knockout one stage is asked"
            result = service.calculateBrackets(semifinals)

		then: "should return a selected flag"
            result[1].size() == 2 //2 partidos de semis
            result[1][0].selected == true
            result[1][1].selected == true
    }    
}
