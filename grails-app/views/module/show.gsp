
<%@ page import="uk.ac.shu.webarch.register.Module" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'module.label', default: 'Module')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-module" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-module" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list module">
			
				<g:if test="${moduleInstance?.moduleId}">
				<li class="fieldcontain">
					<span id="moduleId-label" class="property-label"><g:message code="module.moduleId.label" default="Module Id" /></span>
					
						<span class="property-value" aria-labelledby="moduleId-label"><g:fieldValue bean="${moduleInstance}" field="moduleId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleInstance?.moduleName}">
				<li class="fieldcontain">
					<span id="moduleName-label" class="property-label"><g:message code="module.moduleName.label" default="Module Name" /></span>
					
						<span class="property-value" aria-labelledby="moduleName-label"><g:fieldValue bean="${moduleInstance}" field="moduleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleInstance?.moduleDescription}">
				<li class="fieldcontain">
					<span id="moduleDescription-label" class="property-label"><g:message code="module.moduleDescription.label" default="Module Description" /></span>
					
						<span class="property-value" aria-labelledby="moduleDescription-label"><g:fieldValue bean="${moduleInstance}" field="moduleDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="module.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${moduleInstance?.course?.id}">${moduleInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${moduleInstance?.sessions}">
				<li class="fieldcontain">
					<span id="sessions-label" class="property-label"><g:message code="module.sessions.label" default="Sessions" /></span>
					
						<g:each in="${moduleInstance.sessions}" var="s">
						<span class="property-value" aria-labelledby="sessions-label"><g:link controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${moduleInstance?.id}" />
					<g:link class="edit" action="edit" id="${moduleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
