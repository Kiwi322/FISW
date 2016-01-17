<%@ page import="laboratorio.Magazine" %>

 <div class="row">
	<div class="span7">
		<fieldset>
			<div class="control-group ">
			    <label class="control-label"><g:message code="magazine.author.label" default="Author" /> <span class="required">*</span></label>
			    <div class="controls">
					<g:textField  name="author" required="" value="${magazineInstance?.author}" class="span4"  autocomplete="false"/>
			    </div>
			</div>
			<div class="control-group ">
			    <label class="control-label"><g:message code="magazine.magazine.label" default="Magazine" /> <span class="required">*</span></label>
			    <div class="controls">
			        <g:textField  name="magazine" required="" value="${magazineInstance?.magazine}" class="span4"  autocomplete="false" />

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
	<div class="span7">
		<fieldset>
			<div class="control-group ">
			    <label class="control-label"><g:message code="magazine.title.label" default="Title" /> <span class="required">*</span></label>
			    <div class="controls">
			         <g:textField name="title" required="" value="${magazineInstance?.title}" class="span4" autocomplete="false"/>

			    </div>
			</div>
			<div class="control-group ">
			    <label class="control-label"><g:message code="magazine.year.label" default="Year" /> <span class="required">*</span></label>
			    <div class="controls">
			         <g:textField name="year" required="" value="${magazineInstance?.year}" class="span4"/>

			    </div>
			</div>
			
            <div class="control-group ">
                <label class="control-label"><g:message code="lab.area.label" default="Area" /><span class="required">*</span></label>
                <div class="controls">
                    <g:select name="area" from="${laboratorio.Area.list()}" optionKey="id" optionValue="name" size="5" value="${labInstance?.area}"/>
                </div>
            </div>
                     
		</fieldset>
	</div>
</div>

	