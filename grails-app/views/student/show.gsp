
<%@ page import="uk.ac.shu.webarch.register.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.studentName}">
				<li class="fieldcontain">
					<span id="studentName-label" class="property-label"><g:message code="student.studentName.label" default="Student Name" /></span>
					
						<span class="property-value" aria-labelledby="studentName-label"><g:fieldValue bean="${studentInstance}" field="studentName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="student.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${studentInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.studentNotes}">
				<li class="fieldcontain">
					<span id="studentNotes-label" class="property-label"><g:message code="student.studentNotes.label" default="Student Notes" /></span>
					
						<span class="property-value" aria-labelledby="studentNotes-label"><g:fieldValue bean="${studentInstance}" field="studentNotes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.enrollments}">
				<li class="fieldcontain">
					<span id="enrollments-label" class="property-label"><g:message code="student.enrollments.label" default="Enrollments" /></span>
					
						<g:each in="${studentInstance.enrollments}" var="e">
						<span class="property-value" aria-labelledby="enrollments-label"><g:link controller="enrollment" action="show" id="${e.id}">${e?.session}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.registerEntries}">
				<li class="fieldcontain">
					<span id="registerEntries-label" class="property-label"><g:message code="student.registerEntries.label" default="Register Entries" /></span>
					
						<g:each in="${studentInstance.registerEntries}" var="r">
						<span class="property-value" aria-labelledby="registerEntries-label"><g:link controller="registerEntry" action="show" id="${r.id}">${r?.registrationsheet}&nbsp;&nbsp;-&nbsp;&nbsp;<g:formatDate format="${r?.timestamp}" type="date" style="LONG" /></g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
