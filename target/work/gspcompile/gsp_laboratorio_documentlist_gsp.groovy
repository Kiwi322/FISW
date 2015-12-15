import laboratorio.Document
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_documentlist_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/document/list.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',7,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
createClosureForHtmlPart(5, 2)
invokeTag('link','g',10,['class':("create"),'action':("index")],2)
printHtmlPart(6)
if(true && (flash.message)) {
printHtmlPart(7)
expressionOut.print(flash.message)
printHtmlPart(8)
}
printHtmlPart(9)
invokeTag('sortableColumn','g',18,['property':("filename"),'title':("Filename")],-1)
printHtmlPart(10)
invokeTag('sortableColumn','g',19,['property':("uploadDate"),'title':("Upload Date")],-1)
printHtmlPart(11)
loop:{
int i = 0
for( documentInstance in (documentInstanceList) ) {
printHtmlPart(12)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(13)
createTagBody(3, {->
expressionOut.print(documentInstance.filename)
})
invokeTag('link','g',25,['action':("download"),'id':(documentInstance.id)],3)
printHtmlPart(14)
invokeTag('formatDate','g',26,['date':(documentInstance.uploadDate)],-1)
printHtmlPart(15)
i++
}
}
printHtmlPart(16)
invokeTag('paginate','g',32,['total':(documentInstanceTotal)],-1)
printHtmlPart(17)
})
invokeTag('captureBody','sitemesh',35,[:],1)
printHtmlPart(18)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1449372693000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
