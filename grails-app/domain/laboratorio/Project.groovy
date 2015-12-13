package laboratorio
import usuario.Lab
class Project {
	String name
	String position
	String yearstart
	String yearfinish
	String other
    String filename
    String fullPath
    Date uploadDate = new Date()
    static belongsTo = [owner:Lab]
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
}
}
