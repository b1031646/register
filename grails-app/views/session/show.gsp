
<%@ page import="uk.ac.shu.webarch.register.Session" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'session.label', default: 'Session')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-session" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-session" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list session">
			
				<g:if test="${sessionInstance?.sessionId}">
				<li class="fieldcontain">
					<span id="sessionId-label" class="property-label"><g:message code="session.sessionId.label" default="Session Id" /></span>
					
						<span class="property-value" aria-labelledby="sessionId-label"><g:fieldValue bean="${sessionInstance}" field="sessionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.sessionName}">
				<li class="fieldcontain">
					<span id="sessionName-label" class="property-label"><g:message code="session.sessionName.label" default="Session Name" /></span>
					
						<span class="property-value" aria-labelledby="sessionName-label"><g:fieldValue bean="${sessionInstance}" field="sessionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.instructor}">
				<li class="fieldcontain">
					<span id="instructor-label" class="property-label"><g:message code="session.instructor.label" default="Instructor" /></span>
					
						<span class="property-value" aria-labelledby="instructor-label"><g:link controller="instructor" action="show" id="${sessionInstance?.instructor?.id}">${sessionInstance?.instructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.module}">
				<li class="fieldcontain">
					<span id="module-label" class="property-label"><g:message code="session.module.label" default="Module" /></span>
					
						<span class="property-value" aria-labelledby="module-label"><g:link controller="module" action="show" id="${sessionInstance?.module?.id}">${sessionInstance?.module?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.enrollments}">
				<li class="fieldcontain">
					<span id="enrollments-label" class="property-label"><g:message code="session.enrollments.label" default="Enrollments" /></span>
					
						<g:each in="${sessionInstance.enrollments}" var="e">
						<span class="property-value" aria-labelledby="enrollments-label">
<g:link controller="enrollment" action="show" id="${e.id}">${e?.student}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.registrationSheets}">
				<li class="fieldcontain">
					<span id="registrationSheets-label" class="property-label"><g:message code="session.registrationSheets.label" default="Registration Sheets" /></span>
					
						<g:each in="${sessionInstance.registrationSheets}" var="r">
						<span class="property-value" aria-labelledby="registrationSheets-label"><g:link controller="registrationSheet" action="show" id="${r.id}">${r?.sheetName}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sessionInstance?.id}" />
					<g:link class="edit" action="edit" id="${sessionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
