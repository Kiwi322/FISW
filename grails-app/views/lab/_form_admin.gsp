<%@ page import="usuario.Lab" %>



<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'username', 'error')} required">
	<label for="email">
		<g:message code="lab.email.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${labInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="lab.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${labInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="lab.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" required="" value="${labInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="lab.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${labInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="lab.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${labInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="lab.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" required="" value="${labInstance?.apellidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="lab.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${labInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="lab.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${labInstance?.passwordExpired}" />

</div>

<g:select name="area" from="${laboratorio.Area.list()}" optionKey="id" optionValue="name" size="5" value="${labInstance?.area}"/>

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
