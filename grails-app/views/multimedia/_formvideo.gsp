<%@ page import="laboratorio.Multimedia" %>

 <div class="row">
	<div class="span7">
		<fieldset>
			<div class="control-group ">
			    <label class="control-label"><g:message code="multimedia.name.label" default="Name" /> <span class="required">*</span></label>
			    <div class="controls">
					<g:textField  name="name" required="" value="${multimediaInstance?.name}" class="span4"  autocomplete="false"/>
			    </div>
			</div>			
			
		</fieldset>
	</div>
	<div class="span7">
		<fieldset>
			<div class="control-group ">
                <label class="control-label"><g:message code="tesis.document.label" default="Document" /> <span class="required">*</span></label>
                <div class="controls">
                	<input type="file" name="file" required="" class="span4" autocomplete="false"/>

                </div>
            </div>
            <g:hiddenField name="tipe" value="1" />

<g:hiddenField name="username" value="${sec.username()}" />
                     
		</fieldset>
	</div>
</div>

	