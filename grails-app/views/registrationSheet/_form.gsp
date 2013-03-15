<%@ page import="uk.ac.shu.webarch.register.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'session', 'error')} required">
	<label for="session">
		<g:message code="registrationSheet.session.label" default="Session" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="session" name="session.id" from="${uk.ac.shu.webarch.register.Session.list()}" optionKey="id" required="" value="${registrationSheetInstance?.session?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'sessionDate', 'error')} required">
	<label for="sessionDate">
		<g:message code="registrationSheet.sessionDate.label" default="Session Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="sessionDate" precision="day"  value="${registrationSheetInstance?.sessionDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="registrationSheet.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${registrationSheetInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'registerEntries', 'error')} ">
	<label for="registerEntries">
		<g:message code="registrationSheet.registerEntries.label" default="Register Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.registerEntries?}" var="r">
    <li><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

