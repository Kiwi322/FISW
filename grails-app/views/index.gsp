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
		<p>
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue laoreet lorem, sed rhoncus ligula venenatis dapibus. Suspendisse nec venenatis nibh, sit amet aliquam neque. Donec rutrum dui turpis, a ornare orci efficitur et. Vivamus in leo pretium, egestas sapien in, congue lectus. Proin eget hendrerit quam. Maecenas rhoncus lacinia tempus. Mauris ultrices convallis massa, vitae rutrum ipsum facilisis id. In varius risus vitae ante scelerisque venenatis. Nam metus mi, vestibulum id mattis eget, sagittis quis justo. Donec pulvinar feugiat metus, in fermentum ante rutrum at.
		</p>
		<p>
			Sed rutrum libero a tellus fringilla, nec semper mi consectetur. Integer placerat ac lorem sit amet ornare. Nunc finibus elit at mollis pulvinar. Curabitur tempus gravida egestas. Integer ultrices turpis ut est varius blandit. Nullam mi purus, pellentesque eget euismod at, tincidunt consequat erat. Proin ullamcorper, est vitae bibendum tempus, felis erat rhoncus lacus, in posuere nunc nisl in mi. Duis hendrerit eu arcu et ultrices.
		</p>
		<p>
			Aliquam at ornare mi. Proin ultricies laoreet tristique. In posuere venenatis lorem in aliquam. Sed id accumsan eros. Fusce volutpat mattis tellus, vel imperdiet tortor ultricies in. Duis scelerisque augue et enim auctor, non gravida orci dignissim. Cras euismod nisl nisi, nec vehicula urna sagittis non. Suspendisse suscipit dolor nunc, in dignissim nisl egestas et. Cras vitae lacus eget tellus ultricies gravida. Suspendisse dictum arcu quis tortor euismod, at placerat libero commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque malesuada odio at elit pellentesque ullamcorper. Ut non egestas metus. Ut molestie, turpis vitae gravida lobortis, purus dolor dictum libero, a gravida lacus elit in arcu. Duis tempus turpis turpis, id mollis velit finibus nec. Aenean vitae arcu pulvinar ante elementum elementum non et mi.
		</p>
	</div>
	</body>
</html>
