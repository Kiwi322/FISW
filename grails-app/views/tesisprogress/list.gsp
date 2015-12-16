<%@ page import="laboratorio.Tesisprogress" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Document List</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul><li><g:link class="create" action="index">Subir nuevo avance</g:link></li></ul>
		</div>
		<div class="content scaffold-list" role="main">
			<h1>Document List</h1>
			<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
			<div class="pagination">
				<g:paginate total="${tesisprogressInstanceTotal}" />
			</div>
		</div>
							<div class="box">
                                <div class="box-header">
                                <i class="icon-book"></i> 
                                <h5>Avances entregados durante el tiempo</h5> 
                                </div>
                                <div class="box-content box-table">
                                    <table class="table table-hover tablesorter">
                                        <thead>
                                            <tr>
                                                <th>Fecha de Subida</th>
                                                <th>Nombre del archivo</th>
                                                <th>Link</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                <g:each in="${tesisprogressInstanceList}" status="i" var="tesisprogressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${tesisprogressInstance.id}"> <g:formatDate date="${tesisprogressInstance.uploadDate}" /></g:link></td>
						<td><g:link action="download" id="${tesisprogressInstance.id}">${tesisprogressInstance.filename}</g:link></td>
						<td><g:fieldValue bean="${tesisprogressInstance}" field="link"/></td>

									
					</tr>
				</g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
	</body>
</html>