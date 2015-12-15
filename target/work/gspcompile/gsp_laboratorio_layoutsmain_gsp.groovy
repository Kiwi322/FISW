import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_laboratorio_layoutsmain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/main.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("Content-Type"),'content':("text/html; charset=UTF-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge,chrome=1")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('layoutTitle','g',10,['default':("Grails")],-1)
})
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',10,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(2)
expressionOut.print(assetPath(src: 'favicon.ico'))
printHtmlPart(3)
expressionOut.print(assetPath(src: 'apple-touch-icon.png'))
printHtmlPart(4)
expressionOut.print(assetPath(src: 'apple-touch-icon-retina.png'))
printHtmlPart(5)
invokeTag('stylesheet','asset',15,['src':("application.css")],-1)
printHtmlPart(6)
invokeTag('stylesheet','asset',16,['src':("main.css")],-1)
printHtmlPart(1)
invokeTag('javascript','asset',17,['src':("application.js")],-1)
printHtmlPart(1)
invokeTag('layoutHead','g',18,[:],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',19,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
invokeTag('message','g',22,['code':("default.welcome.message")],-1)
printHtmlPart(9)
invokeTag('username','sec',22,[:],-1)
printHtmlPart(10)
})
invokeTag('ifLoggedIn','sec',22,[:],2)
printHtmlPart(11)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(12)
invokeTag('message','g',25,['code':("default.home.label")],-1)
printHtmlPart(13)
createTagBody(2, {->
printHtmlPart(14)
createTagBody(3, {->
invokeTag('message','g',27,['code':("default.button.login.label")],-1)
printHtmlPart(9)
})
invokeTag('link','g',27,['controller':("login"),'action':("auth")],3)
printHtmlPart(15)
createTagBody(3, {->
invokeTag('message','g',28,['code':("default.create.user.label")],-1)
printHtmlPart(9)
})
invokeTag('link','g',28,['controller':("lab"),'action':("create")],3)
printHtmlPart(16)
})
invokeTag('ifNotLoggedIn','sec',29,[:],2)
printHtmlPart(17)
createTagBody(2, {->
printHtmlPart(14)
createTagBody(3, {->
invokeTag('message','g',31,['code':("default.administrator.label")],-1)
})
invokeTag('link','g',31,['controller':("admin"),'action':("index")],3)
printHtmlPart(15)
createTagBody(3, {->
printHtmlPart(18)
if(true && (usuario.Lab.countByAccountLocked(true) >0)) {
printHtmlPart(19)
invokeTag('message','g',33,['code':("default.pending.user.label")],-1)
printHtmlPart(20)
}
else {
printHtmlPart(9)
invokeTag('message','g',34,['code':("default.user.label")],-1)
printHtmlPart(9)
}
printHtmlPart(14)
createTagBody(4, {->
invokeTag('message','g',35,['code':("default.create.user.label")],-1)
printHtmlPart(9)
})
invokeTag('link','g',35,['controller':("lab"),'action':("create")],4)
printHtmlPart(15)
createTagBody(4, {->
invokeTag('message','g',36,['code':("default.create.document.label")],-1)
})
invokeTag('link','g',36,['controller':("document"),'action':("list")],4)
printHtmlPart(21)
})
invokeTag('link','g',37,['controller':("lab"),'action':("index")],3)
printHtmlPart(16)
})
invokeTag('ifAnyGranted','sec',38,['roles':("ROLE_ADMIN")],2)
printHtmlPart(17)
createTagBody(2, {->
printHtmlPart(14)
createTagBody(3, {->
invokeTag('message','g',40,['code':("default.user.label")],-1)
printHtmlPart(22)
})
invokeTag('link','g',40,['controller':("lab"),'action':("index")],3)
printHtmlPart(15)
createTagBody(3, {->
invokeTag('message','g',41,['code':("default.profile.label")],-1)
printHtmlPart(23)
})
invokeTag('link','g',42,['controller':("lab"),'action':("show"),'id':(sec.loggedInUserInfo(field: 'id'))],3)
printHtmlPart(15)
createTagBody(3, {->
invokeTag('message','g',43,['code':("default.create.document.label")],-1)
})
invokeTag('link','g',43,['controller':("document"),'action':("list")],3)
printHtmlPart(16)
})
invokeTag('ifAnyGranted','sec',44,['roles':("ROLE_USER")],2)
printHtmlPart(17)
createTagBody(2, {->
printHtmlPart(14)
createTagBody(3, {->
invokeTag('message','g',46,['code':("common.logout"),'default':("Logout")],-1)
})
invokeTag('link','g',46,['controller':("logout")],3)
printHtmlPart(16)
})
invokeTag('ifLoggedIn','sec',47,[:],2)
printHtmlPart(24)
invokeTag('layoutBody','g',50,[:],-1)
printHtmlPart(25)
invokeTag('message','g',52,['code':("spinner.alt"),'default':("Loading&hellip;")],-1)
printHtmlPart(26)
})
invokeTag('captureBody','sitemesh',53,[:],1)
printHtmlPart(27)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1449416157000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
