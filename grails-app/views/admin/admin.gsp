
<%@ page import="usuario.Lab" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="dashboard.header" default="Welcome to Grails Webinar"/> </title>
    <style type="text/css" media="screen">
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }
    </style>
</head>
<body>
<g:if test="${Lab.countByAccountLocked(true) >0}" > Solicitud de cuenta pendientes</g:if>
<sec:link controller="lab" expression="hasRole('ROLE_ADMIN')"><p>Modificar Usuarios</p></sec:link>
</body>
</html>