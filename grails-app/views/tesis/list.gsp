<%@ page import="laboratorio.Tesis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Document List</title>
	</head>
	<body>
	<div class="page container">
			<div class="container">
				<div class="row">
                        <div class="span16">
                            <div class="box">
                                <div class="box-header">
	                                <i class="icon-book"></i> 
	                                <h5>Tesis</h5> 
	                                </div>
	                                <div class="box-content box-table">
	                                    <table class="table table-hover tablesorter" style="table-layout:fixed">
	                                        <thead>
	                                            <tr>
	                                                <th> Filename </th>
													<th> Upload Date </th>
													<th><g:message code='tesis.cotutor.label' default='Cotutor'/></th>
												
													<th><g:message code='tesis.country.label' default='Country'/></th>
												
													<th><g:message code='tesis.name.label' default='Name'/></th>
																	
													<th><g:message code='tesis.tutor.label' default='Tutor'/></th>

													<th><g:message code='tesis.pregrade.label' default='Pregrade'/></th>

													<th><g:message code='tesis.pregrade.label' default='Owner'/></th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<g:each in="${tesisInstanceList}" status="i" var="tesisInstance">
													<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
														<td style="word-wrap: break-word;"><g:link action="download" id="${tesisInstance.id}">${tesisInstance.filename}</g:link></td>
														<td><g:formatDate date="${tesisInstance.uploadDate}" /></td>
														<td>${fieldValue(bean: tesisInstance, field: "cotutor")}</td>

														<td>${fieldValue(bean: tesisInstance, field: "country")}</td>
													
														<td>${fieldValue(bean: tesisInstance, field: "name")}</td>
													
														<td>${fieldValue(bean: tesisInstance, field: "tutor")}</td>

														<td><g:formatBoolean boolean="${tesisInstance.pregrade}" /></td>

														<td style="word-wrap: break-word;">${fieldValue(bean: tesisInstance, field: "owner")}</td>

																	
													</tr>
												</g:each>
	                                        </tbody>
	                                    </table>
	                                </div>
								</div>
							</div>
						</div>
					</div>
				<div class="pagination">
					<g:paginate total="${tesisInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
	</body>
</html>