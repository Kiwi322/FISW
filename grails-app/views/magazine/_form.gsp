<%@ page import="laboratorio.Magazine" %>



<div class="fieldcontain ${hasErrors(bean: magazineInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="magazine.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" required="" value="${magazineInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: magazineInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="magazine.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${magazineInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: magazineInstance, field: 'magazine', 'error')} required">
	<label for="magazine">
		<g:message code="magazine.magazine.label" default="Magazine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="magazine" required="" value="${magazineInstance?.magazine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: magazineInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="magazine.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${magazineInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: magazineInstance, field: 'uploadDate', 'error')} required">
	<label for="uploadDate">
		<g:message code="magazine.uploadDate.label" default="Upload Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="uploadDate" precision="day"  value="${magazineInstance?.uploadDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: magazineInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="magazine.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="year" required="" value="${magazineInstance?.year}"/>

</div>

<input type="file" name="file" />