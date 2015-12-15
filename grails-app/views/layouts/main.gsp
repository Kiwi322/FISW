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
		<meta name="layout" content="main"/>
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<script type="text/javascript" src="http://www.google.com/jsapi"></script>
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<button class="btn btn-navbar" data-toggle="collapse" data-target="#app-nav-top-bar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="dashboard.html" class="brand"><i class="icon-leaf">LABMMDA</i></a>
					<div id="app-nav-top-bar" class="nav-collapse">
						<ul class="nav">

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">TRY ME!
									<b class="caret hidden-phone"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="dashboard.html">Dashboard</a>
									</li>
									<li>
										<a href="form.html">Form</a>
									</li>
									<li>
										<a href="custom-view.html">Custom View</a>
									</li>
									<li>
										<a href="login.html">Login Page</a>
									</li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">CHANGE NAV BAR
									<b class="caret hidden-phone"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="demo-horizontal-nav.html">Horizontal</a>
									</li>
									<li>
										<a href="demo-horizontal-fixed-nav.html">Horizontal Fixed</a>
									</li>
									<li>
										<a href="demo-vertical-nav.html">Vertical</a>
									</li>
									<li>
										<a href="demo-vertical-fixed-nav.html">Vertical Fixed</a>
									</li>
								</ul>
							</li>

						</ul>
						<ul class="nav pull-right">
							<li>
								<sec:ifNotLoggedIn>
									<g:link controller='login' action='auth'><g:message code="default.button.login.label"/> </g:link>
								</sec:ifNotLoggedIn>
								<sec:ifLoggedIn>
									<li><g:link controller="logout"><g:message code="common.logout" default="Logout"/></g:link></li>
								</sec:ifLoggedIn>
							</li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	<div id="body-container">
		<div id="body-content">
			<sec:ifAnyGranted roles="ROLE_ADMIN">
				<div class="body-nav body-nav-horizontal body-nav-fixed">
			</sec:ifAnyGranted>
			<sec:ifAnyGranted roles="ROLE_USER">
				<div class="body-nav body-nav-horizontal body-nav-fixed hidden">
			</sec:ifAnyGranted>
			<sec:ifNotLoggedIn roles="ROLE_ADMIN">
				<div class="body-nav body-nav-horizontal body-nav-fixed hidden">
			</sec:ifNotLoggedIn>
				
				<div class="container">
					<ul>
						<li>
							<g:link controller='admin' action='index'>
								<i class="icon-dashboard icon-large"></i> <g:message code="default.administrator.label"/>
							</g:link>
						</li>
						<li>
							<a href="#">
								<i class="icon-calendar icon-large"></i> Schedule
							</a>
						</li>
						<li>
							<g:link controller='lab' action='index'>
								<i class="icon-map-marker icon-large"></i> <g:if test="${usuario.Lab.countByAccountLocked(true) >0}" > <b><g:message code="default.pending.user.label"/> </b></g:if>
								<g:else> <g:message code="default.user.label"/> </g:else>
							</g:link>
						</li>
						<li>
							<g:link controller='lab' action='create'>
								<i class="icon-tasks icon-large"></i> <g:message code="default.create.user.label"/>
							</g:link>
						</li>
						<li>
							<g:link controller='document' action='list'>
								<i class="icon-cogs icon-large"></i> <g:message code="default.create.document.label"/>
							</g:link>
						</li>
						<li>
							<a href="#">
								<i class="icon-list-alt icon-large"></i> Forms
							</a>
						</li>
						<li>
							<a href="#">
								<i class="icon-bar-chart icon-large"></i> Charts
							</a>
						</li>
					</ul>
				</div>
			</div>
			<sec:ifAnyGranted roles="ROLE_ADMIN">
				<section class="nav nav-page body-nav-fixed">
			</sec:ifAnyGranted>
			<sec:ifAnyGranted roles="ROLE_USER">
				<section class="nav nav-page body-nav-fixed subNavBar-fixed	">
			</sec:ifAnyGranted>
			<sec:ifNotLoggedIn>
				<section class="nav nav-page body-nav-fixed subNavBar-fixed	">
			</sec:ifNotLoggedIn>
				<div class="container">
					<div class="row">
						<div class="span7">
							<header class="page-header">
								<h3>Pagina Principal<br/>
									<small>Additional Bootstrap Components</small>
								</h3>
							</header>
						</div>
						<div class="page-nav-options">
							<div class="span9">
								<ul class="nav nav-pills">
									<li> 
										<a href="http://localhost:8080/laboratorio"><i class="icon-home icon-large"></i></a>
									</li>
								</ul>
								<ul class="nav nav-tabs">
								<g:if test="${ request.forwardURI == ''}"> <li class="active"> </g:if>
								<g:else><li></g:else>
										<a href="http://localhost:8080"><i class="icon-home"></i><g:message code="default.home.label"/></a>
									</li>
									<li><a href="#">Maps</a></li>
									<li><a href="#">Admin</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<g:layoutBody/>
		
        <div id="spinner" class="spinner" style="display:none;">
            Loading&hellip;
        </div>

        <footer class="application-footer">
            <div class="container">
                <p>Application Footer</p>
                <div class="disclaimer">
                    <p>This is an example disclaimer. All right reserved.</p>
                    <p>Copyright © keaplogik 2011-2012</p>
                </div>
            </div>
        </footer>
        <g:message code="default.administrator.label"/>


			<script type="text/javascript">
				$(function() {
					$('#sample-table').tablesorter();
					$('#datepicker').datepicker();
					$(".chosen").chosen();
				});
			</script>
	</body>


</html>
