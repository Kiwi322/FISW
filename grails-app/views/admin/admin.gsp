
<%@ page contentType="text/html;charset=UTF-8" %>
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
<sec:link controller="lab" expression="hasRole('ROLE_ADMIN')">Modificar Usuarios</sec:link>
<sec:link controller="lab" expression="hasRole('ROLE_USER')">Ver perfiles de usuarios</sec:link>
</body>
</html>