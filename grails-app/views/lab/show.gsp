<%@ page import="usuario.Lab" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'lab.label', default: 'Lab')}" />
        <title><g:fieldValue bean="${labInstance}" field="nombres"/> <g:fieldValue bean="${labInstance}" field="apellidos"/></title>
    </head>
    <body>
        <div class="page container">
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
                                        
                                        <g:img dir="images/profile/${labInstance.username.toString()}" file="pic.jpg" default="https://placehold.it/420x420"/>

                                    <div class="box-content box-list collapse in" >
                                        <ul>
                                            <g:if test="${labInstance.username.toString() == sec.loggedInUserInfo(field:'username').toString()}">
                                                <g:form url="[resource:labInstance, action:'delete']" method="DELETE">
                                   
                                    
                            
                                                     <li style="text-align: center;"><g:link class="btn" action="edit" resource="${labInstance}">Editar informacion personal</g:link>  <label class="btn btn-danger" for="deleteButton"><i class="icon-trash"></i></label></li>
                                                     <input id="deleteButton" type="submit"  style="display: none;" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                                 </g:form>
                                            </g:if>
                                            <li style="text-align: center;"><g:link class="btn" controller="multimedia" action="index"> Agregar Foto </g:link></li>
                                            <li style="text-align: center;"><g:link class="btn"  controller="multimedia" action="video"> Agregar Video </g:link></li>
                                            
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
                                            <g:message code="lab.email.label" default="Email" />
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
                                            <g:fieldValue bean="${labInstance.area}" field="name"/>
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
                        <div class="span16">
                            <div class="box flex">
                                <div class="box-content align-self">
                                    <div class="btn-group-box">
                                        <button onclick="window.location='<g:createLink class="create" controller="tesis" action="index"/>'" class="btn auto-width" ><i class="icon-plus icon-large"></i><br/>Tesis</button>
                                        <button onclick="window.location='<g:createLink class="create" controller="project" action="index"/>'" class="btn auto-width"><i class="icon-plus icon-large"></i><br/>Proyecto</button>
                                        <button onclick="window.location='<g:createLink class="create" controller="book" action="index"/>'" class="btn auto-width"><i class="icon-plus icon-large"></i><br/>Libro</button>
                                        <button onclick="window.location='<g:createLink class="create" controller="magazine" action="index"/>'" class="btn auto-width"><i class="icon-plus icon-large"></i><br/>Revista</button>
                                        <button onclick="window.location='<g:createLink class="create" controller="conference" action="index"/>'" class="btn auto-width"><i class="icon-plus icon-large"></i><br/>Conferencia</button>
                                        <button onclick="window.location='<g:createLink class="create" controller="tesisprogress" action="index"/>'" class="btn auto-width"><i class="icon-plus icon-large"></i><br/>Avance</button>
                                    </div>
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
                                                <tr data-target="#myModalTesis${tesisInstance.id}" data-toggle="modal" class="download-pointer">
                                                    <td><g:fieldValue bean="${tesisInstance}" field="name"/></td>
                                                    <td><g:fieldValue bean="${tesisInstance}" field="tutor"/></td>
                                                    <td><g:fieldValue bean="${tesisInstance}" field="cotutor"/></td>
                                                </tr>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModalTesis${tesisinstance.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                                  <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">${tesisInstance.name}</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="box">
                                                            <div class="box-content">
                                                                <g:if test="${tesisInstance?.owner}">
                                                                    <legend class="header">
                                                                        <g:message code="tesis.pregrade.label" default="Owner" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${tesisInstance}" field="owner"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${tesisInstance?.tutor}">
                                                                    <legend class="header">
                                                                        <g:message code="tesis.tutor.label" default="Tutor" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${tesisInstance}" field="tutor"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${tesisInstance?.cotutor}">
                                                                    <legend class="header">
                                                                        <g:message code="tesis.cotutor.label" default="Cotutor" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${tesisInstance}" field="cotutor"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${tesisInstance?.country}">
                                                                    <legend class="header">
                                                                        <g:message code="tesis.country.label" default="Country" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${tesisInstance}" field="country"/>
                                                                    </div>
                                                                </g:if>
                                                            </div>
                                                        </div>
                                                        <g:link controller="tesis" action="download" id="${tesisInstance.id}" class="pull-right download-modal"><i class="icon-download"></i> Descargar documento</g:link>
                                                      </div>
                                                     <!--<div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>-->
                                                    </div>
                                                  </div>
                                                </div>
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
                                                <tr data-target="#myModalBook${bookInstance.id}" data-toggle="modal" class="download-pointer">
                                                    <td>${bookInstance.title}</td>
                                                    <td><g:fieldValue bean="${bookInstance}" field="author"/></td>
                                                    <td><g:fieldValue bean="${bookInstance}" field="year"/></td>
                                                    <td><g:fieldValue bean="${bookInstance}" field="isbn"/></td>
                                                    <td><g:fieldValue bean="${bookInstance}" field="editorial"/></td>
                                                </tr>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModalBook${bookInstance.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">${bookInstance.title}</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="box">
                                                            <div class="box-content">
                                                                <g:if test="${bookInstance?.author}">
                                                                    <legend class="header">
                                                                        <g:message code="book.author.label" default="Author" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${bookInstance}" field="author"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${bookInstance?.editorial}">
                                                                    <legend class="header">
                                                                        <g:message code="book.editorial.label" default="Editorial" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${bookInstance}" field="editorial"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${bookInstance?.isbn}">
                                                                    <legend class="header">
                                                                        <g:message code="book.isbn.label" default="Isbn" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${bookInstance}" field="isbn"/>
                                                                    </div>
                                                                </g:if>
                                                                 <g:if test="${bookInstance?.uploadDate}">
                                                                    <legend class="header">
                                                                        <g:message code="book.date.label" default="Date" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${bookInstance}" field="uploadDate"/>
                                                                    </div>
                                                                </g:if>
                                                            </div>
                                                        </div>
                                                        <g:link controller="book" action="download" id="${bookInstance.id}" class="pull-right download-modal"> Descargar documento <i class="icon-download"></i></g:link>
                                                      </div>
                                                     <!--<div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>-->
                                                    </div>
                                                  </div>
                                                </div>
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
                                        <tbody>
                                            <g:each in="${labInstance.conferences}" var="conferenceInstance">
                                                <tr data-target="#myModalConference${conferenceInstance.id}" data-toggle="modal" class="download-pointer">
                                                    <td>${conferenceInstance.name}</td>
                                                    <td><g:fieldValue bean="${conferenceInstance}" field="datestart"/></td>
                                                    <td><g:fieldValue bean="${conferenceInstance}" field="datefinish"/></td>
                                                    <td><g:fieldValue bean="${conferenceInstance}" field="country"/></td>
                                                    <td><g:fieldValue bean="${conferenceInstance}" field="city"/></td>
                                                </tr>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModalConference${conferenceInstance.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">${conferenceInstance.name}</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="box">
                                                            <div class="box-content">
                                                                <g:if test="${conferenceInstance?.city}">
                                                                    <legend class="header">
                                                                        <g:message code="conference.city.label" default="City" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${conferenceInstance}" field="city"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${conferenceInstance?.country}">
                                                                    <legend class="header">
                                                                        <g:message code="conference.country.label" default="Country" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${conferenceInstance}" field="country"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${conferenceInstance?.datestart}">
                                                                    <legend class="header">
                                                                        <g:message code="conference.datestart.label" default="Datestart" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${conferenceInstance}" field="datestart"/>
                                                                    </div>
                                                                </g:if>
                                                                 <g:if test="${conferenceInstance?.datefinish}">
                                                                    <legend class="header">
                                                                        <g:message code="conference.datefinish.label" default="Datefinish" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${conferenceInstance}" field="datefinish"/>
                                                                    </div>
                                                                </g:if>
                                                            </div>
                                                        </div>
                                                        <g:link controller="conference" action="download" id="${conferenceInstance.id}" class="pull-right download-modal"> Descargar documento <i class="icon-download"></i></g:link>
                                                      </div>
                                                     <!--<div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>-->
                                                    </div>
                                                  </div>
                                                </div>
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
                                                <tr data-target="#myModalMagazine${magazineInstance.id}" data-toggle="modal" class="download-pointer">
                                                    <td>${magazineInstance.title}</td>
                                                    <td><g:fieldValue bean="${magazineInstance}" field="author"/></td>
                                                    <td><g:fieldValue bean="${magazineInstance}" field="year"/></td>
                                                    <td><g:fieldValue bean="${magazineInstance}" field="magazine"/></td>
                                                    <td><g:fieldValue bean="${magazineInstance.area}" field="name"/></td>
                                                </tr>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModalMagazine${magazineInstance.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">${magazineInstance.title}</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="box">
                                                            <div class="box-content">
                                                                <g:if test="${magazineInstance?.magazine}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.magazine.label" default="Magazine" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${magazineInstance}" field="magazine"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${magazineInstance?.author}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.author.label" default="Author" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${magazineInstance}" field="author"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${magazineInstance?.area}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.area.label" default="area" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${magazineInstance.area}" field="name"/>
                                                                    </div>
                                                                </g:if>
                                                            </div>
                                                        </div>
                                                        <g:link controller="magazine" action="download" id="${magazineInstance.id}" class="pull-right download-modal"> Descargar documento <i class="icon-download"></i></g:link>
                                                      </div>
                                                     <!--<div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>-->
                                                    </div>
                                                  </div>
                                                </div>
                                            </g:each>
                                        </tbody>
                                    </table>
                                </div>
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
                                                <tr data-target="#myModalProject${projectInstance.id}" data-toggle="modal" class="download-pointer">
                                                    <td>${projectInstance.name}</td>
                                                    <td><g:fieldValue bean="${projectInstance}" field="position"/></td>
                                                    <td><g:fieldValue bean="${projectInstance}" field="yearstart"/></td>
                                                    <td><g:fieldValue bean="${projectInstance}" field="yearfinish"/></td>
                                                    <td><g:fieldValue bean="${projectInstance}" field="other"/></td>
                                                </tr>
                                                <!-- Modal -->
                                                <div class="modal fade" id="myModalProject${projectInstance.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog modal-lg" role="document">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">${projectInstance.name}</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="box">
                                                            <div class="box-content">
                                                                <g:if test="${projectInstance?.other}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.other.label" default="Other" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${projectInstance}" field="other"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${projectInstance?.position}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.position.label" default="Position" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${projectInstance}" field="position"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${projectInstance?.yearfinish}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.yearfinish.label" default="Yearfinish" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${projectInstance}" field="yearfinish"/>
                                                                    </div>
                                                                </g:if>
                                                                <g:if test="${projectInstance?.yearstart}">
                                                                    <legend class="header">
                                                                        <g:message code="magazine.yearstart.label" default="Yearstart" />
                                                                    </legend>
                                                                    <div class="box-content">
                                                                        <g:fieldValue bean="${projectInstance}" field="yearstart"/>
                                                                    </div>
                                                                </g:if>
                                                            </div>
                                                        </div>
                                                        <g:link controller="project" action="download" id="${projectInstance.id}" class="pull-right download-modal"> Descargar documento <i class="icon-download"></i></g:link>
                                                      </div>
                                                     <!--<div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                      </div>-->
                                                    </div>
                                                  </div>
                                                </div>
                                            </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <g:if test="${labInstance.id == applicationContext.springSecurityService.getCurrentUserId() }">

                        <div class="row">
                        <div class="span16">
                        <div class="box">
                                <div class="box-header">
                                <i class="icon-book"></i> 
                                <h5>Avances de tesis</h5> 
                                </div>
                                <div class="box-content box-table">
                                    <table class="table table-hover tablesorter">
                                        <thead>
                                            <tr>
                                                <th>Fecha de Subida</th>
                                                <th>Nombre del archivo</th>
                                                <th>Link</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                <g:each in="${labInstance.progress}" status="i" var="tesisprogressInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link controller="tesisprogress" action="show" id="${tesisprogressInstance.id}"> <g:formatDate date="${tesisprogressInstance.uploadDate}" /></g:link></td>
                        <td><g:link controller="tesisprogress" action="download" id="${tesisprogressInstance.id}">${tesisprogressInstance.filename}</g:link></td>
                        <td><g:fieldValue bean="${tesisprogressInstance}" field="link"/></td>

                                    
                    </tr>
                </g:each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </g:if>
                </div>  
            </div>
        </div>
    </body>
</html>


                    
                </div>  
        </div>
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                  </div>
                  <div class="modal-body">
                    ...
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>          
        </div>
    </body>
</html>

