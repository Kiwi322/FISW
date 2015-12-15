import usuario.Lab
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_labshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/lab/show.gsp" }
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
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
invokeTag('message','g',13,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(6)
if(true && (flash.message)) {
printHtmlPart(7)
expressionOut.print(flash.message)
printHtmlPart(8)
}
printHtmlPart(9)
if(true && (labInstance?.username)) {
printHtmlPart(10)
invokeTag('message','g',21,['code':("lab.username.label"),'default':("Username")],-1)
printHtmlPart(11)
invokeTag('fieldValue','g',23,['bean':(labInstance),'field':("username")],-1)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (labInstance?.nombres)) {
printHtmlPart(14)
invokeTag('message','g',30,['code':("lab.nombres.label"),'default':("Nombres")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',32,['bean':(labInstance),'field':("nombres")],-1)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (labInstance?.accountLocked)) {
printHtmlPart(16)
invokeTag('message','g',39,['code':("lab.accountLocked.label"),'default':("Account Locked")],-1)
printHtmlPart(17)
invokeTag('formatBoolean','g',41,['boolean':(labInstance?.accountLocked)],-1)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (labInstance?.apellidos)) {
printHtmlPart(18)
invokeTag('message','g',48,['code':("lab.apellidos.label"),'default':("Apellidos")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',50,['bean':(labInstance),'field':("apellidos")],-1)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (labInstance?.enabled)) {
printHtmlPart(20)
invokeTag('message','g',57,['code':("lab.enabled.label"),'default':("Enabled")],-1)
printHtmlPart(21)
invokeTag('formatBoolean','g',59,['boolean':(labInstance?.enabled)],-1)
printHtmlPart(12)
}
printHtmlPart(22)
if(true && (labInstance.username.toString() == sec.loggedInUserInfo(field: 'username').toString())) {
printHtmlPart(23)
createTagBody(3, {->
printHtmlPart(24)
createTagBody(4, {->
invokeTag('message','g',68,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',68,['class':("edit"),'action':("edit"),'resource':(labInstance)],4)
printHtmlPart(25)
invokeTag('actionSubmit','g',69,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(26)
})
invokeTag('form','g',71,['url':([resource:labInstance, action:'delete']),'method':("DELETE")],3)
printHtmlPart(23)
}
printHtmlPart(23)
createTagBody(2, {->
printHtmlPart(23)
createTagBody(3, {->
printHtmlPart(24)
createTagBody(4, {->
invokeTag('message','g',76,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',76,['class':("edit"),'action':("edit"),'resource':(labInstance)],4)
printHtmlPart(25)
invokeTag('actionSubmit','g',77,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(26)
})
invokeTag('form','g',79,['url':([resource:labInstance, action:'delete']),'method':("DELETE")],3)
printHtmlPart(23)
})
invokeTag('ifAnyGranted','sec',80,['roles':("ROLE_ADMIN")],2)
printHtmlPart(27)
})
invokeTag('captureBody','sitemesh',82,[:],1)
printHtmlPart(28)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1449417117000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
