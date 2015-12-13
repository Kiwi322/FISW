<%@ page import="laboratorio.Book" %>


<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${bookInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'editorial', 'error')} required">
	<label for="editorial">
		<g:message code="book.editorial.label" default="Editorial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="editorial" required="" value="${bookInstance?.editorial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isbn', 'error')} required">
	<label for="isbn">
		<g:message code="book.isbn.label" default="Isbn" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="isbn" required="" value="${bookInstance?.isbn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'uploadDate', 'error')} required">
	<label for="uploadDate">
		<g:message code="book.uploadDate.label" default="Upload Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="uploadDate" precision="day"  value="${bookInstance?.uploadDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="book.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="year" required="" value="${bookInstance?.year}"/>

</div>

<input type="file" name="file" />