<%@ page import="usuario.Lab" %>



<div class="fieldcontain ${hasErrors(bean: labInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="lab.username.label" default="Username" />
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

