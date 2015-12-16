<%@ page import="laboratorio.Tesisprogress" %>


<div class="fieldcontain ${hasErrors(bean: tesisprogressInstance, field: 'link', 'error')} ">
	<label for="link">
		<g:message code="tesisprogress.link.label" default="Link" />
		
	</label>
	<g:textField name="link" value="${tesisprogressInstance?.link}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tesisprogressInstance, field: 'cotutor', 'error')} required">
	<label for="cotutor">
		<g:message code="tesisprogress.cotutor.label" default="Cotutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cotutor" required="" value="${tesisprogressInstance?.cotutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tesisprogressInstance, field: 'tipe', 'error')} ">
	<label for="tipe">
		<g:message code="tesisprogress.tipe.label" default="Tipe" />
		
	</label>
	<g:checkBox name="tipe" value="${tesisprogressInstance?.tipe}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tesisprogressInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="tesisprogress.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tutor" name="tutor.id" from="${usuario.Lab.list()}" optionKey="id" required="" value="${tesisprogressInstance?.tutor?.id}" class="many-to-one"/>

</div>


<input type="file" name="file" />