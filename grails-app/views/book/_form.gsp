<%@ page import="laboratorio.Book" %>

<div class="row">
	<div  class="span8">
		<fieldset>
			<div class="control-group ">
                <label class="control-label"><g:message code="book.author.label" default="Author" /> <span class="required">*</span></label>
                <div class="controls">
                	<g:textField name="author" required="" value="${bookInstance?.author}" class="span4" autocomplete="false"/>

                </div>
            </div>
			<div class="control-group ">
                <label class="control-label"><g:message code="book.editorial.label" default="Editorial" /> <span class="required">*</span></label>
                <div class="controls">
					<g:textField name="editorial" required="" value="${bookInstance?.editorial}" class="span4" autocomplete="false"/>

                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="tesis.document.label" default="Document" /> <span class="required">*</span></label>
                <div class="controls">
                	<input type="file" name="file" required="" class="span4" autocomplete="false"/>

                </div>
            </div>
        </fieldset>
	</div>
	<div class="span8">
		<fieldset>
            <div class="control-group ">
                <label class="control-label"><g:message code="book.isbn.label" default="Isbn" /> <span class="required">*</span></label>
                <div class="controls">
					<g:textField name="isbn" required="" value="${bookInstance?.isbn}" class="span4" autocomplete="false"/>

                </div>
            </div>
			<div class="control-group ">
                <label class="control-label"><g:message code="book.title.label" default="Title" /> <span class="required">*</span></label>
                <div class="controls">
                	<g:textField name="title" required="" value="${bookInstance?.title}" class="span4" autocomplete="false"/>

                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="book.year.label" default="Year" /> <span class="required">*</span></label>
                <div class="controls">
                	<g:textField name="year" required="" value="${bookInstance?.year}" class="span4" autocomplete="false"/>

                </div>
            </div>			
		</fieldset>
	</div>
</div>
