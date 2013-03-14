<%@ page import="uk.ac.shu.webarch.register.Module" %>



<div class="fieldcontain ${hasErrors(bean: moduleInstance, field: 'moduleId', 'error')} required">
	<label for="moduleId">
		<g:message code="module.moduleId.label" default="Module Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="moduleId" maxlength="20" required="" value="${moduleInstance?.moduleId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moduleInstance, field: 'moduleName', 'error')} required">
	<label for="moduleName">
		<g:message code="module.moduleName.label" default="Module Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="moduleName" maxlength="80" required="" value="${moduleInstance?.moduleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moduleInstance, field: 'moduleDescription', 'error')} ">
	<label for="moduleDescription">
		<g:message code="module.moduleDescription.label" default="Module Description" />
		
	</label>
	<g:textField name="moduleDescription" value="${moduleInstance?.moduleDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moduleInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="module.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.register.Course.list()}" optionKey="id" required="" value="${moduleInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moduleInstance, field: 'sessions', 'error')} ">
	<label for="sessions">
		<g:message code="module.sessions.label" default="Sessions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${moduleInstance?.sessions?}" var="s">
    <li><g:link controller="session" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="session" action="create" params="['module.id': moduleInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'session.label', default: 'Session')])}</g:link>
</li>
</ul>

</div>

