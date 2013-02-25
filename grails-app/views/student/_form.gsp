<%@ page import="uk.ac.shu.webarch.register.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentName', 'error')} required">
	<label for="studentName">
		<g:message code="student.studentName.label" default="Student Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentName" maxlength="80" required="" value="${studentInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentId', 'error')} required">
	<label for="studentId">
		<g:message code="student.studentId.label" default="Student Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentId" maxlength="20" required="" value="${studentInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNotes', 'error')} ">
	<label for="studentNotes">
		<g:message code="student.studentNotes.label" default="Student Notes" />
		
	</label>
	<g:textField name="studentNotes" value="${studentInstance?.studentNotes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="student.enrollments.label" default="Enrollments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.enrollments?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'registerEntries', 'error')} ">
	<label for="registerEntries">
		<g:message code="student.registerEntries.label" default="Register Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.registerEntries?}" var="r">
    <li><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

