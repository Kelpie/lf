import info.livefans.exception.httpstatus.*

class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id(-${natural})(.${format})?"{
            constraints {
                // apply constraints here
            }
        }
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
