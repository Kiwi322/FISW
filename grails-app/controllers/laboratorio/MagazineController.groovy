package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class MagazineController {
    def springSecurityService
    def index() {
        render view: "create"
    }  
    def show(Magazine magazineInstance) {
        redirect (controller:'lab', action:"show", id:magazineInstance.owner.id)
    }
    def download(long id) {
        Magazine magazineInstance = Magazine.get(id)
        if ( magazineInstance == null) {
            flash.message = "Magazine not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${magazineInstance.filename}\"")
            def file = new File(magazineInstance.fullPath)
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
        [magazineInstanceList: Magazine.list(params), magazineInstanceTotal: Magazine.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def magazineInstance = new Magazine()
            magazineInstance.properties=params
            magazineInstance.filename = file.originalFilename
            magazineInstance.fullPath = grailsApplication.config.uploadFolder + magazineInstance.filename
            file.transferTo(new File(magazineInstance.fullPath))
            magazineInstance.owner= springSecurityService.getCurrentUser()
            magazineInstance.save()
        }
        redirect (controller:'lab', action:"show", id:springSecurityService.getCurrentUserId())
    }    
}