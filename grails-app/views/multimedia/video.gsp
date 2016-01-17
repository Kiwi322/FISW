<%@ page import="laboratorio.Multimedia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Upload New Document</title>
	</head>
	<body>
		<div class="page container">
			<div class="container">

			<g:form url="[resource:multimediaInstance, action:'upload']" class="form-horizontal">
				<div class="container">
					<div class="alert alert-block alert-info">
	                    <p>
	                       Sube un nuevo documento. Los campos marcados con asterisco son obligatorios.	
	                    </p>
	                </div>
				<g:render template="formvideo"/>

				<footer id="submit-actions" class="form-actions">
                        <button id="submit-button" type="submit" class="btn btn-primary" name="action" value="CONFIRM"><g:message code="default.button.save.label" default="Save"/></button>
                    </footer>
				</div>
			</g:form>
			</div>
		</div>
	</body>
</html>