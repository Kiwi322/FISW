package laboratorio

class Book{
	String title
	String author
	String year
	String isbn
	String editorial
    String filename
    String fullPath
    Date uploadDate = new Date()
    static constraints = {
        filename(blank:false,nullable:false)
        fullPath(blank:false,nullable:false)
}
}