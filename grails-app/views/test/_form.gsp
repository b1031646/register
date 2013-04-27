<%@ page import="uk.ac.shu.webarch.register.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'test', 'error')} ">
	<label for="test">
		<g:message code="test.test.label" default="Test" />
		
	</label>
	<g:textField name="test" value="${testInstance?.test}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'test1', 'error')} ">
	<label for="test1">
		<g:message code="test.test1.label" default="Test1" />
		
	</label>
	<g:textField name="test1" value="${testInstance?.test1}"/>
</div>

