package laboratorio
import usuario.Lab

class Multimedia {

    String name
	boolean tipe // si es foto o video
	String filename
    String fullPath
    Date uploadDate = new Date()

    static belongsTo = [owner:Lab]
    	
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
	}
}
