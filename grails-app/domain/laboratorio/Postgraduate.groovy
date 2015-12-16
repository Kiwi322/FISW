package laboratorio
import usuario.Lab
class Postgraduate {

	String carrer
	String university
	String country
    static belongsTo = [owner:Lab]
    static constraints = {
    }
}
