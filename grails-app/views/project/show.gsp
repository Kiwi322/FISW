<%@ page import="laboratorio.Project" %>
<%@ page import="laboratorio.Collaborator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">

			

				<li><g:link controller="project" action="download" id="${projectInstance.id}">${projectInstance.filename}</g:link></li>

				<g:if test="${projectInstance?.uploadDate}">
				<li class="fieldcontain">
					<span id="uploadDate-label" class="property-label"><g:message code="project.uploadDate.label" default="Upload Date" /></span>
					
						<span class="property-value" aria-labelledby="uploadDate-label"><g:formatDate date="${projectInstance?.uploadDate}" /></span>
					
				</li>
				</g:if>
</ul>
							<div class="box">
                                <div class="box-header">
                                <i class="icon-book"></i> 
                                <h5>Colaboradores</h5> 
                                </div>
                                <div class="box-content box-table">
                                    <table class="table table-hover tablesorter">
                                        <thead>
                                            <tr>
                                                <th>Colaborador</th>
                                                <th>Eliminar</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <g:each in="${projectInstance.collaborators}" var="collaboratorsInstance">
                                                <tr>
                                                    <td><g:link controller="lab" action="show" id="${collaboratorsInstance?.user?.id}">${collaboratorsInstance?.user?.encodeAsHTML()}</g:link></td>
                                                </tr>
                                                 <tr>
                                                 	<td>
													<g:form  url="[action:'delete',controller:'collaborator', resource:collaboratorsInstance]" method="DELETE">
														<fieldset class="buttons">
															<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /> 
														</fieldset>
													</g:form>
													</td>
                                                </tr>

                                            </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>				
			
			</ol>

				<g:form url="[resource:collaboratorsInstance, controller:'collaborator', action:'save']" method="POST">		
				<fieldset class="form">
					<g:message code="tesisprogress.user.label" default="Agregar Colaborador" />
					<g:select id="user" name="user.id" from="${usuario.Lab.list()}" optionKey="id" required="" optionValue="fullName" class="many-to-one"/>
					<g:hiddenField name="proj.id" value="${projectInstance?.id}" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="../comment/save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>

	</body>
</html>
