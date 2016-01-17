package laboratorio
import usuario.Lab
class Postgraduate {

	String carrer
	String university
	String country
	String tipe //si es pregrado o postgrado
    static belongsTo = [owner:Lab]
    static constraints = {
    }
}
