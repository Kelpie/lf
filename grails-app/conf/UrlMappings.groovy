import info.livefans.exception.httpstatus.*

class UrlMappings {

	static mappings = {

        "/tournament/$tournamentName/stage/$id/$name"{
            controller = "stage"
            action = "show"            
        }
        
        "/tournament/$id/$name" {
            controller = "tournament"
            action = "show"
        }


        /**
        * INTERNAL ADMIN
        **/
        "/admin/player/$action/$id?"(controller: "adminPlayer")
        "/admin/team/$action/$id?"(controller: "adminTeam")
        "/admin/stadium/$action/$id?"(controller: "adminStadium")
        "/admin/referee/$action/$id?"(controller: "adminReferee")
        "/admin/match/$action/$id?"(controller: "adminMatch")
        "/admin/tournamentStage/$action/$id?"(controller: "adminTournamentStage")
        "/admin/tournament/$action/$id?"(controller: "adminTournament")
        "/admin/$action"(controller: "admin")
        "/"(view:"/index")
        

        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }


        /**
        * ERROR HANDLING
        ***/
		"400"(view: "/badRequest")
		"403"(view: "/forbidden")
		"404"(view: "/notFound")
		"500"(controller: "error", action: "badRequest", exception: BadRequestException)
		"500"(controller: "error", action: "internalError", exception: InternalServerErrorException)
		"500"(controller: "error", action: "notFound", exception: NotFoundException)
		"500"(controller: "error", action: "forbidden", exception: ForbiddenException)
		"500"(view:'/error')      
	}
}
