
<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-lab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-lab" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'lab.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="nombres" title="${message(code: 'lab.nombres.label', default: 'Nombres')}" />

						<g:sortableColumn property="apellidos" title="${message(code: 'lab.apellidos.label', default: 'Apellidos')}" />
						<sec:ifAnyGranted roles="ROLE_ADMIN">
							<g:sortableColumn property="accountLocked" title="${message(code: 'lab.accountLocked.label', default: 'Account Locked')}" />
						</sec:ifAnyGranted>
					</tr>
				</thead>
				<tbody>
				<g:each in="${labInstanceList}" status="i" var="labInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${labInstance.id}">${fieldValue(bean: labInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: labInstance, field: "nombres")}</td>

						<td>${fieldValue(bean: labInstance, field: "apellidos")}</td>
						<sec:ifAnyGranted roles="ROLE_ADMIN">
							<td><g:formatBoolean boolean="${labInstance.accountLocked}" /></td>
						</sec:ifAnyGranted>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${labInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
