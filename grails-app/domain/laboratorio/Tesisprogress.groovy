package laboratorio
import usuario.Lab

class Tesisprogress {
	String cotutor
	String link
    String filename
    String fullPath
    boolean tipe
    Date uploadDate = new Date()
    Lab tutor
	static belongsTo = [owner:Lab]
	static hasMany = [comments: Comment]
	static constraints = {
        filename(blank:false,nullable:true)
        fullPath(blank:false,nullable:true)
        link(blank:false,nullable:true)
        cotutor(blank:false,nullable:true)
    }
}