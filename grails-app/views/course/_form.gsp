<%@ page import="uk.ac.shu.webarch.register.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseId', 'error')} required">
	<label for="courseId">
		<g:message code="course.courseId.label" default="Course Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="courseId" maxlength="20" required="" value="${courseInstance?.courseId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} required">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="courseName" maxlength="80" required="" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseDescription', 'error')} ">
	<label for="courseDescription">
		<g:message code="course.courseDescription.label" default="Course Description" />
		
	</label>
	<g:textField name="courseDescription" value="${courseInstance?.courseDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'modules', 'error')} ">
	<label for="modules">
		<g:message code="course.modules.label" default="Modules" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.modules?}" var="m">
    <li><g:link controller="module" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="module" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'module.label', default: 'Module')])}</g:link>
</li>
</ul>

</div>

