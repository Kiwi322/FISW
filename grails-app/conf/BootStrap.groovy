import usuario.*
class BootStrap {

    def init = { servletContext ->
        def usuarioRol= new Rol('ROLE_USER').save(failOnError: true)
        def adminRol= new Rol('ROLE_ADMIN').save(failOnError: true)

        def usuarioUser=new Usuario('user','pass').save(failOnError: true)
        def adminUser= new Usuario('felipe','pass').save(failOnError: true)

        UsuarioRol.create usuarioUser,usuarioRol,true
        UsuarioRol.create adminUser,adminRol,true
    }
    def destroy = {
    }
}
