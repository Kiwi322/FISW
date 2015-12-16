package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class BookController {
    def springSecurityService
    def index() {
        render view: "create"
    }
    def download(long id) {
        Book bookInstance = Book.get(id)
        if ( bookInstance == null) {
            flash.message = "Book not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${bookInstance.filename}\"")
            def file = new File(bookInstance.fullPath)
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
        [bookInstanceList: Book.list(params), bookInstanceTotal: Book.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def bookInstance = new Book()
            bookInstance.properties=params
            bookInstance.filename = file.originalFilename
            bookInstance.fullPath = grailsApplication.config.uploadFolder + bookInstance.filename
            file.transferTo(new File(bookInstance.fullPath))
            bookInstance.owner= springSecurityService.getCurrentUser()
            bookInstance.save()
        }
        redirect (controller:'lab', action:"show", id:springSecurityService.getCurrentUserId())
    }    
}