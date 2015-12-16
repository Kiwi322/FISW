x
<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lab.label', default: 'Usuarios')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-container">
			<div class="container">
				<div class="span16">
                	<div class="row">
                	<legend><g:message code="default.list.label" args="[entityName]" /></legend><br>
                		<div class="box pattern pattern-sandstone">
         
                            <div class="box-content box-table">
                                <table id="sample-table" class="table table-hover table-bordered tablesorter">
                                    <thead>
                                        <tr>
                                            <th property="username">${message(code: 'lab.username.label', default: 'Username')}</th>
                                            <th property="nombres">${message(code: 'lab.nombres.label', default: 'Nombres')}</th>
                                            <th property="apellidos">${message(code: 'lab.apellidos.label', default: 'Apellidos')}</th>
                                            <sec:ifAnyGranted roles="ROLE_ADMIN">
                                            	<th property="accountLocked">${message(code: 'lab.accountLocked.label', default: 'Account Locked')}</th>
                                            </sec:ifAnyGranted>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    	<g:each in="${labInstanceList}" status="i" var="labInstance">
											<tr >
											
												<td><g:link action="show" id="${labInstance.id}">${fieldValue(bean: labInstance, field: "username")}</g:link></td>
											
												<td>${fieldValue(bean: labInstance, field: "nombres")}</td>

												<td>${fieldValue(bean: labInstance, field: "apellidos")}</td>
												<sec:ifAnyGranted roles="ROLE_ADMIN">
													<td><g:formatBoolean boolean="${labInstance.accountLocked}" /></td>
												</sec:ifAnyGranted>
											</tr>
										</g:each>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                	</div>
                	<sec:ifAnyGranted roles="ROLE_ADMIN">
                	<div class="row" style="margin-bottom: 0.5em">
                		<div class="span5">
                            <g:link controller='lab' action='create' rel="tooltip" data-placement="right" title="Create New Person" class="btn">
                                <i class="icon-plus icon-large"></i>
                            </g:link>   
                    	</div>
                	</div>
                	</sec:ifAnyGranted>
				</div>
			</div>
			
		</div>
		<script type="text/javascript">
		        $(function() {     
		            $(function(){
		                $("[rel=tooltip]").tooltip();
		            });
		        });
    	</script>
</body>