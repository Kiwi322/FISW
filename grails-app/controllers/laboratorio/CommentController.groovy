package laboratorio



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class CommentController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        render view: "create"
    }

    def show(Comment commentInstance) {
        respond commentInstance
    }
    @Transactional
    def save() {
        def commentInstance = new Comment(params)
        commentInstance.properties=params
        commentInstance.owner=springSecurityService.getCurrentUser()
        commentInstance.save()
        redirect (controller:'lab', action:"show", id:springSecurityService.getCurrentUserId())
        }

}
