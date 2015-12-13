package laboratorio
import usuario.Lab

class Conference{
	String name
	String datestart
	String datefinish
	String country
	String city
	String filename
    String fullPath
    Date uploadDate = new Date()
	static belongsTo = [owner:Lab]
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)

}
}
