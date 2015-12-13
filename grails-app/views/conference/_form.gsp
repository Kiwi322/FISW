<%@ page import="laboratorio.Conference" %>


<div class="fieldcontain ${hasErrors(bean: conferenceInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="conference.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${conferenceInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conferenceInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="conference.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${conferenceInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conferenceInstance, field: 'datefinish', 'error')} required">
	<label for="datefinish">
		<g:message code="conference.datefinish.label" default="Datefinish" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="datefinish" required="" value="${conferenceInstance?.datefinish}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conferenceInstance, field: 'datestart', 'error')} required">
	<label for="datestart">
		<g:message code="conference.datestart.label" default="Datestart" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="datestart" required="" value="${conferenceInstance?.datestart}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conferenceInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="conference.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${conferenceInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conferenceInstance, field: 'uploadDate', 'error')} required">
	<label for="uploadDate">
		<g:message code="conference.uploadDate.label" default="Upload Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="uploadDate" precision="day"  value="${conferenceInstance?.uploadDate}"  />

</div>

<input type="file" name="file" />