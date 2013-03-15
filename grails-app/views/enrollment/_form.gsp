<%@ page import="uk.ac.shu.webarch.register.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'session', 'error')} required">
	<label for="session">
		<g:message code="enrollment.session.label" default="Session" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="session" name="session.id" from="${uk.ac.shu.webarch.register.Session.list()}" optionKey="id" required="" value="${enrollmentInstance?.session?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="enrollment.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.register.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.student?.id}" class="many-to-one"/>
</div>

