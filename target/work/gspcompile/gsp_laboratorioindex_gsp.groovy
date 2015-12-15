import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorioindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',5,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',5,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',6,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('meta','g',11,['name':("app.version")],-1)
printHtmlPart(5)
invokeTag('meta','g',12,['name':("app.grails.version")],-1)
printHtmlPart(6)
expressionOut.print(GroovySystem.getVersion())
printHtmlPart(7)
expressionOut.print(System.getProperty('java.version'))
printHtmlPart(8)
expressionOut.print(grails.util.Environment.reloadingAgentEnabled)
printHtmlPart(9)
expressionOut.print(grailsApplication.controllerClasses.size())
printHtmlPart(10)
expressionOut.print(grailsApplication.domainClasses.size())
printHtmlPart(11)
expressionOut.print(grailsApplication.serviceClasses.size())
printHtmlPart(12)
expressionOut.print(grailsApplication.tagLibClasses.size())
printHtmlPart(13)
for( plugin in (applicationContext.getBean('pluginManager').allPlugins) ) {
printHtmlPart(14)
expressionOut.print(plugin.name)
printHtmlPart(15)
expressionOut.print(plugin.version)
printHtmlPart(16)
}
printHtmlPart(17)
})
invokeTag('captureBody','sitemesh',37,[:],1)
printHtmlPart(18)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1449243282000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
