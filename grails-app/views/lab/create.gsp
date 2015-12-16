<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.sign.up.label" /></title>
	</head>
	<body>
		 <section class="page container">
			<!--<h1><g:message code="default.sign.up.label"  /></h1>-->
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
			
				<g:form url="[resource:labInstance, action:'save']" class="form-horizontal"  >
				 <div class="container">
				 <div class="alert alert-block alert-info">
                        <p>
                            <g:message code="default.sign.up.message"/>
                        </p>
                    </div>
                   
					<g:render template="form"/>
				

					<footer class="form-actions">
	                        <g:submitButton  type="submit" class="btn btn-primary" name="create"  value="${message(code: 'default.button.create.label', default: 'Create')}" />
	                        <a href="../" class="btn" value="CANCEL"><g:message code="default.button.cancel.label"/></a>	                       
	                </footer>
	             </div>
				</g:form>
			</div>
		</section>	
	</body>
</html>
