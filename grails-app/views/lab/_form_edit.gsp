<%@ page import="usuario.Lab" %>



<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="lab.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" required="" value="${labInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="lab.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" required="" value="${labInstance?.apellidos}"/>

</div>

