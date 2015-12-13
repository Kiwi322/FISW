<%@ page import="laboratorio.Tesis" %>



<div class="fieldcontain ${hasErrors(bean: tesisInstance, field: 'cotutor', 'error')} required">
	<label for="cotutor">
		<g:message code="tesis.cotutor.label" default="Cotutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cotutor" required="" value="${tesisInstance?.cotutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tesisInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="tesis.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${tesisInstance?.country}"/>

</div>




<div class="fieldcontain ${hasErrors(bean: tesisInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tesis.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tesisInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tesisInstance, field: 'pregrade', 'error')} ">
	<label for="pregrade">
		<g:message code="tesis.pregrade.label" default="Pregrade" />
		
	</label>
	<g:checkBox name="pregrade" value="${tesisInstance?.pregrade}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tesisInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="tesis.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tutor" required="" value="${tesisInstance?.tutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tesisInstance, field: 'university', 'error')} required">
	<label for="university">
		<g:message code="tesis.university.label" default="University" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="university" required="" value="${tesisInstance?.university}"/>

</div>

				<input type="file" name="file" />