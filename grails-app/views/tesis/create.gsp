<%@ page import="laboratorio.Tesis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.new.tesis.label"/></title>
	</head>
	<body>
		<div class="page container">
			<div class="container">
			

			<g:form url="[resource:tesisInstance, action:'upload']"  enctype="multipart/form-data" class="form-horizontal">
				<div class="container">
					<div class="alert alert-block alert-info">
	                    <p>
	                       Ingresa la información de la nueva tesis. Los campos marcados con asterisco son obligatorios.	
	                    </p>
	                </div>
				<g:render template="form"/>

				<footer id="submit-actions" class="form-actions">
                        <button id="submit-button" type="submit" class="btn btn-primary" name="action" value="CONFIRM"><g:message code="default.button.save.label" default="Save"/></button>
                    </footer>
				</div>
			</g:form>
			</div>
		</div>
		
	</body>
</html>