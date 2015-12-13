<%@ page import="laboratorio.Magazine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Upload New Document</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul><li><g:link class="list" action="list">Document List</g:link></li></ul>
		</div>
		<div class="content scaffold-create" role="main">
			<h1>Upload New Document</h1>
			<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>

			<g:form url="[resource:magazineInstance, action:'upload']"  enctype="multipart/form-data">
				<fieldset class="form">
				<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="upload" class="save" value="Upload" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>