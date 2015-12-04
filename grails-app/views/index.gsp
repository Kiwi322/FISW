<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
	<div id="status" role="complementary">
		<h1>Application Status</h1>
		<ul>
			<li>App version: <g:meta name="app.version"/></li>
			<li>Grails version: <g:meta name="app.grails.version"/></li>
			<li>Groovy version: ${GroovySystem.getVersion()}</li>
			<li>JVM version: ${System.getProperty('java.version')}</li>
			<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
			<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
			<li>Domains: ${grailsApplication.domainClasses.size()}</li>
			<li>Services: ${grailsApplication.serviceClasses.size()}</li>
			<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
		</ul>
		<h1>Installed Plugins</h1>
		<ul>
			<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
				<li>${plugin.name} - ${plugin.version}</li>
			</g:each>
		</ul>
	</div>
	<div id="page-body" role="main">
		<h1>Bienvenido a la pagina del laboratorio</h1>
		<br/>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue laoreet lorem, sed rhoncus ligula venenatis dapibus. Suspendisse nec venenatis nibh, sit amet aliquam neque. Donec rutrum dui turpis, a ornare orci efficitur et. Vivamus in leo pretium, egestas sapien in, congue lectus. Proin eget hendrerit quam. Maecenas rhoncus lacinia tempus. Mauris ultrices convallis massa, vitae rutrum ipsum facilisis id. In varius risus vitae ante scelerisque venenatis. Nam metus mi, vestibulum id mattis eget, sagittis quis justo. Donec pulvinar feugiat metus, in fermentum ante rutrum at.
		</p>
		<br/>
		<img src="images/welcome.jpg" alt="welcome" style="width:600px;">
	</div>
	</body>
</html>
