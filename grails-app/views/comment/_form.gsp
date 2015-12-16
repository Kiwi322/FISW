<%@ page import="laboratorio.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'body', 'error')} required">
	<label for="body">
		<g:message code="comment.body.label" default="Body" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="body" cols="40" rows="5" maxlength="8000" required="" value="${commentInstance?.body}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="comment.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${usuario.Lab.list()}" optionKey="id" required="" value="${commentInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'tesisprogress', 'error')} required">
	<label for="tesisprogress">
		<g:message code="comment.tesisprogress.label" default="Tesisprogress" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tesisprogress" name="tesisprogress.id" from="${laboratorio.Tesisprogress.list()}" optionKey="id" required="" value="${commentInstance?.tesisprogress?.id}" class="many-to-one"/>

</div>


