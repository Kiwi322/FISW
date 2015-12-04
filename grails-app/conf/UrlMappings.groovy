class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/login/$action?"(controller: "login")
        "/logout/$action"(controller: "logout")
        "/"(view:"/index")
        "/history"(view:"/history")
        "500"(view:'/error')
	}
}
