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
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	<div id="grailsLogo" role="banner"><a href="http://localhost:8080/laboratorio"><asset:image src="grails_logo.png" alt="Grails"/></a>
		<sec:ifLoggedIn> <g:message code="default.welcome.message"/> <sec:username/>!</sec:ifLoggedIn>
		<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<sec:ifNotLoggedIn>
				<li><g:link controller='login' action='auth'><g:message code="default.button.login.label"/> </g:link></li>
				<li><g:link controller='lab' action='create'><g:message code="default.create.label.user"/> </g:link></li>
			</sec:ifNotLoggedIn>
			<sec:ifAnyGranted roles="ROLE_ADMIN">
				<li><g:link controller='admin' action='index'>Menu administrador</g:link></li>
				<li><g:link controller='lab' action='index'>
					<g:if test="${usuario.Lab.countByAccountLocked(true) >0}" > <b>Usuarios Pendientes</b></g:if>
					<g:else>Ver Usuarios</g:else>
					<li><g:link controller='lab' action='create'>Crear Cuenta</g:link></li>
				</g:link></li>
			</sec:ifAnyGranted>
			<sec:ifAnyGranted roles="ROLE_USER">
				<li><g:link controller='lab' action='index'>Ver Usuarios</g:link></li>
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
