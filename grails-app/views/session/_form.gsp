<%@ page import="uk.ac.shu.webarch.register.Session" %>



<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'sessionId', 'error')} required">
	<label for="sessionId">
		<g:message code="session.sessionId.label" default="Session Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sessionId" maxlength="20" required="" value="${sessionInstance?.sessionId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'sessionName', 'error')} required">
	<label for="sessionName">
		<g:message code="session.sessionName.label" default="Session Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sessionName" maxlength="80" required="" value="${sessionInstance?.sessionName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'instructor', 'error')} required">
	<label for="instructor">
		<g:message code="session.instructor.label" default="Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instructor" name="instructor.id" from="${uk.ac.shu.webarch.register.Instructor.list()}" optionKey="id" required="" value="${sessionInstance?.instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'module', 'error')} required">
	<label for="module">
		<g:message code="session.module.label" default="Module" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="module" name="module.id" from="${uk.ac.shu.webarch.register.Module.list()}" optionKey="id" required="" value="${sessionInstance?.module?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="session.enrollments.label" default="Enrollments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sessionInstance?.enrollments?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['session.id': sessionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: sessionInstance, field: 'registrationSheets', 'error')} ">
	<label for="registrationSheets">
		<g:message code="session.registrationSheets.label" default="Registration Sheets" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sessionInstance?.registrationSheets?}" var="r">
    <li><g:link controller="registrationSheet" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registrationSheet" action="create" params="['session.id': sessionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registrationSheet.label', default: 'RegistrationSheet')])}</g:link>
</li>
</ul>

</div>

