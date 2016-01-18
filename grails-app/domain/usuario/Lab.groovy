package usuario
import laboratorio.*
class Lab extends Usuario {
    static searchable = true
    String nombres
    String apellidos
    String position
    String carrer
    String university
    String country
    static hasOne = [area: Area]
    static mappedBy = [tutor:"tutor", progress: "owner"]
    static hasMany = [books: Book,conferences: Conference,magazines: Magazine,postgradutes: Postgraduate,projects: Project,tesis: Tesis,tutor :Tesisprogress, progress :Tesisprogress]

    static constraints = {
        nombres(blank: false, nullable: false)
    }

    Lab(String username, String password, String nombres, String apellidos){
        super(username, password)
        this.nombres = nombres
        this.apellidos = apellidos
    }
    def beforeDelete() {
        UsuarioRol.removeAll(this)
    } 
}
