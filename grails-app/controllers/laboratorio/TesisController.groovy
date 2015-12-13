package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class TesisController {
    def springSecurityService
    def index() {
        render view: "create"
    }
    def download(long id) {
        Tesis tesisInstance = Tesis.get(id)
        if ( tesisInstance == null) {
            flash.message = "Tesis not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${tesisInstance.filename}\"")
            def file = new File(tesisInstance.fullPath)
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
        [tesisInstanceList: Tesis.list(params), tesisInstanceTotal: Tesis.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def tesisInstance = new Tesis()
            tesisInstance.properties=params
            tesisInstance.filename = file.originalFilename
            tesisInstance.fullPath = grailsApplication.config.uploadFolder + tesisInstance.filename
            file.transferTo(new File(tesisInstance.fullPath))
            tesisInstance.owner= springSecurityService.getCurrentUser()
            tesisInstance.save()


        }
        redirect (action:'list')    
    }    
}