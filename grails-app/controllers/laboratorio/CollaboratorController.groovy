package laboratorio

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class CollaboratorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def save() {
        def collaboratorInstance = new Collaborator(params)
        collaboratorInstance.properties=params
        collaboratorInstance.save()
        redirect(uri: request.getHeader('referer') )
    }        

    @Transactional
    def delete(Collaborator collaboratorInstance) {
        collaboratorInstance.delete flush:true
        redirect(uri: request.getHeader('referer') )
    }
}
