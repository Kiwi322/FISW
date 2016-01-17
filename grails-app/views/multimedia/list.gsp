<%@ page import="laboratorio.Multimedia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Document List</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul><li><g:link class="create" action="index">Upload New Document</g:link></li></ul>
		</div>
		<div class="content scaffold-list" role="main">
			<h1>Document List</h1>
			<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="filename" title="Filename" />
						<g:sortableColumn property="uploadDate" title="Upload Date" />

						<g:sortableColumn property="author" title="${message(code: 'multimedia.name.label', default: 'Name')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${multimediaInstanceList}" status="i" var="multimediaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${multimediaInstance.id}">${multimediaInstance.filename}</g:link></td>
						<td><g:formatDate date="${multimediaInstance.uploadDate}" /></td>

						<td>${fieldValue(bean: multimediaInstance, field: "name")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${multimediaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>