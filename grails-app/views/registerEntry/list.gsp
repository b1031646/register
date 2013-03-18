
<%@ page import="uk.ac.shu.webarch.register.RegisterEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registerEntry.label', default: 'RegisterEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registerEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registerEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="registerEntry.student.label" default="Student" /></th>
					
						<th><g:message code="registerEntry.registrationsheet.label" default="Registrationsheet" /></th>
					
						<g:sortableColumn property="timestamp" title="${message(code: 'registerEntry.timestamp.label', default: 'Timestamp')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registerEntryInstanceList}" status="i" var="registerEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registerEntryInstance.id}">${fieldValue(bean: registerEntryInstance, field: "student")}</g:link></td>
					
						<td>${fieldValue(bean: registerEntryInstance, field: "registrationsheet")}</td>
					
						<td><g:formatDate date="${registerEntryInstance.timestamp}" type="datetime" style="MEDIUM" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registerEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
