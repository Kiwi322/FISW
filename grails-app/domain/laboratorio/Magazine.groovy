package laboratorio
import usuario.Lab

class Magazine{
	String title
	String author
	String year
	String magazine
	String area
    String filename
    String fullPath
    Date uploadDate = new Date()
    static belongsTo = [owner:Lab]
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
}
}