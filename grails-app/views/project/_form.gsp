<%@ page import="laboratorio.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${projectInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'other', 'error')} required">
	<label for="other">
		<g:message code="project.other.label" default="Other" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="other" required="" value="${projectInstance?.other}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="project.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="position" required="" value="${projectInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'yearfinish', 'error')} required">
	<label for="yearfinish">
		<g:message code="project.yearfinish.label" default="Yearfinish" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="yearfinish" required="" value="${projectInstance?.yearfinish}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'yearstart', 'error')} required">
	<label for="yearstart">
		<g:message code="project.yearstart.label" default="Yearstart" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="yearstart" required="" value="${projectInstance?.yearstart}"/>

</div>

<input type="file" name="file" />