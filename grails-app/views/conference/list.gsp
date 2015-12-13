<%@ page import="laboratorio.Conference" %>
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

						<g:sortableColumn property="city" title="${message(code: 'conference.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'conference.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="datefinish" title="${message(code: 'conference.datefinish.label', default: 'Datefinish')}" />
					
						<g:sortableColumn property="datestart" title="${message(code: 'conference.datestart.label', default: 'Datestart')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${conferenceInstanceList}" status="i" var="conferenceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="download" id="${conferenceInstance.id}">${conferenceInstance.filename}</g:link></td>
						<td><g:formatDate date="${conferenceInstance.uploadDate}" /></td>
						
						<td>${fieldValue(bean: conferenceInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "datefinish")}</td>
					
						<td>${fieldValue(bean: conferenceInstance, field: "datestart")}</td>

									
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conferenceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>