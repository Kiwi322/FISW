<%@ page import="usuario.Lab" %>

 <div class="row">
	<div class="span7">
		<fieldset>
			<legend><g:message code="default.sign.up.label.personal.information"  /></legend><br>
			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.email.label" default="Email" /> <span class="required">*</span></label>
			    <div class="controls">
					<g:textField name="username" class="span4" required="" value="${labInstance?.username}" autocomplete="false"/>
			    </div>
			</div>
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
			    <label class="control-label"><g:message code="lab.carrer.label" default="Carrer" /><span class="required">*</span></label>
			    <div class="controls">
					<g:textField name="carrer" class="span4" required="" value="${labInstance?.carrer}" autocomplete="false"/>
			    </div>
			</div>
			<div class="control-group ">
			    <label class="control-label"><g:message code="lab.country.label" default="Country" /><span class="required">*</span></label>
			    <div class="controls">
					<g:textField name="country" required="" value="${labInstance?.country}" class="span4"/>
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
            <div class="control-group ">
                <label class="control-label"><g:message code="lab.accountExpired.label" default="Account Expired" /><span class="required">*</span></label>
                <div class="controls">
                    <g:checkBox name="accountExpired" value="${labInstance?.accountExpired}" class="span4" />
                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="lab.accountLocked.label" default="Account Locked" /><span class="required">*</span></label>
                <div class="controls">
                    <g:checkBox name="accountLocked" value="${labInstance?.accountLocked}" class="span4"/>
                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="lab.enabled.label" default="Enabled" /><span class="required">*</span></label>
                <div class="controls">
                   <g:checkBox name="enabled" value="${labInstance?.enabled}" class="span4"/>
                </div>
            </div>
            <div class="control-group ">
                <label class="control-label"><g:message code="lab.passwordExpired.label" default="Password Expired" /><span class="required">*</span></label>
                <div class="controls">
                    <g:checkBox name="passwordExpired" value="${labInstance?.passwordExpired}" class="span4"/>
                </div>
            </div>
           
                     
		</fieldset>
	</div>
</div>

