package laboratorio
import usuario.Lab

class Magazine{
	String title
	String author
	String year
	String magazine
    String filename
    String fullPath
    Date uploadDate = new Date()
    static belongsTo = [owner:Lab]
    static hasOne = [area: Area]
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
}
}