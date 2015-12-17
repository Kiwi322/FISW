<%@ page import="laboratorio.Project" %>

<div class="row">
	<div  class="span8">
		<fieldset>
			<div class="control-group ">
                <label class="control-label"><g:message code="project.name.label" default="Name" /> <span class="required">*</span></label>
                <div class="controls">
                	<g:textField name="name" required="" value="${projectInstance?.name}" class="span4" autocomplete="false"/>

                </div>
            </div>
			<div class="control-group ">
                <label class="control-label"><g:message code="project.other.label" default="Other" /> <span class="required">*</span></label>
                <div class="controls">
					<g:textField name="other" required="" value="${projectInstance?.other}" class="span4" autocomplete="false"/>

                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="project.position.label" default="Position" /> <span class="required">*</span></label>
                <div class="controls">
                	<g:textField name="position" required="" value="${projectInstance?.position}" class="span4" autocomplete="false"/>

                </div>
            </div>
        </fieldset>
	</div>
	<div class="span8">
		<fieldset>
            <div class="control-group ">
                <label class="control-label"><g:message code="project.yearstart.label" default="Start year" /> <span class="required">*</span></label>
                <div class="controls">
					<g:textField name="yearstart" required="" value="${projectInstance?.yearstart}" class="span4" autocomplete="false"/>

                </div>
            </div>
			<div class="control-group ">
                <label class="control-label"><g:message code="project.yearfinish.label" default="End year" /> <span class="required">*</span></label>
                <div class="controls">
                	<g:textField name="yearfinish" class="span4" required="" value="${projectInstance?.yearfinish}" autocomplete="false"/>

                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="project.document.label" default="Document" /> <span class="required">*</span></label>
                <div class="controls">
                	<input type="file" name="file" required="" class="span4" autocomplete="false"/>

                </div>
            </div>	
		</fieldset>
	</div>
</div>