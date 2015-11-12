package usuario

class Lab extends Usuario{

    String nombres
    String apellidos

    static constraints = {
        nombres(blank: false,nullable: false)
    }

    Lab(String username, String password,String nombres,String apellidos) {
        super(username, password)
        this.nombres = nombres
        this.apellidos = apellidos
    }
}
