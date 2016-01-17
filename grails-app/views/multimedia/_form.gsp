<%@ page import="laboratorio.Multimedia" %>


<div class="fieldcontain ${hasErrors(bean: multimediaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="multimedia.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${multimediaInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tesisprogressInstance, field: 'tipe', 'error')} ">
	<label for="tipe">
		<g:message code="multimedia.perfil.label" default="Foto de perfil?" />
		
	</label>
	<g:checkBox name="profile"/>
</div>

<g:hiddenField name="tipe" value="1" />

<g:hiddenField name="username" value="${sec.username()}" />

<input type="file" name="file" />