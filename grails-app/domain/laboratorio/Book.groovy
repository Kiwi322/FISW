package laboratorio
import usuario.Lab
class Book{
    static searchable = true
	String title
	String author
	String year
	String isbn
	String editorial
    String filename
    String fullPath
    Date uploadDate = new Date()
    static belongsTo = [owner:Lab]
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
}
}