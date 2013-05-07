
<%@ page import="uk.ac.shu.webarch.register.Enrollment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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


				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

			</ul>
		</div>


<!-- Scaffolded Code -->

		<div id="list-enrollment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="enrollment.session.label" default="Session" /></th>
					
						<th><g:message code="enrollment.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${enrollmentInstanceList}" status="i" var="enrollmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${enrollmentInstance.id}">${fieldValue(bean: enrollmentInstance, field: "session")}</g:link></td>
					
						<td>${fieldValue(bean: enrollmentInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${enrollmentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
