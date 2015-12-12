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

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="lab.area.label" default="Investigation Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" required="" value="${labInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'carrer', 'error')} required">
	<label for="carrer">
		<g:message code="lab.carrer.label" default="Carrer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="carrer" required="" value="${labInstance?.carrer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="lab.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${labInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="lab.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="position" required="" value="${labInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'university', 'error')} required">
	<label for="university">
		<g:message code="lab.university.label" default="University" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="university" required="" value="${labInstance?.university}"/>

</div>
