<%@ page import="usuario.Lab" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="dashboard.header" default="Welcome to Grails Webinar"/> </title>
    <style type="text/css" media="screen">
    </style>
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
    <h1>Bienvenido a el menu de administrador</h1>
    <p><sec:link controller="lab" expression="hasRole('ROLE_ADMIN')"><p>Modificar Usuarios</p></sec:link></p>
    <h2><g:if test="${Lab.countByAccountLocked(true) >0}" > Solicitud de cuenta pendientes</g:if></h2>
</div>

</body>
</html>