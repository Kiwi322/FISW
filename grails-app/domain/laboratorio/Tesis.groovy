package laboratorio
import usuario.Lab

class Tesis {
	static searchable = true
	String name
	String university
	String country
	String tutor
	String cotutor
	boolean pregrade
    String filename
    String fullPath
    Date uploadDate = new Date()
	static belongsTo = [owner:Lab]

	static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)

    }
}