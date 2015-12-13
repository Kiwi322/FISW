<%@ page import="laboratorio.Project" %>
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

						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="other" title="${message(code: 'project.other.label', default: 'Other')}" />
					
						<g:sortableColumn property="position" title="${message(code: 'project.position.label', default: 'Position')}" />
					
						<g:sortableColumn property="yearfinish" title="${message(code: 'project.yearfinish.label', default: 'Yearfinish')}" />
					
						<g:sortableColumn property="yearstart" title="${message(code: 'project.yearstart.label', default: 'Yearstart')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${projectInstance.id}">${projectInstance.filename}</g:link></td>
						<td><g:formatDate date="${projectInstance.uploadDate}" /></td>

						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "other")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "position")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "yearfinish")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "yearstart")}</td>

									
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>