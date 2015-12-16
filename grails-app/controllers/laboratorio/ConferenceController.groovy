package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class ConferenceController {
    def springSecurityService
    def index() {
        render view: "create"
    }
    def download(long id) {
        Conference conferenceInstance = Conference.get(id)
        if ( conferenceInstance == null) {
            flash.message = "Conference not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${conferenceInstance.filename}\"")
            def file = new File(conferenceInstance.fullPath)
            def fileInputStream = new FileInputStream(file)
            def outputStream = response.getOutputStream()
            byte[] buffer = new byte[4096];
            int len;
            while ((len = fileInputStream.read(buffer)) > 0) {
                outputStream.write(buffer, 0, len);
            }
            outputStream.flush()
            outputStream.close()
            fileInputStream.close()
        }
    }   
    def list() {
        params.max = 10
        [conferenceInstanceList: Conference.list(params), conferenceInstanceTotal: Conference.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def conferenceInstance = new Conference()
            conferenceInstance.properties=params
            conferenceInstance.filename = file.originalFilename
            conferenceInstance.fullPath = grailsApplication.config.uploadFolder + conferenceInstance.filename
            file.transferTo(new File(conferenceInstance.fullPath))
            conferenceInstance.owner= springSecurityService.getCurrentUser()
            conferenceInstance.save()
        }
        redirect (controller:'lab', action:"show", id:springSecurityService.getCurrentUserId())
    }    
}