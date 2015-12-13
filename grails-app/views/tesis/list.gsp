<%@ page import="laboratorio.Tesis" %>
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
						<g:sortableColumn property="cotutor" title="${message(code: 'tesis.cotutor.label', default: 'Cotutor')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'tesis.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'tesis.name.label', default: 'Name')}" />
										
						<g:sortableColumn property="tutor" title="${message(code: 'tesis.tutor.label', default: 'Tutor')}" />

						<g:sortableColumn property="pregrade" title="${message(code: 'tesis.pregrade.label', default: 'Pregrade')}" />

						<g:sortableColumn property="pregrade" title="${message(code: 'tesis.pregrade.label', default: 'Owner')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${tesisInstanceList}" status="i" var="tesisInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${tesisInstance.id}">${tesisInstance.filename}</g:link></td>
						<td><g:formatDate date="${tesisInstance.uploadDate}" /></td>
						<td>${fieldValue(bean: tesisInstance, field: "cotutor")}</td>

						<td>${fieldValue(bean: tesisInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: tesisInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: tesisInstance, field: "tutor")}</td>

						<td><g:formatBoolean boolean="${tesisInstance.pregrade}" /></td>

						<td>${fieldValue(bean: tesisInstance, field: "owner")}</td>

									
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tesisInstanceTotal}" />
			</div>
		</div>
	</body>
</html>