import usuario.Lab
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_lab_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/lab/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: labInstance, field: 'username', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("lab.username.label"),'default':("Username")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("username"),'required':(""),'value':(labInstance?.username)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: labInstance, field: 'password', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("lab.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("password"),'required':(""),'value':(labInstance?.password)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: labInstance, field: 'nombres', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("lab.nombres.label"),'default':("Nombres")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("nombres"),'required':(""),'value':(labInstance?.nombres)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: labInstance, field: 'apellidos', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("lab.apellidos.label"),'default':("Apellidos")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("apellidos"),'required':(""),'value':(labInstance?.apellidos)],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1449241948000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}