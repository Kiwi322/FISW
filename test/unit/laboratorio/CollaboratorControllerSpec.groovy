package laboratorio



import grails.test.mixin.*
import spock.lang.*

@TestFor(CollaboratorController)
@Mock(Collaborator)
class CollaboratorControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.collaboratorInstanceList
            model.collaboratorInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.collaboratorInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def collaborator = new Collaborator()
            collaborator.validate()
            controller.save(collaborator)

        then:"The create view is rendered again with the correct model"
            model.collaboratorInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            collaborator = new Collaborator(params)

            controller.save(collaborator)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/collaborator/show/1'
            controller.flash.message != null
            Collaborator.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def collaborator = new Collaborator(params)
            controller.show(collaborator)

        then:"A model is populated containing the domain instance"
            model.collaboratorInstance == collaborator
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def collaborator = new Collaborator(params)
            controller.edit(collaborator)

        then:"A model is populated containing the domain instance"
            model.collaboratorInstance == collaborator
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/collaborator/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def collaborator = new Collaborator()
            collaborator.validate()
            controller.update(collaborator)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.collaboratorInstance == collaborator

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            collaborator = new Collaborator(params).save(flush: true)
            controller.update(collaborator)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/collaborator/show/$collaborator.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/collaborator/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def collaborator = new Collaborator(params).save(flush: true)

        then:"It exists"
            Collaborator.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(collaborator)

        then:"The instance is deleted"
            Collaborator.count() == 0
            response.redirectedUrl == '/collaborator/index'
            flash.message != null
    }
}
