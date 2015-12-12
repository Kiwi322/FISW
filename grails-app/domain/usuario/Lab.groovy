package usuario
import laboratorio.Book
import laboratorio.Conference
import laboratorio.Magazine
import laboratorio.Postgraduate
import laboratorio.Project
import laboratorio.Tesis
class Lab extends Usuario {

    String nombres
    String apellidos
    String position
    String area
    String carrer
    String university
    String country
    static hasMany = [books: Book,conferences: Conference,magazines: Magazine,postgradutes: Postgraduate,projects: Project,tesis: Tesis]

    static constraints = {
        nombres(blank: false, nullable: false)
    }

    Lab(String username, String password, String nombres, String apellidos) {
        super(username, password)
        this.nombres = nombres
        this.apellidos = apellidos
    }
    def beforeDelete() {
        UsuarioRol.removeAll(this)
    } 
}
