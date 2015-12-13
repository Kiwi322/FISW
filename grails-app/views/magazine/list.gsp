<%@ page import="laboratorio.Magazine" %>
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
						
						<g:sortableColumn property="area" title="${message(code: 'magazine.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'magazine.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="magazine" title="${message(code: 'magazine.magazine.label', default: 'Magazine')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'magazine.title.label', default: 'Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${magazineInstanceList}" status="i" var="magazineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${magazineInstance.id}">${magazineInstance.filename}</g:link></td>
						<td><g:formatDate date="${magazineInstance.uploadDate}" /></td>
						
						<td>${fieldValue(bean: magazineInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: magazineInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: magazineInstance, field: "magazine")}</td>
					
						<td>${fieldValue(bean: magazineInstance, field: "title")}</td>

									
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${magazineInstanceTotal}" />
			</div>
		</div>
	</body>
</html>