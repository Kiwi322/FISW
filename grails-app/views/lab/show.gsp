<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
		<title><g:fieldValue bean="${labInstance}" field="nombres"/> <g:fieldValue bean="${labInstance}" field="apellidos"/></title>
	</head>
	<body>
		<div class="page-container">
				<div class="container">
                	<div class="row">
                		<div class="span16">
                			<legend style="margin: 0;"><g:fieldValue bean="${labInstance}" field="nombres"/> <g:fieldValue bean="${labInstance}" field="apellidos"/></legend><br>
                		</div>
                	</div>
                	<sec:ifAnyGranted roles="ROLE_ADMIN">
						<div class="row">
							<div class="span16">
							<g:form url="[resource:labInstance, action:'delete']" method="DELETE">
									<g:link class="btn icon-pencil" action="edit" resource="${labInstance}"></g:link>
									<label class="btn" for="deleteButton"><i class="icon-trash"></i></label>
									<input id="deleteButton" type="submit"  style="display: none;" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</g:form>
							</div>
						</div>
					</sec:ifAnyGranted>
                	<div class="row">
                		<div class="span5">
                			<div class="box">
                				<div class="box-content">
                					<img src="https://placehold.it/420x420">
                					<div class="box-content box-list collapse in" >
	                					<ul>
	                						<li>Editar informacion personal</li>
	                						<li>Opcion 2</li>
	                						<li>opcion 3</li>
	                						
											<sec:ifAnyGranted roles="ROLE_ADMIN">
												<g:if test="${labInstance?.accountLocked}">
												<li>
													<span style="color:red;" id="accountLocked-label" class="property-label"><g:message code="lab.accountLocked.label" default="Account Locked"/></span>
												</li>
												</g:if>
												<g:else>
													<li>
													<span style="color:green;" id="accountLocked-label" class="property-label"><g:message code="lab.accountUnlocked.label" default="Account Unlocked"/></span>
												</li>
												</g:else>
											</sec:ifAnyGranted>
	                					</ul>
	                				</div>	
                				</div>
                			</div>
                		</div>
                		<div class="span1"></div>
                		<div class="span10">
	                		<div class="box">
	                			<div class="box-content">
	                				<g:if test="${labInstance?.username}">
		                				<legend class="header">
			                				<g:message code="lab.username.label" default="Username" />
			                			</legend>
			                			<div class="box-content">
			                				<g:fieldValue bean="${labInstance}" field="username"/>
			                			</div>
			                		</g:if>
			                		<g:if test="${labInstance?.country}">
		                				<legend class="header">
			                				<g:message code="lab.country.label" default="Country" />
			                			</legend>
			                			<div class="box-content">
			                				<g:fieldValue bean="${labInstance}" field="country"/>
			                			</div>
			                		</g:if>
			                		<g:if test="${labInstance?.carrer}">
		                				<legend class="header">
			                				<g:message code="lab.carrer.label" default="Career" />
			                			</legend>
			                			<div class="box-content">
			                				<g:fieldValue bean="${labInstance}" field="carrer"/>
			                			</div>
			                		</g:if>
			                		<g:if test="${labInstance?.area}">
		                				<legend class="header">
			                				<g:message code="lab.area.label" default="Area" />
			                			</legend>
			                			<div class="box-content">
			                				<g:fieldValue bean="${labInstance}" field="area"/>
			                			</div>
			                		</g:if>
			                		<g:if test="${labInstance?.position}">
		                				<legend class="header">
			                				<g:message code="lab.position.label" default="Position" />
			                			</legend>
			                			<div class="box-content">
			                				<g:fieldValue bean="${labInstance}" field="position"/>
			                			</div>
			                		</g:if>		                			
			                		<g:if test="${labInstance?.university}">
		                				<legend class="header">
			                				<g:message code="lab.university.label" default="University" />
			                			</legend>
			                			<div class="box-content">
			                				<g:fieldValue bean="${labInstance}" field="university"/>
			                			</div>
			                		</g:if>		
		                		</div>
	                		</div>
                		</div>
                	</div>
                	<div class="row">
                		<div class="span8">
                			<div class="box">
                				<div class="box-header">
                				<i class="icon-book"></i> 
          						<h5>Tesis</h5> 
                				</div>
                				<div class="box-content box-table">
                					<table class="table table-hover tablesorter">
                						<thead>
                							<tr>
	                							<th>Name</th>
	                							<th>Tutor</th>
	                							<th>Cotutor</th>
	                						</tr>
                						</thead>
                						<tbody>
                							<g:each in="${labInstance.tesis}" var="tesisInstance">
                								<tr>
                									<td><g:link controller="tesis" action="download" id="${tesisInstance.id}">${tesisInstance.name}</g:link></td>
                									<td><g:fieldValue bean="${tesisInstance}" field="tutor"/></td>
                									<td><g:fieldValue bean="${tesisInstance}" field="cotutor"/></td>
                								</tr>
                							</g:each>
                						</tbody>
                					</table>
                				</div>
                			</div>
                		</div>
                		<div class="span8">
                			<div class="box">
                				<div class="box-header">
                				<i class="icon-book"></i> 
          						<h5>libros</h5> 
                				</div>
                				<div class="box-content box-table">
                					<table class="table table-hover tablesorter">
                						<thead>
                							<tr>
	                							<th>Titulo</th>
												<th>Autor</th>
												<th>Año</th>
												<th>ISBN</th>
												<th>Editorial</th>
	                						</tr>
                						</thead>
                						<tbody>
                							<g:each in="${labInstance.books}" var="bookInstance">
                								<tr>
                									<td><g:link controller="book" action="download" id="${bookInstance.id}">${bookInstance.title}</g:link></td>
                									<td><g:fieldValue bean="${bookInstance}" field="author"/></td>
                									<td><g:fieldValue bean="${bookInstance}" field="year"/></td>
                									<td><g:fieldValue bean="${bookInstance}" field="isbn"/></td>
                									<td><g:fieldValue bean="${bookInstance}" field="editorial"/></td>
                								</tr>
                							</g:each>
                						</tbody>
                					</table>
                				</div>
                			</div>
                		</div>
                	</div>
                	<div class="row">
                		<div class="span8">
                			<div class="box">
                				<div class="box-header">
                				<i class="icon-book"></i> 
          						<h5>Conferencias</h5> 
                				</div>
                				<div class="box-content box-table">
                					<table class="table table-hover tablesorter">
                						<thead>
                							<tr>
	                							<th>Nombre</th>
												<th>Inicio</th>
												<th>Termino</th>
												<th>Pais</th>
												<th>Cuidad</th>
	                						</tr>
                						</thead>
                						<tbody>
                							<g:each in="${labInstance.conferences}" var="conferenceInstance">
                								<tr>
                									<td><g:link controller="conference" action="download" id="${conferenceInstance.id}">${conferenceInstance.name}</g:link></td>
                									<td><g:fieldValue bean="${conferenceInstance}" field="datastart"/></td>
                									<td><g:fieldValue bean="${conferenceInstance}" field="datefinish"/></td>
                									<td><g:fieldValue bean="${conferenceInstance}" field="country"/></td>
                									<td><g:fieldValue bean="${conferenceInstance}" field="city"/></td>
                								</tr>
                							</g:each>
                						</tbody>
                					</table>
                				</div>
                			</div>
                		</div>
                		<div class="span8">
                			<div class="box">
                				<div class="box-header">
                				<i class="icon-book"></i> 
          						<h5>Revistas</h5> 
                				</div>
                				<div class="box-content box-table">
                					<table class="table table-hover tablesorter">
                						<thead>
                							<tr>
	                							<th>Titulo</th>
												<th>Autor</th>
												<th>Año</th>
												<th>Revista</th>
												<th>Area de investigacion</th>
	                						</tr>
                						</thead>
                						<tbody>
                							<g:each in="${labInstance.magazines}" var="magazineInstance">
                								<tr>
                									<td><g:link controller="magazine" action="download" id="${magazineInstance.id}">${magazineInstance.title}</g:link></td>
                									<td><g:fieldValue bean="${magazineInstance}" field="author"/></td>
                									<td><g:fieldValue bean="${magazineInstance}" field="year"/></td>
                									<td><g:fieldValue bean="${magazineInstance}" field="magazine"/></td>
                									<td><g:fieldValue bean="${magazineInstance}" field="area"/></td>
                								</tr>
                							</g:each>
                						</tbody>
                					</table>
                				</div>
                			</div>
                		</div>
                	<div class="row">
                		<div class="span16">
                			<div class="box">
                				<div class="box-header">
                				<i class="icon-book"></i> 
          						<h5>Proyectos</h5> 
                				</div>
                				<div class="box-content box-table">
                					<table class="table table-hover tablesorter">
                						<thead>
                							<tr>
	                							<th>Nombre</th>
												<th>Cargo</th>
												<th>Año inicio</th>
												<th>Año de termino</th>
												<th>Otros</th>
	                						</tr>
                						</thead>
                						<tbody>
                							<g:each in="${labInstance.projects}" var="projectInstance">
                								<tr>
                									<td><g:link controller="project" action="download" id="${projectInstance.id}">${projectInstance.name}</g:link></td>
                									<td><g:fieldValue bean="${projectInstance}" field="position"/></td>
                									<td><g:fieldValue bean="${projectInstance}" field="yearstart"/></td>
                									<td><g:fieldValue bean="${projectInstance}" field="yearfinish"/></td>
                									<td><g:fieldValue bean="${projectInstance}" field="other"/></td>
                								</tr>
                							</g:each>
                						</tbody>
                					</table>
                				</div>
                			</div>
                		</div>
                	</div>
				</div>	
		</div>



				<li><g:link controller='lab' action='index'><g:message code="default.user.label"/>s</g:link></li>
				<li><g:link controller='lab' action="show" id="${sec.loggedInUserInfo(field: 'id')}"><g:message code="default.profile.label"/>
				</g:link></li>
				<li><g:link controller='tesis' action='list'><g:message code="default.create.tesis.label"/></g:link></li>
				<li><g:link controller='magazine' action='list'><g:message code="default.create.magazine.label"/></g:link></li>
				<li><g:link controller='book' action='list'><g:message code="default.create.book.label"/></g:link></li>
				<li><g:link controller='conference' action='list'><g:message code="default.create.conference.label"/></g:link></li>
				<li><g:link controller='project' action='list'><g:message code="default.create.project.label"/></g:link></li>
			
		</div>
	</body>
</html>

