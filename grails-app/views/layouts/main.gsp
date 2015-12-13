<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
  		<asset:stylesheet src="main.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	<div id="LogoLab" role="banner"><a id="LogoText" href="http://localhost:8080/laboratorio"> Laboratorio de Microbiología Molecular y Biotecnología Ambiental</a>
		<sec:ifLoggedIn> <g:message code="default.welcome.message"/> <sec:username/>!</sec:ifLoggedIn>
		<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<sec:ifNotLoggedIn>
				<li><g:link controller='login' action='auth'><g:message code="default.button.login.label"/> </g:link></li>
				<li><g:link controller='lab' action='create'><g:message code="default.create.user.label"/> </g:link></li>
			</sec:ifNotLoggedIn>
			<sec:ifAnyGranted roles="ROLE_ADMIN">
				<li><g:link controller='admin' action='index'><g:message code="default.administrator.label"/></g:link></li>
				<li><g:link controller='lab' action='index'>
					<g:if test="${usuario.Lab.countByAccountLocked(true) >0}" > <b><g:message code="default.pending.user.label"/> </b></g:if>
					<g:else> <g:message code="default.user.label"/> </g:else>
				<li><g:link controller='lab' action='create'><g:message code="default.create.user.label"/> </g:link></li>
				</g:link></li>
			</sec:ifAnyGranted>
			<sec:ifAnyGranted roles="ROLE_USER">
				<li><g:link controller='lab' action='index'><g:message code="default.user.label"/>s</g:link></li>
				<li><g:link controller='lab' action="show" id="${sec.loggedInUserInfo(field: 'id')}"><g:message code="default.profile.label"/>
				</g:link></li>
				<li><g:link controller='tesis' action='list'><g:message code="default.create.tesis.label"/></g:link></li>
				<li><g:link controller='magazine' action='list'><g:message code="default.create.magazine.label"/></g:link></li>
				<li><g:link controller='book' action='list'><g:message code="default.create.book.label"/></g:link></li>
				<li><g:link controller='conference' action='list'><g:message code="default.create.conference.label"/></g:link></li>
				<li><g:link controller='project' action='list'><g:message code="default.create.project.label"/></g:link></li>
			</sec:ifAnyGranted>
			<sec:ifLoggedIn>
				<li><g:link controller="logout"><g:message code="common.logout" default="Logout"/></g:link></li>
			</sec:ifLoggedIn>
		</ul>
	</div></div>
	<g:layoutBody/>
	<div class="footer" role="contentinfo"></div>
	<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
