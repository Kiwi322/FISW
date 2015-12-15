import usuario.Lab
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_labindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/lab/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'lab.label', default: 'Lab'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
invokeTag('message','g',13,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(6)
if(true && (flash.message)) {
printHtmlPart(7)
expressionOut.print(flash.message)
printHtmlPart(8)
}
printHtmlPart(9)
invokeTag('sortableColumn','g',21,['property':("username"),'title':(message(code: 'lab.username.label', default: 'Username'))],-1)
printHtmlPart(10)
invokeTag('sortableColumn','g',23,['property':("nombres"),'title':(message(code: 'lab.nombres.label', default: 'Nombres'))],-1)
printHtmlPart(11)
invokeTag('sortableColumn','g',25,['property':("apellidos"),'title':(message(code: 'lab.apellidos.label', default: 'Apellidos'))],-1)
printHtmlPart(12)
createTagBody(2, {->
printHtmlPart(13)
invokeTag('sortableColumn','g',27,['property':("accountLocked"),'title':(message(code: 'lab.accountLocked.label', default: 'Account Locked'))],-1)
printHtmlPart(12)
})
invokeTag('ifAnyGranted','sec',28,['roles':("ROLE_ADMIN")],2)
printHtmlPart(14)
loop:{
int i = 0
for( labInstance in (labInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: labInstance, field: "username"))
})
invokeTag('link','g',35,['action':("show"),'id':(labInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: labInstance, field: "nombres"))
printHtmlPart(18)
expressionOut.print(fieldValue(bean: labInstance, field: "apellidos"))
printHtmlPart(19)
createTagBody(3, {->
printHtmlPart(20)
invokeTag('formatBoolean','g',41,['boolean':(labInstance.accountLocked)],-1)
printHtmlPart(19)
})
invokeTag('ifAnyGranted','sec',42,['roles':("ROLE_ADMIN")],3)
printHtmlPart(21)
i++
}
}
printHtmlPart(22)
invokeTag('paginate','g',48,['total':(labInstanceCount ?: 0)],-1)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',51,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1449414475000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
