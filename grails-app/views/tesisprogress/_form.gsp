<%@ page import="laboratorio.Tesisprogress" %>

 <div class="row">
	<div class="span7">
		<fieldset>
			<div class="control-group ">
			    <label class="control-label"><g:message code="tesisprogress.tutor.label" default="Tutor" /><span class="required">*</span></label>
			    <div class="controls">
			   		<g:select id="tutor" name="tutor.id" from="${usuario.Lab.list()}" optionKey="id" required="" value="${tesisprogressInstance?.tutor?.id}" class="chosen span4"/>	
			   </div>
			</div>
			<div class="control-group ">
			    <label class="control-label"><g:message code="tesisprogress.cotutor.label" default="Cotutor" /> <span class="required">*</span></label>
			    <div class="controls">
			         <g:textField name="cotutor" required="" value="${tesisprogressInstance?.cotutor}" class="span4"/>

			    </div>
			</div>
		</fieldset>
	</div>
	<div class="span7">
		<fieldset>
			<div id="link-container" class="control-group">
			    <label class="control-label">Subir Link</label>
			    <div class="controls">
					<g:radio id="link-radio"  value="1" class="span4" checked="true"/>
			    </div>
			</div>
			<div id="link-container" class="control-group">
			    <label class="control-label">Subir Archivo</label>
			    <div class="controls">
					<g:radio id="file-radio"  value="1" class="span4"/>
			    </div>
			</div>			
			<div id="link-container" class="control-group">
			    <label class="control-label"><g:message code="tesisprogress.link.label" default="Link" /> <span class="required">*</span></label>
			    <div class="controls">
					<g:textField  id="link" name="link" value="${tesisprogressInstance?.link}" required="" class="span4"  autocomplete="false"/>
			    </div>
			</div>
			<div id="file-container" class="control-group ">
                <label class="control-label"><g:message code="tesis.document.label" default="Document" /> <span class="required">*</span></label>
                <div class="controls">
                	<input id="file" type="file" name="file" required="" class="span4" autocomplete="false" disabled="true" />

                </div>
            </div>
                     
		</fieldset>
	</div>
</div>

<script>
	function clearFileInput(id) 
	{ 
	    var oldInput = document.getElementById(id); 

	    var newInput = document.createElement("input"); 

	    newInput.type = "file"; 
	    newInput.id = oldInput.id; 
	    newInput.name = oldInput.name; 
	    newInput.className = oldInput.className; 
	    newInput.style.cssText = oldInput.style.cssText; 
	    // TODO: copy any other relevant attributes 

	    oldInput.parentNode.replaceChild(newInput, oldInput); 
	}
	document.getElementById('link-radio').addEventListener("click", function(){
		clearFileInput("file");
		document.getElementById('file').disabled=true;
		document.getElementById('link').disabled=false;
	});
	document.getElementById('file-radio').addEventListener("click", function(){
		document.getElementById('link').value="";
		document.getElementById('link').disabled=true;
		document.getElementById('file').disabled=false;
	});
	
</script>

	