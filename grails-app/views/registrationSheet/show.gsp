
<%@ page import="uk.ac.shu.webarch.register.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'RegistrationSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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


		<div id="show-registrationSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registrationSheet">
			
				<g:if test="${registrationSheetInstance?.session}">
				<li class="fieldcontain">
					<span id="session-label" class="property-label"><g:message code="registrationSheet.session.label" default="Session" /></span>
					
						<span class="property-value" aria-labelledby="session-label"><g:link controller="session" action="show" id="${registrationSheetInstance?.session?.id}">${registrationSheetInstance?.session?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.sheetName}">
				<li class="fieldcontain">
					<span id="sheetName-label" class="property-label"><g:message code="registrationSheet.sheetName.label" default="Sheet Name" /></span>
					
						<span class="property-value" aria-labelledby="sheetName-label"><g:fieldValue bean="${registrationSheetInstance}" field="sheetName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="registrationSheet.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${registrationSheetInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registrationSheetInstance?.registerEntries}">
				<li class="fieldcontain">
					<span id="registerEntries-label" class="property-label"><g:message code="registrationSheet.registerEntries.label" default="Register Entries" /></span>
					
						<g:each in="${registrationSheetInstance.registerEntries}" var="r">
						<span class="property-value" aria-labelledby="registerEntries-label"><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${registrationSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${registrationSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
