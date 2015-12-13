package laboratorio

import grails.plugin.springsecurity.annotation.Secured  

@Secured(['IS_AUTHENTICATED_FULLY'])
class ProjectController {
    def springSecurityService
    def index() {
        render view: "create"
    }
    def download(long id) {
        Project projectInstance = Project.get(id)
        if ( projectInstance == null) {
            flash.message = "Project not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${projectInstance.filename}\"")
            def file = new File(projectInstance.fullPath)
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
        [projectInstanceList: Project.list(params), projectInstanceTotal: Project.count()]
    }
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "File cannot be empty"
        } else {
            def projectInstance = new Project()
            projectInstance.properties=params
            projectInstance.filename = file.originalFilename
            projectInstance.fullPath = grailsApplication.config.uploadFolder + projectInstance.filename
            file.transferTo(new File(projectInstance.fullPath))
            projectInstance.owner= springSecurityService.getCurrentUser()
            projectInstance.save()
        }
        redirect (action:'list')
    }    
}