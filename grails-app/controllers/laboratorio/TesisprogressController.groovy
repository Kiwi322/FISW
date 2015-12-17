package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class TesisprogressController {
    def springSecurityService
    def index() {
        render view: "create"
    }
    def download(long id) {
        Tesisprogress tesisprogressInstance = Tesisprogress.get(id)
        if ( tesisprogressInstance == null) {
            flash.message = "Tesisprogress not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${tesisprogressInstance.filename}\"")
            def file = new File(tesisprogressInstance.fullPath)
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
        [tesisprogressInstanceList: Tesisprogress.list(params), tesisprogressInstanceTotal: Tesisprogress.count()]
    }
    def show(Tesisprogress tesisprogressInstance) {
        respond tesisprogressInstance
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            def tesisprogressInstance = new Tesisprogress()
            tesisprogressInstance.properties=params
            tesisprogressInstance.owner= springSecurityService.getCurrentUser()
            tesisprogressInstance.save()
        } else {
            def tesisprogressInstance = new Tesisprogress()
            tesisprogressInstance.properties=params
            tesisprogressInstance.filename = file.originalFilename
            tesisprogressInstance.fullPath = grailsApplication.config.uploadFolder + tesisprogressInstance.filename
            file.transferTo(new File(tesisprogressInstance.fullPath))
            tesisprogressInstance.owner= springSecurityService.getCurrentUser()
            tesisprogressInstance.save()


        }
        redirect (controller:'lab', action:"show", id:springSecurityService.getCurrentUserId())
    }    
    def save() {
        def commentInstance = new Comment(params)
        commentInstance.properties=params
        commentInstance.owner=springSecurityService.getCurrentUser()
        commentInstance.save()
        redirect (action:"show", id:params.tesisprogress.id)
        }    
}