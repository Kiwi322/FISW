package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class MultimediaController {
    def springSecurityService
    def index() {
        render view: "create"
    }
    def video() {
        render view: "video"
    }
    def download(long id) {
        Multimedia multimediaInstance = Multimedia.get(id)
        if ( multimediaInstance == null) {
            flash.message = "Multimedia not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${multimediaInstance.filename}\"")
            def file = new File(multimediaInstance.fullPath)
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
        [multimediaInstanceList: Multimedia.list(params), multimediaInstanceTotal: Multimedia.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def multimediaInstance = new Multimedia()
            multimediaInstance.properties=params
            if (params.profile){
                multimediaInstance.filename = "pic.jpg"
                multimediaInstance.fullPath = grailsApplication.config.imageFolder + params.username + "/" + multimediaInstance.filename
            }
            else {
                multimediaInstance.filename = file.originalFilename
                multimediaInstance.fullPath = grailsApplication.config.imageFolder + params.username + "/" + multimediaInstance.filename
            }
            new File(grailsApplication.config.imageFolder + params.username + "/" ).mkdirs()
            file.transferTo(new File(multimediaInstance.fullPath))
            multimediaInstance.owner= springSecurityService.getCurrentUser()
            multimediaInstance.save()
        }
        redirect (controller:'lab', action:"show", id:springSecurityService.getCurrentUserId())
    }    
}