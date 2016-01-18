<%@ page import="usuario.Lab" %>

 <div class="row">
	<div class="span7">
		<fieldset>
			<legend><g:message code="default.sign.up.label.personal.information"  /></legend><br>
			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.nombres.label" default="Nombres" /> <span class="required">*</span></label>
			    <div class="controls">
			        <g:textField  name="nombres" class="span4" required="" value="${labInstance?.nombres}" autocomplete="false" />

			    </div>
			</div>
			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.apellidos.label" default="Apellidos" /> <span class="required">*</span></label>
			    <div class="controls">
			         <g:textField name="apellidos" class="span4" required="" value="${labInstance?.apellidos}" autocomplete="false"/>

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
	<div class="span7">
		<fieldset>
			<legend><g:message code="default.sign.up.label.career.information"  /></legend><br>

			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.carrer.label" default="Carrer" /><span class="required">*</span></label>
			    <div class="controls">
					<g:textField name="carrer" class="span4" required="" value="${labInstance?.carrer}" autocomplete="false"/>
			    </div>
			</div>

			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.country.label" default="Country" /><span class="required">*</span></label>
			    <div class="controls">
					<g:textField name="country" required="" value="${labInstance?.country}" class="span4" autocomplete="false"/>
			    </div>
			</div>

			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.position.label" default="Position" /><span class="required">*</span></label>
			    <div class="controls">
					<g:textField name="position" class="span4" required="" value="${labInstance?.position}" autocomplete="false"/>
			 	</div>
			</div>
			<div class="control-group ">
                            <label class="control-label"><g:message code="lab.university.label" default="University" /><span class="required">*</span></label>
                            <div class="controls">
                                <g:textField name="university" class="span4" required="" value="${labInstance?.university}" autocomplete="false"/>
                            </div>
                        </div>
                        
                     
		</fieldset>
	</div>
</div>

