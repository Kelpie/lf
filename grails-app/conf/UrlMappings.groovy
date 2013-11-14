import info.livefans.exception.httpstatus.*

class UrlMappings {

	static mappings = {
<<<<<<< HEAD
        "/(?!admin*)$controller/$action?/$id?(.${format})?"{
=======
        "/$controller/$action?/$id(-${natural})(.${format})?"{
>>>>>>> c65642dc0630adb4ccaba8da0d4b3be26b252352
            constraints {
                // apply constraints here
            }
        }
        "/admin/player/$action"(controller: "adminPlayer")
        "/admin/team/$action"(controller: "adminTeam")
        "/admin/stadium/$action"(controller: "adminStadium")
        "/admin/referee/$action"(controller: "adminReferee")
        "/admin/match/$action"(controller: "adminMatch")
        "/admin/tournament/$action"(controller: "adminTournament")
        "/admin/$action"(controller: "admin")
        "/"(view:"/index")
        


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
