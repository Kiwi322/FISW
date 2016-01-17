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

    <g:link class="list" controller="book" action="list">Book List</g:link>
    <g:link class="list" controller="magazine" action="list">Magazine List</g:link>
    <g:link class="list" controller="multimedia" action="list">Multimedia List</g:link>
    <g:link class="list" controller="project" action="list">Project List</g:link>
    <g:link class="list" controller="tesis" action="list">Tesis List</g:link>
    <g:link class="list" controller="tesisprogress" action="list">Tesisprogress List</g:link>
    <g:link class="list" controller="conference" action="list">Conference List</g:link>




</div>

</body>
</html>