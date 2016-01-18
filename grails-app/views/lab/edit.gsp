
<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page container">
			<div class="container">
			
				<div id="edit-lab" class="content scaffold-edit" role="main">
					
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${labInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${labInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<sec:ifAnyGranted roles="ROLE_ADMIN">
						<g:form url="[resource:labInstance, action:'update']" method="PUT" class="form-horizontal">
							<g:hiddenField name="version" value="${labInstance?.version}" />
							<div class="container">
								<div class="alert alert-block alert-info">
				                    <p>
				                    </p>
				                </div>
							<g:render template="form_admin"/>

							<footer id="submit-actions" class="form-actions">
			                        <button id="submit-button" type="submit" class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}"><g:message code="default.button.save.label" default="Save"/></button>
			                    </footer>
							</div>
						</g:form>
					</sec:ifAnyGranted>
					<sec:ifAnyGranted roles="ROLE_USER">
						<g:form url="[resource:labInstance, action:'update']" method="PUT" class="form-horizontal">
							<g:hiddenField name="version" value="${labInstance?.version}" />
							<div class="container">
								<div class="alert alert-block alert-info">
				                    <p>
				                    </p>
				                </div>
							<g:render template="form_edit"/>

							<footer id="submit-actions" class="form-actions">
			                        <button id="submit-button" type="submit" class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}"><g:message code="default.button.save.label" default="Save"/></button>
			                    </footer>
							</div>
						</g:form>
					</sec:ifAnyGranted>

				</div>
			</div>
		</div>
	</body>
</html>
