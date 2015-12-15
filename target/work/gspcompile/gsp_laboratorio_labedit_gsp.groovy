import usuario.Lab
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_labedit_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/lab/edit.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
invokeTag('set','g',6,['var':("entityName"),'value':(message(code: 'lab.label', default: 'Lab'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',7,['code':("default.edit.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(2)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(2)
createTagBody(1, {->
printHtmlPart(3)
invokeTag('message','g',10,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(4)
invokeTag('message','g',12,['code':("default.edit.label"),'args':([entityName])],-1)
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
createTagBody(3, {->
printHtmlPart(10)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(11)
expressionOut.print(error.field)
printHtmlPart(12)
}
printHtmlPart(13)
invokeTag('message','g',19,['error':(error)],-1)
printHtmlPart(14)
})
invokeTag('eachError','g',20,['bean':(labInstance),'var':("error")],3)
printHtmlPart(15)
})
invokeTag('hasErrors','g',22,['bean':(labInstance)],2)
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(16)
createTagBody(3, {->
printHtmlPart(17)
invokeTag('hiddenField','g',25,['name':("version"),'value':(labInstance?.version)],-1)
printHtmlPart(18)
invokeTag('render','g',27,['template':("form_admin")],-1)
printHtmlPart(19)
invokeTag('actionSubmit','g',30,['class':("save"),'action':("update"),'value':(message(code: 'default.button.update.label', default: 'Update'))],-1)
printHtmlPart(20)
})
invokeTag('form','g',32,['url':([resource:labInstance, action:'update']),'method':("PUT")],3)
printHtmlPart(8)
})
invokeTag('ifAnyGranted','sec',33,['roles':("ROLE_ADMIN")],2)
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(16)
createTagBody(3, {->
printHtmlPart(17)
invokeTag('hiddenField','g',36,['name':("version"),'value':(labInstance?.version)],-1)
printHtmlPart(18)
invokeTag('render','g',38,['template':("form_edit")],-1)
printHtmlPart(19)
invokeTag('actionSubmit','g',41,['class':("save"),'action':("update"),'value':(message(code: 'default.button.update.label', default: 'Update'))],-1)
printHtmlPart(20)
})
invokeTag('form','g',43,['url':([resource:labInstance, action:'update']),'method':("PUT")],3)
printHtmlPart(8)
})
invokeTag('ifAnyGranted','sec',44,['roles':("ROLE_USER")],2)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',47,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1447468660000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
