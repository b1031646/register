
<%@ page import="uk.ac.shu.webarch.register.Module" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'module.label', default: 'Module')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-module" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-module" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="moduleId" title="${message(code: 'module.moduleId.label', default: 'Module Id')}" />
					
						<g:sortableColumn property="moduleName" title="${message(code: 'module.moduleName.label', default: 'Module Name')}" />
					
						<g:sortableColumn property="moduleDescription" title="${message(code: 'module.moduleDescription.label', default: 'Module Description')}" />
					
						<th><g:message code="module.course.label" default="Course" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${moduleInstanceList}" status="i" var="moduleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${moduleInstance.id}">${fieldValue(bean: moduleInstance, field: "moduleId")}</g:link></td>
					
						<td>${fieldValue(bean: moduleInstance, field: "moduleName")}</td>
					
						<td>${fieldValue(bean: moduleInstance, field: "moduleDescription")}</td>
					
						<td>${fieldValue(bean: moduleInstance, field: "course")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${moduleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
