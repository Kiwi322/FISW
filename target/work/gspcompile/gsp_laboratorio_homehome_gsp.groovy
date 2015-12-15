import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_homehome_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/home.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',6,['code':("dashboard.header"),'default':("Welcome to Grails Webinar")],-1)
printHtmlPart(3)
})
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',14,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(5)
invokeTag('meta','g',19,['name':("app.version")],-1)
printHtmlPart(6)
invokeTag('meta','g',20,['name':("app.grails.version")],-1)
printHtmlPart(7)
expressionOut.print(GroovySystem.getVersion())
printHtmlPart(8)
expressionOut.print(System.getProperty('java.version'))
printHtmlPart(9)
expressionOut.print(grails.util.Environment.reloadingAgentEnabled)
printHtmlPart(10)
expressionOut.print(grailsApplication.controllerClasses.size())
printHtmlPart(11)
expressionOut.print(grailsApplication.domainClasses.size())
printHtmlPart(12)
expressionOut.print(grailsApplication.serviceClasses.size())
printHtmlPart(13)
expressionOut.print(grailsApplication.tagLibClasses.size())
printHtmlPart(14)
for( plugin in (applicationContext.getBean('pluginManager').allPlugins) ) {
printHtmlPart(15)
expressionOut.print(plugin.name)
printHtmlPart(16)
expressionOut.print(plugin.version)
printHtmlPart(17)
}
printHtmlPart(18)
createClosureForHtmlPart(19, 2)
invokeTag('link','sec',38,['controller':("lab"),'expression':("hasRole('ROLE_USER')")],2)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',41,[:],1)
printHtmlPart(21)
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
