package laboratorio

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class HomeController {

    def index() {
        render view: "home"
    }
}
