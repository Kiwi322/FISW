package laboratorio
import usuario.Lab

class Collaborator {
	Lab user
	Project proj
    static constraints = {
    	user(unique: ['proj'])
    }
}