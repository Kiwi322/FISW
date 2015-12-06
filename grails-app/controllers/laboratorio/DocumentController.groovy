package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class DocumentController {

    def index() {
        render view: "create"
    }
    def download(long id) {
        Document documentInstance = Document.get(id)
        if ( documentInstance == null) {
            flash.message = "Document not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.filename}\"")
            def file = new File(documentInstance.fullPath)
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
        [documentInstanceList: Document.list(params), documentInstanceTotal: Document.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def documentInstance = new Document()
            documentInstance.filename = file.originalFilename
            documentInstance.fullPath = grailsApplication.config.uploadFolder + documentInstance.filename
            file.transferTo(new File(documentInstance.fullPath))
            documentInstance.save()
        }
        redirect (action:'list')
    }    
}