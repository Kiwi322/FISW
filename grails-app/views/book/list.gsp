<%@ page import="laboratorio.Book" %>
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

						<g:sortableColumn property="author" title="${message(code: 'book.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="editorial" title="${message(code: 'book.editorial.label', default: 'Editorial')}" />
					
						<g:sortableColumn property="isbn" title="${message(code: 'book.isbn.label', default: 'Isbn')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${bookInstance.id}">${bookInstance.filename}</g:link></td>
						<td><g:formatDate date="${bookInstance.uploadDate}" /></td>

						<td>${fieldValue(bean: bookInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "editorial")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "isbn")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "title")}</td>
									
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceTotal}" />
			</div>
		</div>
	</body>
</html>