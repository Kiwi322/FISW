<%@ page import="usuario.Lab" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="default.admin.message" default="Welcome to Grails Webinar"/> </title>
    <style type="text/css" media="screen">
    </style>
</head>
<body>
<div id="page-body" role="main">
    <h1>Bienvenido a el menu de administrador</h1>
    <p><sec:link controller="lab" expression="hasRole('ROLE_ADMIN')"><p>Modificar Usuarios</p></sec:link></p>
    <h2><g:if test="${Lab.countByAccountLocked(true) >0}" > Solicitud de cuenta pendientes</g:if></h2>
</div>

</body>
</html>