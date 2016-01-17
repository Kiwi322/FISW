<%@ page import="laboratorio.Tesisprogress" %>
<%@ page import="laboratorio.Comment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tesisprogress.label', default: 'Tesisprogress')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="page container">
			<div class="container">
		<div id="show-tesisprogress" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tesisprogress">

				<g:if test="${tesisprogressInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="tesisprogress.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${tesisprogressInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${tesisprogressInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="tesisprogress.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="lab" action="show" id="${tesisprogressInstance?.owner?.id}">${tesisprogressInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tesisprogressInstance?.tutor}">
				<li class="fieldcontain">
					<span id="tutor-label" class="property-label"><g:message code="tesisprogress.tutor.label" default="Tutor" /></span>
					
						<span class="property-value" aria-labelledby="tutor-label"><g:link controller="lab" action="show" id="${tesisprogressInstance?.tutor?.id}">${tesisprogressInstance?.tutor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>


								<g:if test="${tesisprogressInstance?.cotutor}">
				<li class="fieldcontain">
					<span id="cotutor-label" class="property-label"><g:message code="tesisprogress.cotutor.label" default="Cotutor" /></span>
					
						<span class="property-value" aria-labelledby="cotutor-label"><g:fieldValue bean="${tesisprogressInstance}" field="cotutor"/></span>
					
				</li>
				</g:if>
			
				<li><g:link controller="tesisprogress" action="download" id="${tesisprogressInstance.id}">${tesisprogressInstance.filename}</g:link></li>

				<g:if test="${tesisprogressInstance?.uploadDate}">
				<li class="fieldcontain">
					<span id="uploadDate-label" class="property-label"><g:message code="tesisprogress.uploadDate.label" default="Upload Date" /></span>
					
						<span class="property-value" aria-labelledby="uploadDate-label"><g:formatDate date="${tesisprogressInstance?.uploadDate}" /></span>
					
				</li>
				</g:if>
</ul>
							<style>
							.visible{
								visibility: visible;
							}

							.hidden{
								visibility: hidden;
							}
							</style>
							<div class="box">
                                <div class="box-header">
                                <i class="icon-book"></i> 
                                <h5>Comentarios</h5> 
                                </div>
                                <div class="box-content box-table">
                                    <table class="table table-hover tablesorter" style="table-layout:fixed">
                                        <thead>
                                            <tr>
                                                <th>Autor</th>
                                                <th>Fecha</th>
                                                <th>Comentario</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <g:each in="${tesisprogressInstance.comments}" var="commentInstance">
                                                <tr data-target="#myModalTesis${commentInstance.id}" data-toggle="modal" class="download-pointer">
                                                    <td><g:link controller="lab" action="show" id="${commentInstance?.owner?.id}">${commentInstance?.owner?.encodeAsHTML()}</g:link></td>
                                                    <td><g:fieldValue bean="${commentInstance}" field="uploadDate"/></td>
                                                    <td style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;"><g:fieldValue bean="${commentInstance}" field="body"/></td>
                                                </tr>
                                                <!-- Modal -->
                                                <div class="modal fade hidden" id="myModalTesis${commentInstance.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Comentario</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="box">
                                                            <div class="box-content">
                                                                <g:if test="${commentInstance?.owner}">
                                                                    <legend class="header">
                                                                        <g:message code="Definir etiqueta" default="Autor" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${commentInstance}" field="owner"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${commentInstance?.uploadDate}">
                                                                    <legend class="header">
                                                                        <g:message code="Definir etiqueta" default="Fecha de subida" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${commentInstance}" field="uploadDate"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${commentInstance?.body}">
                                                                    <legend class="header">
                                                                        <g:message code="Definir etiqueta" default="Comentario" />
                                                                    </legend>
                                                                    <div class="box-content" style="word-wrap: break-word;">
                                                                        <g:fieldValue bean="${commentInstance}" field="body"/>
                                                                    </div>
                                                                </g:if>
                                                            </div>
                                                        </div>
                                                        
                                                      </div>
                                                     <!--<div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>-->
                                                    </div>
                                                  </div>
                                                </div>
                                                
                                            </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>				
			
			</ol>

				<g:form url="[resource:commentInstance, action:'save']" >
					<fieldset class="form">
						<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'body', 'error')} required">
				<label for="body">
				</label>
				<g:textArea class="span16" name="body" cols="40" rows="5" maxlength="8000" required="" value="${commentInstance?.body}"/>

				<g:hiddenField name="tesisprogress.id" value="${tesisprogressInstance?.id}" />


			</div>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="../comment/save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
</div>

	</body>
</html>
