<%@ page import="uk.ac.shu.webarch.register.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorName', 'error')} required">
	<label for="instructorName">
		<g:message code="instructor.instructorName.label" default="Instructor Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instructorName" maxlength="50" required="" value="${instructorInstance?.instructorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorId', 'error')} required">
	<label for="instructorId">
		<g:message code="instructor.instructorId.label" default="Instructor Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instructorId" maxlength="20" required="" value="${instructorInstance?.instructorId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'sessions', 'error')} ">
	<label for="sessions">
		<g:message code="instructor.sessions.label" default="Sessions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorInstance?.sessions?}" var="s">
    <li><g:link controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="session" action="create" params="['instructor.id': instructorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'session.label', default: 'Session')])}</g:link>
</li>
</ul>

</div>

