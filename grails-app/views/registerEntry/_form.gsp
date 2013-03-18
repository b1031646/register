<%@ page import="uk.ac.shu.webarch.register.RegisterEntry" %>



<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="registerEntry.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.register.Student.list()}" optionKey="id" required="" value="${registerEntryInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'registrationsheet', 'error')} required">
	<label for="registrationsheet">
		<g:message code="registerEntry.registrationsheet.label" default="Registrationsheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registrationsheet" name="registrationsheet.id" from="${uk.ac.shu.webarch.register.RegistrationSheet.list()}" optionKey="id" required="" value="${registerEntryInstance?.registrationsheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'timestamp', 'error')} required">
	<label for="timestamp">
		<g:message code="registerEntry.timestamp.label" default="Timestamp" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

