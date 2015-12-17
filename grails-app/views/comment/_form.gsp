<%@ page import="laboratorio.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'body', 'error')} required">
	<label for="body">
		<g:message code="comment.body.label" default="Body" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="body" cols="40" rows="5" maxlength="8000" required="" value="${commentInstance?.body}"/>

</div>

<g:hiddenField name="tesisprogress" value="${tesisprogressid}" />
