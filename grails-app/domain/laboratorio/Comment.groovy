package laboratorio
import usuario.Lab

class Comment {
	String body
    Date uploadDate = new Date()
	static belongsTo = [owner:Lab, tesisprogress: Tesisprogress]
	static constraints = {
		body(maxSize:8000)
    }
}
