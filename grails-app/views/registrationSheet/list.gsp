
<%@ page import="uk.ac.shu.webarch.register.RegistrationSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registrationSheet.label', default: 'RegistrationSheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registrationSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registrationSheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="registrationSheet.session.label" default="Session" /></th>
					
						<g:sortableColumn property="sessionDate" title="${message(code: 'registrationSheet.sessionDate.label', default: 'Session Date')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'registrationSheet.notes.label', default: 'Notes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationSheetInstanceList}" status="i" var="registrationSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationSheetInstance.id}">${fieldValue(bean: registrationSheetInstance, field: "session")}</g:link></td>
					
						<td><g:formatDate format="dd-MM-yyyy" date="${registrationSheetInstance.sessionDate}"  /></td>
					
						<td>${fieldValue(bean: registrationSheetInstance, field: "notes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationSheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
