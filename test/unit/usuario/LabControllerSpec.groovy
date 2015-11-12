package usuario


import grails.test.mixin.*
import spock.lang.*

@TestFor(LabController)
@Mock(Lab)
class LabControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.labInstanceList
        model.labInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.labInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def lab = new Lab()
        lab.validate()
        controller.save(lab)

        then: "The create view is rendered again with the correct model"
        model.labInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        lab = new Lab(params)

        controller.save(lab)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/lab/show/1'
        controller.flash.message != null
        Lab.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def lab = new Lab(params)
        controller.show(lab)

        then: "A model is populated containing the domain instance"
        model.labInstance == lab
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def lab = new Lab(params)
        controller.edit(lab)

        then: "A model is populated containing the domain instance"
        model.labInstance == lab
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/lab/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def lab = new Lab()
        lab.validate()
        controller.update(lab)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.labInstance == lab

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        lab = new Lab(params).save(flush: true)
        controller.update(lab)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/lab/show/$lab.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/lab/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def lab = new Lab(params).save(flush: true)

        then: "It exists"
        Lab.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(lab)

        then: "The instance is deleted"
        Lab.count() == 0
        response.redirectedUrl == '/lab/index'
        flash.message != null
    }
}
