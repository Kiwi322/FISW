package laboratorio
import usuario.Lab

class Area {
	String name
	static hasMany = [labs: Lab, magazines :Magazine]

    static constraints = {
    }

    Area(String newname){
    	this()
    	this.name=newname
    }
}