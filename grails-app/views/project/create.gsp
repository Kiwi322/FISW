<%@ page import="laboratorio.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.new.project.label" default="New project"/></title>
	</head>
	<body>
		<div class="page container">
			<div class="container">
			

			<g:form url="[resource:projectInstance, action:'upload']"  enctype="multipart/form-data" class="form-horizontal">
				<div class="container">
					<div class="alert alert-block alert-info">
	                    <p>
	                       <g:message code="default.new.project.message"/>	
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