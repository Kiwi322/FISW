
<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-lab" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-lab" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list lab">
			
				<g:if test="${labInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="lab.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${labInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${labInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="lab.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${labInstance}" field="nombres"/></span>
					
				</li>
				</g:if>

				<g:if test="${labInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="lab.area.label" default="Investigation Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${labInstance}" field="area"/></span>
					
				</li>
				</g:if>

				<g:if test="${labInstance?.carrer}">
				<li class="fieldcontain">
					<span id="carrer-label" class="property-label"><g:message code="lab.carrer.label" default="Carrer" /></span>
					
						<span class="property-value" aria-labelledby="carrer-label"><g:fieldValue bean="${labInstance}" field="carrer"/></span>
					
				</li>
				</g:if>

				<g:if test="${labInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="lab.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${labInstance}" field="country"/></span>
					
				</li>
				</g:if>

				<g:if test="${labInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="lab.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${labInstance}" field="position"/></span>
					
				</li>
				</g:if>

				<g:if test="${labInstance?.university}">
				<li class="fieldcontain">
					<span id="university-label" class="property-label"><g:message code="lab.university.label" default="Univesity" /></span>
					
						<span class="property-value" aria-labelledby="university-label"><g:fieldValue bean="${labInstance}" field="university"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${labInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="lab.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${labInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>

				<sec:ifAnyGranted roles="ROLE_ADMIN">
				<g:if test="${labInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="lab.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${labInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${labInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="lab.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${labInstance?.enabled}" /></span>
					
				</li>
				</g:if>
				</sec:ifAnyGranted>

			
			</ol>
			<g:if test="${labInstance.username.toString() == sec.loggedInUserInfo(field: 'username').toString()}">
			<g:form url="[resource:labInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${labInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</g:if>
			<sec:ifAnyGranted roles="ROLE_ADMIN">
			<g:form url="[resource:labInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${labInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</sec:ifAnyGranted>
		</div>
	</body>
</html>
