<%@ page import="laboratorio.Collaborator" %>



<div class="fieldcontain ${hasErrors(bean: collaboratorInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="collaborator.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${usuario.Lab.list()}" optionKey="id" required="" value="${collaboratorInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: collaboratorInstance, field: 'proj', 'error')} required">
	<label for="proj">
		<g:message code="collaborator.proj.label" default="Proj" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proj" name="proj.id" from="${laboratorio.Project.list()}" optionKey="id" required="" value="${collaboratorInstance?.proj?.id}" class="many-to-one"/>

</div>

