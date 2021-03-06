
<%@ page import="uk.ac.shu.webarch.register.RegisterEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registerEntry.label', default: 'RegisterEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registerEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">




<!-- Custom links for admin area -->

<g:img dir="images"  file="img/SHUadminheader.png"/>
<li><g:link controller="course" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Course</g:link></li>
<li><g:link controller="enrollment" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Enrollment</g:link></li>
<li><g:link controller="instructor" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Instructor</g:link></li>
<li><g:link controller="module" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Module</g:link></li>
<li><g:link controller="registerEntry" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Register Entry</g:link></li>
<li><g:link controller="registrationSheet" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Registration Sheet</g:link></li>
<li><g:link controller="session" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Session</g:link></li>
<li><g:link controller="student" action="list" class="transition"><g:img dir="images"  file="skin/information.png"/> Student</g:link></li>
<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

</ul>
</div>
<hr>


<div class="nav_new" role="navigation">
<ul>

<!-- Individual page control links -->

	
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

			</ul>
		</div>


<!-- Scaffolded Code -->


		<div id="show-registerEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registerEntry">
			
				<g:if test="${registerEntryInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="registerEntry.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${registerEntryInstance?.student?.id}">${registerEntryInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.registrationsheet}">
				<li class="fieldcontain">
					<span id="registrationsheet-label" class="property-label"><g:message code="registerEntry.registrationsheet.label" default="Registrationsheet" /></span>
					
						<span class="property-value" aria-labelledby="registrationsheet-label"><g:link controller="registrationSheet" action="show" id="${registerEntryInstance?.registrationsheet?.id}">${registerEntryInstance?.registrationsheet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registerEntryInstance?.timestamp}">
				<li class="fieldcontain">
					<span id="timestamp-label" class="property-label"><g:message code="registerEntry.timestamp.label" default="Timestamp" /></span>
					
						<span class="property-value" aria-labelledby="timestamp-label"><g:fieldValue bean="${registerEntryInstance}" field="timestamp"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registerEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${registerEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
