<%@ page import="laboratorio.Multimedia" %>


<div class="fieldcontain ${hasErrors(bean: multimediaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="multimedia.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${multimediaInstance?.name}"/>

</div>

<g:hiddenField name="tipe" value="0" />

<g:hiddenField name="username" value="${sec.username()}" />

<input type="file" name="file" />