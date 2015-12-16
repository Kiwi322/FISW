
<%@ page import="laboratorio.Tesisprogress" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tesisprogress.label', default: 'Tesisprogress')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tesisprogress" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul><li><g:link class="create" action="index">Subir nuevo avance</g:link></li></ul>
			<ul><li><g:link class="list" action="list">Ver avances</g:link></li></ul>
		</div>
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
			
				<g:if test="${tesisprogressInstance?.uploadDate}">
				<li class="fieldcontain">
					<span id="uploadDate-label" class="property-label"><g:message code="tesisprogress.uploadDate.label" default="Upload Date" /></span>
					
						<span class="property-value" aria-labelledby="uploadDate-label"><g:formatDate date="${tesisprogressInstance?.uploadDate}" /></span>
					
				</li>
				</g:if>
</ul>

							<div class="box">
                                <div class="box-header">
                                <i class="icon-book"></i> 
                                <h5>Comentarios</h5> 
                                </div>
                                <div class="box-content box-table">
                                    <table class="table table-hover tablesorter">
                                        <thead>
                                            <tr>
                                                <th>Autor</th>
                                                <th>Fecha</th>
                                                <th>Comentario</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <g:each in="${tesisprogressInstance.comments}" var="commentInstance">
                                                <tr>
                                                    <td><g:link controller="lab" action="show" id="${commentInstance?.owner?.id}">${commentInstance?.owner?.encodeAsHTML()}</g:link></td>
                                                    <td><g:fieldValue bean="${commentInstance}" field="uploadDate"/></td>
                                                    <td><g:fieldValue bean="${commentInstance}" field="body"/></td>
                                                </tr>
                                                
                                            </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>				
			
			</ol>
			<g:form url="[resource:tesisprogressInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tesisprogressInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
				<li class="add">
				<g:link controller="comment" action="create" params="['tesisprogress.id': tesisprogressInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
				</li>
			</g:form>
		</div>

	</body>
</html>
