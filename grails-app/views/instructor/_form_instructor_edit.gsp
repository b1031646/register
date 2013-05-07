<%@ page import="uk.ac.shu.webarch.register.Instructor" %>


<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorId', 'error')} required">
	<label for="instructorId">
		<g:message code="instructor.instructorId.label" default="Instructor Id" />
		<span class="required-indicator"></span>
	</label>
	<g:textField disabled="yes"  name="instructorId" maxlength="20" required="" value="${instructorInstance?.instructorId}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorName', 'error')} required">
	<label for="instructorName">
		<g:message code="instructor.instructorName.label" default="Instructor Name" />
		<span class="required-indicator"></span>
	</label>
	<g:textField disabled="yes"  name="instructorName" maxlength="50" required="" value="${instructorInstance?.instructorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="instructor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="15" pattern="${instructorInstance.constraints.password.matches}" required="" value="${instructorInstance?.password}"/>
</div>




</div>

